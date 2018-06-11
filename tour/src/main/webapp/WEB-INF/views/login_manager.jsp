<%--
  Created by IntelliJ IDEA.
  User: Innovation
  Date: 2018/5/19
  Time: 20:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
</head>
<body>
    <div id="login" align="center">
        <div class="nav">
            <form>
                <div id="login_tip">
                    管理员登录
                </div>
                <div><input type="text" id="user_code" name="user_code" class="username" placeholder="请输入账号"></div>
                <div><input type="password" id="user_account" name="user_account" class="pwd" placeholder="请输入密码"></div>
                <div id="btn_area">
                    <input type="text" id="VerificationCode" name="VerificationCode"  placeholder="请输入验证码" class="verify">
                    <a href="javascript:void(0);" onclick="VerificationCode()">
                        <img id="randCodeImage" alt="验证码"  src="/captcha" width="100" height="40"/>
                    </a>
                </div>
                <div style="float:left;">
                    <input type="button" name="button" id="sub_btn" onclick="login()" value="登录"/>
                </div>
                <div id="verification_Code"><b></b></div>
            </form>
            <!--提示信息-->
            <div id= "error"></div>
        </div>
    </div>

</body>

<script type="text/javascript">
    function login(){
        //这是使用ajax的方式提交
        $.ajax({
            type:'post',
            url:'Uase/query.action',
            //data:$('#loginInputForm').serialize(),
            data:{
                'user_code' : $("#user_code").val(),
                'user_account' :$("#user_account").val(),
                'VerificationCode':$("#VerificationCode").val(),
            },
            dataType:'json',
            success:function(obj){
                var rad = Math.floor(Math.random() * Math.pow(10, 8));
                if(obj && obj.success=='true'){
                    window.location.href='Uase/login.action';
                }else{
                    document.getElementById("verification_Code"). innerHTML =obj.msg;
                    //uuuy是随便写的一个参数名称，后端不会做处理，作用是避免浏览器读取缓存的链接
                    $("#randCodeImage").attr("src", "VerificationCode/generate.action?uuuy="+rad);
                    $("#VerificationCode").val("").focus(); // 清空并获得焦点
                }
            }
        });
    }

    /**
     *验证码刷新
     */
    function VerificationCode(){
        var rad = Math.floor(Math.random() * Math.pow(10, 8));
        //uuuy是随便写的一个参数名称，后端不会做处理，作用是避免浏览器读取缓存的链接
        $("#randCodeImage").attr("src", "VerificationCode/generate.action?uuuy="+rad);
    }

</script>

</html>
