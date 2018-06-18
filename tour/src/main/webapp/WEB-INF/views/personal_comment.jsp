<%--
  Created by IntelliJ IDEA.
  User: Innovation
  Date: 2018/6/5
  Time: 9:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<html>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>个人中心</title>
    <link rel="stylesheet" href="https://www.leiphone.com/resWeb/home/css/userCenter.css?20180530">
</head>
<body>

    <%--<p>${sessionUser.avatar}</p>--%>
    <%--<img src=${sessionUser.avatar}>--%>
    <%--<img src="pic/one.jpg">--%>
    <%--<img src="pic/test.jpg"/>--%>
    <%--<p>${sessionUser.userName}</p>--%>

    <div class="lpHome-msg">
        <div class="inner clr">
            <div class="l-msg ">
                <div class="avater">
                    <img src=${sessionUser.avatar}>
                    <em class='noVip'></em>
                    <!-- noVip -->
                </div>
                <div class="txt">
                    <h2>
                        <span>${sessionUser.userName}</span>
                    </h2>
                    <p></p>
                    <a class="edit-btn" href="https://home.leiphone.com/info/index">
                        <em></em>修改资料
                    </a>
                    <a class="edit-btn" href="https://home.leiphone.com/info/index">
                        <em></em>发布游记
                    </a>
                </div>
            </div>

        </div>
    </div>
    <!-- s = 主体内容 -->
    <div class="lpHome-main">
        <div class="menu">
            <ul>
                <li ><a href="/personal"><em class="ico1"></em>我的游记</a></li>
                <li class="cur"><a href="#"><em class="ico2"></em>我的评论</a></li>
                <li ><a href="/personalCollectPage"><em class="ico3"></em>我的收藏</a></li>
                <li ><a href="/personalOrderPage"><em class="ico5"></em>订单中心</a></li>
                <li ><a href="/personalSettingPage"><em class="ico6"></em>账户设置</a></li>
            </ul>
        </div>
        <div class="mainCnt">
            <div class="title clr">
                我的评论
            </div>
            <div class="myCmt-main">
                <ul>
                    <c:forEach items="${comments}" var="comment">
                    <li>
                        <div class="hdTit">
                            <a href="/lookTravel?travelId=${comment.travelsId}" target="_blank">《${comment.travelsTitle}》</a>
                        </div>

                        <div class="des">
                                ${comment.content}
                        </div>
                        <div class="dataMsg clr">
                            <span class='time'>${comment.postTime}</span>
                            <a href="/regretComment?commentId=${comment.commentId}" class="del">删除</a>
                        </div>
                    </li>
                    </c:forEach>
                </ul>
                <div class="h_pages">
                </div>
            </div>
        </div>
    </div>
    <!-- e = 主体内容 -->
</body>
</html>