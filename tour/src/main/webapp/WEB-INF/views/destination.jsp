<%--
  Created by IntelliJ IDEA.
  User: Innovation
  Date: 2018/6/5
  Time: 22:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>目的地</title>
    <!-- Bootstrap-CSS -->   <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <!-- Main-CSS --> 		 <link rel="stylesheet" href="../../statics/css/main.css" 	type="text/css" media="all">

</head>
<body>
    This is destination.jsp..
    <div class="headerBox header_redesign">
        <div id="headerScrollLimiter" class="headerScrollLimiter" data-backdrop-width="1920">
            <div class="promo" style="overflow:hidden;">
                <img id="backdrop" src="https://cc.ddcdn.com/img2/x.gif" lazy-src="https://ccm.ddcdn.com/cms/img/bg_header/tourism/destination_landing/bg_01.jpg"/>
                <img id="backdrop_blur" src="https://ccm.ddcdn.com/cms/img/bg_header/tourism/destination_landing/bg_blur_01.jpg"/>
            </div>
            <div class="header-search-wrapper">
                <h2>准备,出发!</h2>
                <form id="destinationSearch" action="/search" method="post" onsubmit="return ta.call('ta.pages.home.validate', event, this);">
                    <span id="destinations_lander_search_bar_wrap">
                        <input id="destinations_lander_loc_handler_geo-city" type="hidden" name="geo" value=""/>
                        <input id="destinations_lander_loc_handler" type="text" class="search-input header-search-input focusClear" name="city" placeholder="你想去哪里？" autocomplete="off" />
                    </span>
                    <input type="submit" class="header-search-submit" onmousedown="ta.store('ta.pages.home.find.clicked', true);" title="搜索" value=""/>
                </form>
            </div>
        </div>
    </div>

    <a href="/city-qingDao">青岛</a>
    <a href="/city-jiNan">济南</a>
</body>
</html>