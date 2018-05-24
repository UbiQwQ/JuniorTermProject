package com.innovation.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @Auther: Innovation
 * @Date: 2018/5/24 00:11
 * @Vison: 1.0
 * @Description:
 */
public interface ICaptchaService {
    /**
     * 功能描述:生成验证码
     *
     * @param:
     * @return: 
     * @auther: Innovation
     * @date: 2018/5/24 0:12
     */
    public void genernateCaptchaImage(HttpServletRequest request, HttpServletResponse response)
            throws IOException;
}
