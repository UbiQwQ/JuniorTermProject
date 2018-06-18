<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Innovation
  Date: 2018/6/18
  Time: 18:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            <li ><a href="/personalSettingPage"><em class="ico6"></em>账户设置</a></li>
            <li class="cur"><a href="#"><em class="ico6"></em>修改头像</a></li>
        </ul>
    </div>
    <div class="mainCnt">
        <div class="title">头像设置</div>
        <div class="setComon-box set-avatar">
            <form id="form_box" action="/avatarSetting" enctype="multipart/form-data" method="post">
                <div class="now-avatar">
                    <span class='hdTit'>当前头像：</span>
                    <div class="show-avatar">
                        <P><img src=${sessionUser.avatar} id='avaImg'/></P>
                        <P class='tips'>你可以上传jpg、gif或png格式的文件，文件大小不能超过2M</P>
                        <div class="btn">
                            <a href="javascript:;">上传新头像</a>
                            <input type='file'  id='upload-avatar' name="avatar" />
                        </div>
                    </div>
                </div>
                <%--<div class="cropper-img" id="cropper-img">--%>
                    <div class="row clr">
                        <%--<div id="cropper-target" cropper="avatar"  >--%>
                            <%--<img src="http://temp.im/208x208"  />--%>
                        <%--</div>--%>
                        <c:if test="${filePath!=null }">
                            <h1>上传的图片</h1><br />
                            <img width="300px" src="/pic/${filePath}"/>
                        </c:if>
                        <%--<div id="preview-large" >--%>
                            <%--<img src="http://temp.im/128x128" />--%>
                        <%--</div>--%>
                    </div>
                    <%--<p>提示：请选择图片裁剪区域</p>--%>
                    <button type="submit">保存</button>
                <%--</div>--%>
                <%--<input id="hid_avatar" name="image" type="hidden" value="" />--%>
                <%--<input type="hidden" name="x" value="" id='x'/>--%>
                <%--<input type="hidden" name="y" value="" id='y'/>--%>
                <%--<input type="hidden" name="w" value="" id='w'/>--%>
                <%--<input type="hidden" name="h" value="" id='h'/>--%>
            </form>
        </div>
    </div>
</div>
<!-- e = 主体内容 -->
</body>
</html>
