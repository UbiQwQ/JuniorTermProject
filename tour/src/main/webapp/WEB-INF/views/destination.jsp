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
    <!-- Main-CSS --> 		 <link rel="stylesheet" href="../../statics/css/main.css" type="text/css" media="all">
    <!-- Destination-CSS --> <link rel="stylesheet" href="../../statics/css/destination.css" type="text/css" media="all">

</head>
<body>

<div class="headerBox header_redesign">
    <div id="headerScrollLimiter" class="headerScrollLimiter" data-backdrop-width="1920">
        <div class="promo" style="overflow:hidden;">
            <img id="backdrop" src="https://cc.ddcdn.com/img2/x.gif" lazy-src="https://ccm.ddcdn.com/cms/img/bg_header/tourism/destination_landing/bg_01.jpg"/>
            <img id="backdrop_blur" src="https://ccm.ddcdn.com/cms/img/bg_header/tourism/destination_landing/bg_01.jpg"/>
        </div>
        <div class="header-search-wrapper">
            <h2>准备,出发!</h2>
            <form id="destinationSearch" action="/search" method="post" onsubmit="return ta.call('ta.pages.home.validate', event, this);">
                <span id="destinations_lander_search_bar_wrap">
                    <input id="destinations_lander_loc_handler_geo-city" type="hidden" name="geo" value=""/>
                    <input id="destinations_lander_loc_handler" type="text" class="search-input header-search-input focusClear" name="city" placeholder="你想去哪里？" autocomplete="off" onfocus="daodao.call('daodao.home.createTypeAhead',event,this,'API','dest',null,true);"/>
                </span>
                <input type="submit" class="header-search-submit" onmousedown="ta.store('ta.pages.home.find.clicked', true);" title="搜索" value=""/>
            </form>
        </div>
    </div>
</div>













    <div class="main-wrapper">
        <div class="mod-header">
            <h2>全部目的地</h2>
        </div>
        <!-- continents tab body for tablets-->
        <div id="tab-body-wrapper-ipad" class="tab-body-wrapper">
            <%--<div class="tab-body">--%>
                <ul class="tab-body-column">
                    <li>
                        <a href="/search?city=beijing">北京</a>
                    </li>
                    <li>
                        <a href="/search?city=shanghai">上海</a>
                    </li>
                    <li>
                        <a href="/search?city=tianjin">天津</a>
                    </li>
                    <li>
                        <a href="/search?city=shenzhen">深圳</a>
                    </li>
                    <li>
                        <a href="/search?city=guangzhou">广州</a>
                    </li>
                    <li>
                        <a href="/search?city=hangzhou">杭州</a>
                    </li>
                    <li>
                        <a href="/search?city=qingdao">青岛</a>
                    </li>
                    <li>
                        <a href="/search?city=jinan">济南</a>
                    </li>
                    <li>
                        <a href="/search?city=taian">泰安</a>
                    </li>
                    <li>
                        <a href="/search?city=yantai">烟台</a>
                    </li>
                    <li>
                        <a href="/search?city=weihai">威海</a>
                    </li>
                    <li>
                        <a target="_blank" href="/Tourism-g293949-Laos-Vacations.html" data-pid="39631">老挝</a>
                    </li>
                </ul>
                <ul class="tab-body-column">
                    <li>
                        <a target="_blank" href="/Tourism-g293953-Maldives-Vacations.html" data-pid="39631">马尔代夫</a>
                    </li>
                    <li>
                        <a target="_blank" href="/Tourism-g293951-Malaysia-Vacations.html" data-pid="39631">马来西亚</a>
                    </li>
                    <li>
                        <a target="_blank" href="/Tourism-g293931-Armenia-Vacations.html" data-pid="39631">亚美尼亚</a>
                    </li>
                    <li>
                        <a target="_blank" href="/Tourism-g293935-Bangladesh-Vacations.html" data-pid="39631">孟加拉国</a>
                    </li>
                    <li>
                        <a target="_blank" href="/Tourism-g293955-Mongolia-Vacations.html" data-pid="39631">蒙古</a>
                    </li>
                    <li>
                        <a target="_blank" href="/Tourism-g294190-Myanmar-Vacations.html" data-pid="39631">缅甸</a>
                    </li>
                    <li>
                        <a target="_blank" href="/Tourism-g293889-Nepal-Vacations.html" data-pid="39631">尼泊尔</a>
                    </li>
                    <li>
                        <a target="_blank" href="/Tourism-g294232-Japan-Vacations.html" data-pid="39631">日本</a>
                    </li>
                    <li>
                        <a target="_blank" href="/Tourism-g293961-Sri_Lanka-Vacations.html" data-pid="39631">斯里兰卡</a>
                    </li>
                    <li>
                        <a target="_blank" href="/Tourism-g293915-Thailand-Vacations.html" data-pid="39631">泰国</a>
                    </li>
                    <li>
                        <a target="_blank" href="/Tourism-g293910-Taiwan-Vacations.html" data-pid="39631">台湾</a>
                    </li>
                    <li>
                        <a target="_blank" href="/Tourism-g293963-Tajikistan-Vacations.html" data-pid="39631">塔吉克斯坦</a>
                    </li>
                </ul>
                <ul class="tab-body-column">
                    <li>
                        <a target="_blank" href="/Tourism-g293965-Turkmenistan-Vacations.html" data-pid="39631">土库曼斯坦</a>
                    </li>
                    <li>
                        <a target="_blank" href="/Tourism-g293937-Brunei_Darussalam-Vacations.html" data-pid="39631">文莱达鲁萨兰</a>
                    </li>
                    <li>
                        <a target="_blank" href="/Tourism-g293967-Uzbekistan-Vacations.html" data-pid="39631">乌兹别克斯坦</a>
                    </li>
                    <li>
                        <a target="_blank" href="/Tourism-g294262-Singapore-Vacations.html" data-pid="39631">新加坡</a>
                    </li>
                    <li>
                        <a target="_blank" href="/Tourism-g294225-Indonesia-Vacations.html" data-pid="39631">印度尼西亚</a>
                    </li>
                    <li>
                        <a target="_blank" href="/Tourism-g670819-Indian_Ocean-Vacations.html" data-pid="39631">印度洋</a>
                    </li>
                    <li>
                        <a target="_blank" href="/Tourism-g293860-India-Vacations.html" data-pid="39631">印度</a>
                    </li>
                    <li>
                        <a target="_blank" href="/Tourism-g293921-Vietnam-Vacations.html" data-pid="39631">越南</a>
                    </li>
                    <li>
                        <a target="_blank" href="/Tourism-g294211-China-Vacations.html" data-pid="39631">中国</a>
                    </li>
                </ul>
        </div>
    </div>
</body>
</html>