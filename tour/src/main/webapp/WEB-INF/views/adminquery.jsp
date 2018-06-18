<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/6/6
  Time: 17:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.innovation.entity.User"%>
<jsp:useBean id="user" class="com.innovation.entity.User" scope="application"/>
<jsp:useBean id="manager" class="com.innovation.entity.Manager" scope="application"/>
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
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="../../statics/images/cat.jpg" class="img-circle" alt="Avatar"> <span>${manager.name}</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
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
                    <li><a href="${pageContext.request.contextPath}/adminpass" class=""><i class="lnr lnr-pencil"></i> <span>修改密码</span></a></li>
                    <li><a href="${pageContext.request.contextPath}/admin/query" class=""><i class="lnr lnr-dice"></i> <span>查询功能</span></a></li>
                    <li><a href="${pageContext.request.contextPath}/admin/admindeblocking?page=1" class=""><i class="lnr lnr-pointer-right"></i> <span>解冻用户</span></a></li>
                    <li><a href="${pageContext.request.contextPath}/admin/logout" class=""><i class="lnr lnr-exit"></i> <span>注销</span></a></li>
                </ul>
            </nav>
        </div>
    </div>
    <!-- END LEFT SIDEBAR -->
    <!-- MAIN -->
    <!-- MAIN CONTENT -->

    <div class="main">
        <div class="input-group col-md-4" style="margin-left:30px;margin-top: 20px;">
            <input type="text" class="form-control" placeholder="输入游记标题关键字" />
            <span class="input-group-btn">
               <button class="btn btn-info btn-search">查找</button>
        </span>
        </div>
        <div class="input-group col-md-4" style="margin-left:30px;margin-top: 20px;">
            <input type="text" class="form-control" placeholder="输入用户名" />
            <span class="input-group-btn">
               <button class="btn btn-info btn-search">查找</button>
        </span>
        </div>
        <div class="input-group col-md-4" style="margin-left:30px;margin-top: 20px;">
            <input type="text" class="form-control" placeholder="输入景点关键字" />
            <span class="input-group-btn">
               <button class="btn btn-info btn-search">查找</button>
        </span>
        </div>

    </div>
</div>


</div>
<!-- END WRAPPER -->
<!-- Javascript -->
<script src="../../statics/js/jquery.min.js"></script>
<script src="../../statics/js/bootstrap.min.js"></script>
</body>

</html>

