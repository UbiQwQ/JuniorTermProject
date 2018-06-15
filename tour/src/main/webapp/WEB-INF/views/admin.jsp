<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/29
  Time: 16:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.innovation.entity.User"%>
<jsp:useBean id="user" class="com.innovation.entity.User" scope="application"/>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>
    <title>Administrator</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <!-- VENDOR CSS -->
    <link rel="stylesheet" href="../../statics/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../statics/css/font-awesome.min.css">
    <link rel="stylesheet" href="../../statics/css/adminstyle.css">
    <!-- MAIN CSS -->
    <link rel="stylesheet" href="../../statics/css/adminmain.css">
    <!-- GOOGLE FONTS -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
    <script src="../../statics/js/main.js"></script>
    <style>
        .main{width: auto;height: auto;}
    </style>

</head>

<body>
<!-- WRAPPER -->
<div id="wrapper">
    <!-- NAVBAR -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="brand">
            <a href="#"><img src="../../statics/images/logo-dark.png" alt="Logo" class="img-responsive logo"></a>
        </div>
        <div class="container-fluid">
            <form class="navbar-form navbar-left">
                <div class="input-group">
                    <input type="text" value="" class="form-control" placeholder="Search ......">
                    <span class="input-group-btn"><button type="button" class="btn btn-primary">Go</button></span>
                </div>
            </form>
            <div id="navbar-menu">
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="../../statics/images/cat.jpg" class="img-circle" alt="Avatar"> <span>Inverseli</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
                        <ul class="dropdown-menu">
                            <li><a href="#"><i class="lnr lnr-user"></i> <span>我的信息</span></a></li>
                            <li><a href="${pageContext.request.contextPath}/admin/email"><i class="lnr lnr-envelope"></i> <span>我的邮件</span></a></li>
                            <li><a href="#"><i class="lnr lnr-cog"></i> <span>设置</span></a></li>
                            <li><a href="${pageContext.request.contextPath}/admin/logout"><i class="lnr lnr-exit"></i> <span>注销</span></a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- END NAVBAR -->
    <!-- LEFT SIDEBAR -->
    <div id="sidebar-nav" class="sidebar">
        <div class="sidebar-scroll">
            <nav>
                <ul class="nav">
                    <li>
                        <a href="#subPages" data-toggle="collapse" class="collapsed"><i class="lnr lnr-user"></i> <span>管理功能</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
                        <div id="subPages" class="collapse ">
                            <ul class="nav">
                                <li><a href="${pageContext.request.contextPath}/admin/usermanager?page=1"><span>管理用户</span></a></li>
                                <li><a  href="${pageContext.request.contextPath}/admin/travelsmanager?page=1"><span>管理游记</span></a></li>
                            </ul>
                        </div>
                    </li>
                    <li><a href="javascript:turnpage('adminpass')" class=""><i class="lnr lnr-pencil"></i> <span>修改密码</span></a></li>
                    <li><a href="${pageContext.request.contextPath}/admin/block" class=""><i class="lnr lnr-cog"></i> <span>test管理网站信息</span></a></li>
                    <li><a href="#" class=""><i class="lnr lnr-alarm"></i> <span>审核团游申请</span></a></li>
                    <li><a href="javascript:turnpage('admin/query')" class=""><i class="lnr lnr-dice"></i> <span>查询功能</span></a></li>
                    <li><a href="${pageContext.request.contextPath}/admin/admindeblocking?page=1" class=""><i class="lnr lnr-pointer-right"></i> <span>解冻用户</span></a></li>
                    <li><a href="${pageContext.request.contextPath}/admin/logout" class=""><i class="lnr lnr-exit"></i> <span>注销</span></a></li>
                </ul>
            </nav>
        </div>
    </div>
    <!-- END LEFT SIDEBAR -->
    <!-- MAIN -->
        <!-- MAIN CONTENT -->

    <div class="main" id="aaaa">
        <div class="main-text" style="margin-top: 60px;">
            <h2 style="text-align: center;">This page for Administrators</h2><br/>
            <div class="jumbotron">
                <p style="font-size: 20px;margin-left: 180px;">
                    用户管理：对用户增、删、改、查<br/>
                    修改密码：修改管理员密码<br/>
                    管理游记：对举报的游记进行删除<br/>
                    管理网站信息：管理景点、酒店、美食店信息，对这些信息进行增删改查<br />
                    解冻用户：对发布不良信息的而被举报封冻的用户账号进行解冻<br />
                    审核团游申请：审核组团游申请，管理员批准后，其他旅游爱好者才能参与该组团游活动<br />
                    查询功能：检索美食店、景点、酒店信息，检索游记，检索用户,查询被举报的信息，查看组团游申请<br />
                    注销：功能区注销 or 点击管理员头像注销
                </p>
            </div>

        </div>



    </div>


</div>
<!-- END WRAPPER -->
<!-- Javascript -->
<script src="../../statics/js/jquery.min.js"></script>
<script src="../../statics/js/bootstrap.min.js"></script>
<script>
    function turnpage(url) {
        var url = url;
        document.getElementById("aaaa").innerHTML = "";
        $.ajax({
            type:'post',
            url:url,
            dataType:'html',
            success: function(msg) {
                //这里是ajax提交成功后，程序返回的数据处理函数。msg是返回的数据，数据类型在dataType参数里定义！
                document.getElementById("aaaa").innerHTML = msg;
            },
            error: function() {
                alert('对不起失败了');
            }
        })
    }

</script>

</body>

</html>

