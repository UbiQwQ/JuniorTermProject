<%--
  Created by IntelliJ IDEA.
  User: Innovation
  Date: 2018/5/21
  Time: 15:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>注册新用户</title>
    <!-- Main-CSS -->
    <link rel="stylesheet" href="../../statics/css/main.css" type="text/css" media="all">
    <!-- Register-CSS -->
    <link rel="stylesheet" href="../../statics/css/register.css" type="text/css" media="all">
    <%--<style>--%>
        <%--body {--%>
            <%--padding-top: 40px;--%>
            <%--padding-bottom: 40px;--%>
            <%--background-color: #eee;--%>
        <%--}--%>
    <%--</style>--%>
</head>
<body>
<div class="contact">
    <form class="contact_form" method="post" action="/signin">
        <ul>
            <li>
                <h2>用户注册</h2>
            </li>
            <li>
                <label for="user">用户名:</label>
                <input type="text"  name="userName" id="user" placeholder="Innovation" required pattern="^[a-zA-Z][0-9a-zA-Z_]{3,11}"/>
                <span class="form_hint">正确格式为：4~12个字符，可使用字母、数字、下划线，需以字母开头</span>
            </li>

            <li>
                <label for="email">电子邮件:</label>
                <input type="email" name="email" id="email" placeholder="1234567890@gmail.com" required pattern="^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$"/>
                <span class="form_hint">正确格式为：sayingforever@163.com</span>
            </li>
            <li>
                <label for="pasword">密码:</label>
                <input type="password" name="password" id="pasword" placeholder="*******" required pattern="^[0-9a-zA-Z!@#$^]{6,18}$"/>
                <span class="form_hint">正确格式为：6~18个字符</span>
            </li>
            <li>
                <label for="rePassWord">确认密码:</label>
                <input type="password"  name="rePassWord" id="rePassWord" placeholder="*******" required pattern="^[0-9a-zA-Z!@#$^]{6,18}$"/>
                <span class="form_hint">正确格式为：6~18个字符</span>
                ${repassinfo}
            </li>
            <li>
                <label for="captcha">验证码:</label>
                <input type="text" name="captcha" id="captcha" required/>
                <img id="captchaPicture" src="captcha"/>
                ${info}
            </li>
            <li >
                <input class="submit" type="submit" value="注册">
                <a class="help-inline" href="/loginpage">我已经有账号，现在登录</a>
            </li>
        </ul>
    </form>
</div>

    <script src="statics/js/jquery-3.3.1.js" type="text/javascript"></script>

    <script type="text/javascript">
        $("#captchaPicture").click(
            function(){
                $(this).attr("src","<%=request.getContextPath()%>/captcha");
                $("#captcha").val("");
            }
        );
    </script>
</body>
</html>
