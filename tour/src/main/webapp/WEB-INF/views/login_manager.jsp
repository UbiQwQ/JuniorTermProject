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
    <!-- Bootstrap-CSS -->
    <link rel="stylesheet" href="../../statics/css/bootstrap3/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="../../statics/css/bootstrap3/bootstrap-theme.min.css" type="text/css">
    <!-- Bootstrap-JS -->
    <script type="text/javascript" src="../../statics/js/bootstrap3/bootstrap.js"></script>
    <script type="text/javascript" src="../../statics/js/jquery-3.3.1.js"></script>
</head>
<body style="background: url(/statics/images/adminBg.jpg)">

<div class="container-fluid" style="width: 400px;margin: 200px auto;">
    <div class="row-fluid">
        <div class="span4">
        </div>
        <div class="span4">
            <form class="form-horizontal" action="/loginManager" method="post">
                <div class="control-group">
                    <label class="control-label" for="inputEmail">用户名</label>
                    <div class="controls">
                        <input id="inputEmail" type="text" name="managerName" />
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="inputPassword">密码</label>
                    <div class="controls">
                        <input id="inputPassword" type="password" name="password" />
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <button type="submit" class="btn">登陆</button>
                    </div>
                </div>
            </form>
        </div>
        <div class="span4">
        </div>
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
