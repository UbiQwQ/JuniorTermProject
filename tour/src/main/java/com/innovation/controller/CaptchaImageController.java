package com.innovation.controller;

import com.octo.captcha.service.image.ImageCaptchaService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/**
 * @Auther: Innovation
 * @Date: 2018/5/24 23:06
 * @Vison: 1.0
 * @Description:
 */
@Controller
public class CaptchaImageController {

    private Logger logger = LoggerFactory.getLogger(getClass());

    @Autowired
    private ImageCaptchaService imageCaptchaService;

//    @RequestMapping("/captcha")
//    public void handleRequest(HttpServletRequest request, HttpServletResponse response) {
//        try {
//            ByteArrayOutputStream jpegOutputStream = new ByteArrayOutputStream();
//            String captchaId = request.getSession().getId();
//            BufferedImage challenge = imageCaptchaService.getImageChallengeForID(captchaId, request.getLocale());
//
//            response.setHeader("Cache-Control", "no-store");
//            response.setHeader("Pragma", "no-cache");
//            response.setDateHeader("Expires", 0L);
//            response.setContentType("image/jpeg");
//
//            ImageIO.write(challenge, "jpeg", jpegOutputStream);
//            byte[] captchaChallengeAsJpeg = jpegOutputStream.toByteArray();
//
//            ServletOutputStream respOs = response.getOutputStream();
//            respOs.write(captchaChallengeAsJpeg);
//            respOs.flush();
//            respOs.close();
//        } catch (IOException e) {
//            logger.error("generate captcha image error: {}", e.getMessage());
//        }
//
//        UserController.setIsCaptcha(Boolean.FALSE);
//    }




}
