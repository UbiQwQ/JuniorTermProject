package com.innovation.util;

import com.innovation.entity.Manager;
import com.innovation.entity.User;
import org.springframework.ui.Model;
import org.springframework.web.servlet.HandlerInterceptor;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;

/**
 * @ClassName: SessionInterceptor
 * @Description:
 * @Author: li
 * @Date: 2018/6/14 21:43
 * @Version: 1.0
 */
public class SessionInterceptor implements HandlerInterceptor {

    private Logger logger = Logger.getLogger(SessionInterceptor.class.getName());

    @Override
    public boolean preHandle(HttpServletRequest hsr, HttpServletResponse hsr1, Object o) throws Exception {
        Manager manager=(Manager) hsr.getSession().getAttribute("manager");
        if(manager==null){
            logger.log(Level.INFO, "user not login");
            //请求WEB-INF的受限资源
            hsr.getRequestDispatcher("/WEB-INF/views/login_manager.jsp").forward(hsr,hsr1);
            return false;
        }
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
