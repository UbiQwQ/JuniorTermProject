<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/29
  Time: 16:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.innovation.entity.User"%>
<%--<jsp:useBean id="user" class="com.innovation.entity.User" scope="application"/>--%>
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
                            <li><a href="#"><i class="lnr lnr-envelope"></i> <span>我的邮件</span></a></li>
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
                    <li><a href="#" class=""><i class="lnr lnr-cog"></i> <span>管理网站信息</span></a></li>
                    <li><a href="#" class=""><i class="lnr lnr-alarm"></i> <span>审核团游申请</span></a></li>
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
        <div class="table-responsive" style="margin-left: 10px;margin-top: 15px;">
            <div style="height: 460px;">
                <table class="table table-bordered table-striped table-hover table-condensed">
                    <tr>
                        <th>用户id</th>
                        <th>用户名</th>
                        <th>邮箱</th>
                        <th>手机号</th>
                        <th>年龄</th>
                        <th>注册时间</th>
                        <th>状态码</th>
                        <th>可执行操作</th>
                    </tr>
                    <!-- items要进行迭代的集合，var迭代参数的名称 -->
                    <c:forEach items="${users}" var="user">
                        <tr>
                            <td><c:out value="${user.id}" /></td>
                            <td><c:out value="${user.userName}" /></td>
                            <td><c:out value="${user.email}" /></td>
                            <td><c:out value="${user.phone}" /></td>
                            <td><c:out value="${user.age}" /></td>
                            <td><c:out value="${user.regTime}" /></td>
                            <td><c:out value="${user.status}" /></td>
                            <td>
                                <a class="btn btn-primary" onClick="delcfm('${pageContext.request.contextPath}/deleteByUserId?id=${user.id}&page=${page}')">删除</a>
                                <a class="btn btn-default" onClick="delcfmblock('${pageContext.request.contextPath}/blockByUserId?id=${user.id}&page=${page}')">禁用</a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
            <div class="pager" style="width:100%;position: fixed;">
                <center>
                    <span class="text-muted" style="position:absolute;left: 310px;">总共有&nbsp${allPage}&nbsp页&nbsp,&nbsp当前是第&nbsp${page}&nbsp页</span>
                    <a href="${pageContext.request.contextPath}/admin/usermanager?page=1"><span style="position:absolute;left: 490px;">首页</span></a>
                    <a href="${pageContext.request.contextPath}/admin/usermanager?page=${page-1}"
                       onclick="return frontPageCheck()"><span style="position:absolute;left: 530px;">上一页</span>
                    </a>
                    <a href="${pageContext.request.contextPath}/admin/usermanager?page=${page+1}"
                       onclick="return backPageCheck()"><span style="position:absolute;left: 580px;">下一页</span>
                    </a>
                    <a href="${pageContext.request.contextPath}/admin/usermanager?page=${allPage}"><span style="position:absolute;left: 630px;">末页</span>
                </center>
            </div>
            <!-- bootstrap模态框组件  -->
            <!--  aria-hidden="true"属性用于将模态框隐藏 -->
            <div class="modal fade" id="delcfmModel">
                <div class="modal-dialog">
                    <div class="modal-content message_align">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                            <h4 class="modal-title text-danger">提示信息</h4>
                        </div>
                        <div class="modal-body text-danger">
                            <p>您确认要删除此用户吗？</p>
                        </div>
                        <div class="modal-footer">
                            <input type="hidden" id="url"/>
                            <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                            <a  onclick="urlSubmit()" class="btn btn-success" data-dismiss="modal">确定</a>
                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
            </div><!-- /.modal -->

            <!-- bootstrap模态框组件  -->
            <!--  aria-hidden="true"属性用于将模态框隐藏 -->
            <div class="modal fade" id="delcfmModel1">
                <div class="modal-dialog">
                    <div class="modal-content message_align">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                            <h4 class="modal-title text-danger">提示信息</h4>
                        </div>
                        <div class="modal-body text-danger">
                            <p>您确认要禁用此用户吗？</p>
                        </div>
                        <div class="modal-footer">
                            <input type="hidden" id="url1"/>
                            <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                            <a  onclick="urlSubmitblock()" class="btn btn-success" data-dismiss="modal">确定</a>
                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
            </div><!-- /.modal -->
        </div>
    </div>
</div>
<!-- END WRAPPER -->
<!-- Javascript -->
<script src="../../statics/js/jquery.min.js"></script>
<script src="../../statics/js/bootstrap.min.js"></script>
<!--bootstrap模态框触发器(按钮点击触发) -->
<script>
    function delcfm(url) {
        <!-- 给会话中的隐藏属性URL赋值 -->
        $('#url').val(url);
        <!-- 调用id为delcfmModel的模态框-->
        $('#delcfmModel').modal();
    }
    function urlSubmit(){
        <!-- 获取会话中的隐藏属性URL -->
        var url=$.trim($("#url").val());
        <!--定位到新的页面 -->
        window.location.href=url;
    }

    function delcfmblock(url) {
        <!-- 给会话中的隐藏属性URL赋值 -->
        $('#url1').val(url);
        <!-- 调用id为delcfmModel的模态框-->
        $('#delcfmModel1').modal();
    }
    function urlSubmitblock(){
        <!-- 获取会话中的隐藏属性URL -->
        var url=$.trim($("#url1").val());
        <!--定位到新的页面 -->
        window.location.href=url;
    }
    <!-- 上一页链接限制条件(页数小于1禁止行为) -->
    function frontPageCheck()
    {
        if(${page}-1>0)
        {
            return true;
        }
        return false;
    }
    <!-- 下一页链接限制条件(超过总页数禁止行为) -->
    function backPageCheck()
    {
        if(${page}<${allPage})
        {
            return true;
        }
        return false;
    }


</script>
</body>

</html>

