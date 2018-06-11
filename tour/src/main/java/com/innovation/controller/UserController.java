package com.innovation.controller;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.innovation.dao.impl.UserDao;
import com.innovation.entity.User;
import com.innovation.service.impl.UserLoginService;
import com.innovation.service.impl.UserRegService;
import com.innovation.service.impl.UserService;
import org.apache.commons.codec.digest.DigestUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.octo.captcha.service.image.ImageCaptchaService;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Date;

/**
 * @Auther: Innovation
 * @Date: 2018/5/20 10:32
 * @Vison: 1.0
 * @Description:
 */
@Controller
public class UserController {

    @Autowired
    private UserLoginService userLoginService;
    @Autowired
    private UserRegService userRegService;
    @Autowired
    private UserService userSettingService;

    @Autowired
    private UserDao userDao;

    @Autowired
    private ImageCaptchaService imageCaptchaService;

    private Logger logger = LoggerFactory.getLogger(getClass());

    private static Boolean isCaptcha;
    public static Boolean getIsCaptcha() {
        return isCaptcha;
    }

    public static void setIsCaptcha(Boolean isCaptcha) {
        UserController.isCaptcha = isCaptcha;
    }

    /**
     * 功能描述: 用户注册
     *
     * @param: model
     * @return: 
     * @auther: Innovation
     * @date: 2018/5/23 17:42
     */
    @RequestMapping("/signin")
    public ModelAndView signin(String userName, String password, String email, String captcha,
                               HttpSession httpSession,HttpServletRequest request) throws Exception {
        ModelAndView modelAndView = new ModelAndView();

        isCaptcha = imageCaptchaService.validateResponseForID(request.getSession().getId(), captcha);
        // 如果验证码不正确
        if (!isCaptcha) {
            modelAndView.addObject("info",
                    "<span class='help-inline' style='color: #ff0000'>验证码不正确！</span>");
            modelAndView.setViewName("reg");
            return modelAndView;
        }

        // 创建新的用户
        User user = new User();
        user.setUserName(userName);
        user.setEmail(email);
        user.setPassword(DigestUtils.md5Hex(password));
        user.setRegTime(new Date());
        user.setStatus((short) 1);

        // UserReg注册用户
        userRegService.saveUser(user);

        // 设置传到前台的信息和视图名称
        modelAndView.setViewName("redirect:index.jsp");

        // 设置session
        httpSession.setAttribute("status",user.getStatus());
        httpSession.setAttribute("userName",userName);
        httpSession.setAttribute("email",email);
        httpSession.setAttribute("phone",user.getPhone());
        httpSession.setAttribute("regTime",user.getRegTime());

        return modelAndView;
    }


    @RequestMapping("/login")
    public ModelAndView login (String email, String password, HttpSession httpSession) throws Exception {

        ModelAndView modelAndView = new ModelAndView();
        // 登录用户，并将登录后的状态码返回，如果是0用户不存在，如果是1那么密码错误，如果是2那么密码正确
        int result = userLoginService.login(email, password);

        // 查找这个用户
        User user = userDao.findUserByEmail(email);

        if (result == 2) {
            // 如果是2，那么登录成功，返回index
            modelAndView.setViewName("redirect:index.jsp");

            // 设置session
            httpSession.setAttribute("user",user);
            httpSession.setAttribute("userName",user.getUserName());
            httpSession.setAttribute("status", user.getStatus());
            httpSession.setAttribute("userName", user.getUserName());
            httpSession.setAttribute("email", email);
            httpSession.setAttribute("phone", user.getPhone());
            httpSession.setAttribute("regTime", user.getRegTime());

        } else if (result == 1) {
            // 如果是1，那么密码错误，返回login
            modelAndView.addObject("info", "<span class='help-inline' style='color: #ff0000'>密码错误！</span>");
            modelAndView.setViewName("login");
        } else {
            // 否则用户名不存在，返回login
            modelAndView.addObject("info", "<span class='help-inline' style='color: #ff0000'>用户不存在！</span>");
            modelAndView.addObject("info", 0);
            modelAndView.setViewName("login");
        }

        return modelAndView;
    }


    @RequestMapping("/loginOff")
    public @ResponseBody int loginOff(HttpServletRequest httpServletRequest) {
        try {
            HttpSession httpSession = httpServletRequest.getSession();
            httpSession.invalidate();
            return 1;
        } catch (Exception e) {
            return 0;
        }
    }



    /**
     * 功能描述: 生成验证码
     *
     * @param: request  response
     * @return:
     * @auther: Innovation
     * @date: 2018/5/29 13:46
     */
    @RequestMapping("/captcha")
    public void handleRequest(HttpServletRequest request, HttpServletResponse response) {
        try {
            ByteArrayOutputStream jpegOutputStream = new ByteArrayOutputStream();
            String captchaId = request.getSession().getId();
            BufferedImage challenge = imageCaptchaService.getImageChallengeForID(captchaId, request.getLocale());

            response.setHeader("Cache-Control", "no-store");
            response.setHeader("Pragma", "no-cache");
            response.setDateHeader("Expires", 0L);
            response.setContentType("image/jpeg");

            ImageIO.write(challenge, "jpeg", jpegOutputStream);
            byte[] captchaChallengeAsJpeg = jpegOutputStream.toByteArray();

            ServletOutputStream respOs = response.getOutputStream();
            respOs.write(captchaChallengeAsJpeg);
            respOs.flush();
            respOs.close();
        } catch (IOException e) {
            logger.error("generate captcha image error: {}", e.getMessage());
        }

        UserController.setIsCaptcha(Boolean.FALSE);
    }


    @RequestMapping("/checkCaptcha")
    public @ResponseBody int checkCaptcha(String captcha, HttpServletRequest request) throws Exception {
        Boolean isResponseCorrect = imageCaptchaService.validateResponseForID(request.getSession().getId(), captcha);
        if (isResponseCorrect) {
            isCaptcha = Boolean.TRUE;
            return 1;
        } else {
            isCaptcha = Boolean.FALSE;
        }
        return 0;
    }


}
