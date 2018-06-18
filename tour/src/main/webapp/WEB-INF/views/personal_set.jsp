<%--
  Created by IntelliJ IDEA.
  User: Innovation
  Date: 2018/6/17
  Time: 22:28
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
                <a class="edit-btn" href="/travelsPostPage">
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
            <li ><a href="/personalCommentPage"><em class="ico2"></em>我的评论</a></li>
            <li ><a href="/personalCollectPage"><em class="ico3"></em>我的收藏</a></li>
            <li ><a href="/personalOrderPage"><em class="ico5"></em>订单中心</a></li>
            <li class="cur"><a href="#"><em class="ico6"></em>账户设置</a></li>
            <li ><a href="/personalAvatarPage"><em class="ico6"></em>修改头像</a></li>
        </ul>
    </div>
    <div class="mainCnt">
        <div class="title clr">
            账户设置
        </div>
        <div class="setComon-box set-basicMsg">
            <form id="article-edit-form" action="/personalSetting" method="post">
                <input type="hidden" name="CSRF_TOKEN" value="5d4d5610beb48e578022a17628d413bdbabf2322">
                <div class="row">
                    <div class="row-name">
                        昵称：
                    </div>
                    <div class="row-cnt">
                        <input type="text" name="nickname" value=${sessionUser.userName}><span>2至14个字符</span>
                    </div>
                </div>
                <div class="row">
                    <div class="row-name">
                        手机号：
                    </div>
                    <div class="row-cnt">
                        <input type="text"  name="phone" value=""/>
                    </div>
                </div>
                <div class="row">
                    <div class="row-name">
                        年龄：
                    </div>
                    <div class="row-cnt">
                        <input type="text"   name="weixin" value=""/>
                    </div>
                </div>
                <div class="row">
                    <div class="row-name">
                        Q Q：
                    </div>
                    <div class="row-cnt">
                        <input type="text"   name="qq" value=""/>
                    </div>
                </div>
                <div class="row">
                    <div class="row-name">
                        个人签名：
                    </div>
                    <div class="row-cnt">
                        <textarea placeholder="不超过30字" name="description"></textarea>
                    </div>
                </div>
                <div class="row">
                    <div class="row-name">
                        &nbsp;
                    </div>
                    <div class="row-cnt">
                        <input type="submit" value="保   存" />
                    </div>
                </div>
            </form>
        </div>
    </div>

    </div>
</div>
<!-- e = 主体内容 -->
</body>
</html>
