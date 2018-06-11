<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<base href="<%=basePath%>">
	<title>用户登录</title>

    <!-- Main-CSS -->
    <link rel="stylesheet" href="../../statics/css/main.css" type="text/css" media="all">


<style>


body{font:13px/26px "微软雅黑";background: #F5F7FA}
*:focus {outline: none;}
.contact{width:680px;background:#F1F1F1;margin: 100px auto;padding:10px;}


/*List Styles*/
.contact_form ul {width:680px;list-style-type:none;list-style-position:outside;padding:0px;}
.contact_form li{padding:12px; border-bottom:1px solid #DFDFDF;position:relative;} 

/*Form Header*/
.contact_form h2 {margin:0;display: inline;font-size:18px;font-weight:bold;}

/*Form Elements*/
.contact_form label {width:150px;margin-top: 3px;display:inline-block;float:left;padding:3px;font-size:14px;}
.contact_form input {height:20px; width:220px; padding:5px 8px;}
.contact_form button {margin-left:156px;}

/* form element visual styles */
.contact_form input{ 
	border:1px solid #aaa;
	box-shadow: 0px 0px 3px #ccc, 0 10px 15px #eee inset;
	border-radius:2px;
	padding-right:30px;
	transition: padding .25s;
}
.contact_form input:focus{
	background: #fff url(/statics/images/red_asterisk.png) no-repeat;
	border:1px solid #555; 
	box-shadow: 0 0 3px #aaa; 
	padding-right:70px;
}

/* === HTML5 validation styles === */	
.contact_form input:required{background: #fff url(/statics/images/red_asterisk.png) no-repeat 98% center;}
.contact_form input:required:valid{background: #fff url(/statics/images/valid.png) no-repeat 98% center;box-shadow: 0 0 5px #5cd053;border-color: #28921f;}
.contact_form input:focus:invalid{background: #fff url(/statics/images/invalid.png) no-repeat 98% center;box-shadow: 0 0 5px #d45252;border-color: #b03535;}

/* === Form hints === */
.form_hint {
	font-size: 12px;
	background: #d45252;
	border-radius: 3px 3px 3px 3px;
	color: white;
	margin-left:8px;
	padding: 1px 6px;
	z-index: 999; 
	position: absolute; 
	display: none;
}
.form_hint::before {
	content: "\25C0";
	color:#d45252;
	position: absolute;
	top:1px;
	left:-6px;
}
.contact_form input:focus + .form_hint {display: inline;}
.contact_form input:required:valid + .form_hint {background: #28921f;}
.contact_form input:required:valid + .form_hint::before {color:#28921f;}
	
/*Button Style*/
.submit {
	background-color: #68b12f;
	border: 1px solid #509111;
	border-radius: 3px;
	/*box-shadow 属性向框添加一个或多个阴影*/
	box-shadow: inset 0 1px 0 0 #9fd574; 
	color: white;
	font-weight: bold;
	padding: 6px 20px;
	text-align: center;
	text-shadow: 0 -1px 0 #396715;
}
.submit:hover {
	opacity:0.85;
	cursor: pointer; 
}
.submit:active {
	border: 1px solid #20911e;
	box-shadow: 0 0 10px 5px #356b0b inset;
}
</style>

</head>

<body>
<div class="contact">
<form class="contact_form" action="/login" method="post" name="contact_form">
    <ul>
        <li>
            <h2>用户登录</h2>
        </li>
       	<li>
            <label for="email">邮箱</label>
            <input type="email" name="email" id="email" placeholder="1234567890@gmail.com" required pattern="^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$"/>
            <span class="form_hint">正确格式为：1234567890@gmail.com</span>
        </li>
        <li>
            <label for="password">密码:</label>
            <input type="password" name="password" id="password" placeholder="*******" required />
            <span class="form_hint">正确格式为：6~18个字符</span>
        </li>
        <li>
        	<button class="submit" type="submit">登录</button>
        </li>
    </ul>
</form>
</div>
</body>
</html>