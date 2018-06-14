<%--
  Created by IntelliJ IDEA.
  User: Innovation
  Date: 2018/6/7
  Time: 10:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>City</title>
    <!-- Main-CSS --> 		<link rel="stylesheet" href="../../statics/css/main.css" 	type="text/css" media="all">

<style type="text/css">
    DIV.prw_rup.prw_meta_maps_meta_block .providerLogo {
        width: 38%;
        height: 100%;
        vertical-align: middle;
        margin-left: 0;
        float: left;
        text-align: center;
    }
    DIV.prw_rup.prw_meta_maps_meta_block .disclaimerLnk {
        float: right;
        color: #999;
        display: inline-block;
        font-size: .9165em;
        line-height: 14px;
        text-align: right;
    }
    DIV.prw_rup.prw_meta_maps_meta_block .mapsv2-unavail, DIV.prw_rup.prw_meta_maps_meta_block .mapsv2-noprices {
        font-weight: bold;
        margin-bottom: 5px;
    }
    DIV.prw_rup.prw_meta_maps_meta_block .moreInfo {
        height: 20px;
    }
    DIV.prw_rup.prw_meta_maps_meta_block .moreInfoWithTextLinks {
        height: 40px;
    }
    DIV.prw_rup.prw_meta_maps_meta_block .offer.premium {
        position: relative;
        height: 57px;
        overflow: visible;
        margin: 5px 0;
        padding: 0;
        background: #fff;
        border: 1px solid #e6e6e6;
        border-radius: 3px;
        line-height: 54px;
        clear: both;
        cursor: pointer;
    }
    DIV.prw_rup.prw_meta_maps_meta_block .providerImg {
        height: 35px;
        vertical-align: middle;
    }
    DIV.prw_rup.prw_meta_maps_meta_block .singlePriceBlock {
        vertical-align: middle;
        width: 28%;
        height: 100%;
        padding-left: 0;
        line-height: 38px;
        float: left;
        text-align: center;
    }
    DIV.prw_rup.prw_meta_maps_meta_block .priceBlockContents {
        width: 100%;
    }
    DIV.prw_rup.prw_meta_maps_meta_block .pricePerNight {
        font-size: 10px;
        text-align: center;
        line-height: normal;
    }
    DIV.prw_rup.prw_meta_maps_meta_block .priceChevron {
        position: relative;
        right: 78px;
        display: table;
        padding: 0;
        line-height: normal;
        color: black;
        margin: 0;
    }
    DIV.prw_rup.prw_meta_maps_meta_block .price-center {
        display: table-cell;
        vertical-align: middle;
        height: 59px;
        width: 90px;
        max-width: 90px;
    }
    DIV.prw_rup.prw_meta_maps_meta_block .price {
        white-space: nowrap;
        color: black;
        display: block;
        font-weight: bold;
        margin-bottom: -2px;
        font-size: 20px;
    }
    DIV.prw_rup.prw_meta_maps_meta_block .viewDealChevron {
        min-width: 0;
        width: 70px;
        white-space: normal;
        text-align: center;
        color: #000;
        font-size: 16px;
        font-weight: bold;
        padding: 0 13px 0 6px;
        line-height: 57px;
        height: 58px;
        background: #fc0 none;
        text-shadow: none;
        box-shadow: none;
        overflow: visible;
        text-overflow: ellipsis;
        float: right;
    }
    DIV.prw_rup.prw_meta_maps_meta_block .viewDealText {
        display: inline-block;
        line-height: normal;
        vertical-align: middle;
        text-align: center;
        max-width: 100%;
        padding-right: 2px;
    }
    DIV.prw_rup.prw_meta_maps_meta_block .dealWrapper {
        width: 65px;
    }
    DIV.prw_rup.prw_meta_maps_meta_block .viewDealChevron:not(.lte_ie8):after {
        border-color: #000;
        position: absolute;
        top: 50%;
        right: 8px;
        width: 6px;
        height: 6px;
        margin-top: -4px;
        border-width: 0 2px 2px 0;
        border-style: solid;
        content: "";
        -ms-transform: rotate(-45deg);
        -sand-transform: rotate(-45deg);
        -webkit-transform: rotate(-45deg);
        transform: rotate(-45deg);
    }
    DIV.prw_rup.prw_meta_view_all_text_links_declutter {
        border-width: 0;
        min-width: 160px;
    }
    DIV.prw_rup.prw_meta_view_all_text_links_declutter .text-link {
        cursor: pointer;
        position: relative;
        color: #4a4a4a;
        line-height: 24px;
    }
    DIV.prw_rup.prw_meta_view_all_text_links_declutter .text-link .providerName {
        margin-right: 30px;
        color: #666;
    }
    DIV.prw_rup.prw_meta_view_all_text_links_declutter .text-link .ui_icon {
        float: right;
        font-size: 12px;
        color: #666;
    }
    DIV.prw_rup.prw_meta_view_all_text_links_declutter .external-link-no-box.internal-link {
        opacity: 0;
    }
    DIV.prw_rup.prw_meta_view_all_text_links_declutter .text-link:before {
        content: '';
        position: absolute;
        width: 100%;
        border-bottom: 1px dotted #4a4a4a;
        bottom: 7px;
    }
    DIV.prw_rup.prw_meta_view_all_text_links_declutter .text-link .vendor,
    DIV.prw_rup.prw_meta_view_all_text_links_declutter .text-link .price {
        position: relative;
        background: #ffffff;
        z-index: 1;
    }
    DIV.prw_rup.prw_meta_view_all_text_links_declutter .text-link .vendor {
        padding-right: 3px;
    }
    DIV.prw_rup.prw_meta_view_all_text_links_declutter .text-link .price {
        float: right;
        padding-left: 3px;
        font-weight: bold;
        color: #000a12;
    }
    DIV.prw_rup.prw_meta_view_all_text_links_declutter .text-link:hover .vendor,
    DIV.prw_rup.prw_meta_view_all_text_links_declutter .text-link:hover .price {
        text-decoration: underline;
    }
    DIV.prw_rup.prw_meta_view_all_text_links_declutter .text-link.unclickable {
        cursor: default;
    }
    DIV.prw_rup.prw_meta_view_all_text_links_declutter .text-link.unclickable:hover .vendor,
    DIV.prw_rup.prw_meta_view_all_text_links_declutter .text-link.unclickable:hover .price {
        text-decoration: none;
    }
    DIV.prw_rup.prw_meta_view_all_text_links_declutter .text-link .comparisonOffer {
        color: #ff6500;
    }
    DIV.prw_rup.prw_meta_view_all_text_links_declutter .text-link .comparisonOffer.red {
        color: #d80007;
    }
    DIV.prw_rup.prw_meta_view_all_text_links_declutter .text-link.blackStrikeThrough .comparisonOffer {
        color: inherit;
    }
    DIV.prw_rup.prw_common_declutter_dropdown .viewAll {
        font-size: 12px;
    }
    DIV.prw_rup.prw_common_declutter_dropdown .viewAll .viewall_text:hover {
        text-decoration: underline;
    }
    DIV.prw_rup.prw_common_declutter_dropdown .viewAll .ui_icon.caret-down:before {
        font-size: 14px;
    }
    DIV.prw_rup.prw_common_declutter_dropdown .viewAll .ui_icon.caret-down {
        position: absolute;
        margin-top: 2px;
    }
    DIV.prw_rup.prw_common_declutter_dropdown .moreLink {
        cursor: pointer;
        margin-right: 12px;
    }
</style>
<link rel='stylesheet' type='text/css' href='https://cc.ddcdn.com/ddcss/gen/daodao_common_minimal-v1584182769t.css'/>
<link rel='stylesheet' type='text/css' media='screen, print' href='https://cc.ddcdn.com/ddcss/gen/tourism_unfork_addition-v1762564545t.css'/>
<style type="text/css">
    body{}
    #history_carousel {
        background: #f4f4f4;
        border: 1px solid #cccccc;
        margin: 20px 0px 0px 0px;
    }
    #history_carousel h3 {
        color: #4A4A4A;
        font-size: 1em;
        margin-bottom: -5px;
        margin-top: 1px;
    }
    #history_carousel .sizedThumb {
        overflow: hidden;
    }
    #history_carousel_content .location {
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
        font-size: .8335em;
        color: #656565;
    }
    #history_carousel .history_carousel_header {
        padding: 12px 0 13px 14px;
        font-size: 1.5em;
        font-weight: bold;
        color: #4A4A4A;
    }
    #history_carousel .history_carousel_tabs_wrapper {
        margin-top: -7px;
        position: relative;
        z-index: 101;
    }
    #history_carousel_tabs {
        margin:0 0 0 10px;
    }
    #history_carousel_tabs li {
        margin-left:4px;
        padding:8px 14px 7px;
        border:1px solid #c7c7c7;
        font:bold 1.1670em Arial;
        color:#069;
        background-color:#ededed;
        float:left;
    }
    #history_carousel_tabs li.active, #history_carousel_tabs li.activeHover{
        color:#3a3a3a;
        background-color:#fff;
    }
    #history_carousel_tabs li.active{
        border-bottom-color:#fff;
    }
    #history_carousel_tabs li.activeHover{
        cursor:pointer;
    }
    #history_carousel_tabs .num{
        font:normal 1.00em Arial;
        color:#656565;
    }
    #history_carousel .history_carousel_content {
        background: #fff;
        border-top: 1px solid #C7C7C7;
        margin-top: -1px;
        padding: 14px;
        z-index: 100;
        position: relative;
    }
    #history_carousel .hotel_list_wrapper {
        float: left;
        width: 180px;
    }
    #history_carousel .hotel_list_wrapper li.lodging {
        margin-top: 14px;
    }
    #history_carousel .hotel_list_wrapper li.lodging .content {
        display: block;
        float: left;
    }
    #history_carousel .hotel_list_wrapper li.lodging .content div {
        line-height: 13px;
        width: 105px;
        overflow: hidden;
    }
    #history_carousel .hotel_list_wrapper li.lodging .content div.propertyLink {
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
    }
    #history_carousel .hotel_list_wrapper li.lodging .content .rating rate {
        display:block;
        float:none;
    }
    #history_carousel .hotel_list_wrapper li.lodging .content .rating {
        margin-left: 0;
    }
    #history_carousel .hotel_list_wrapper li.lodging .content div .rate {
        margin-bottom: 2px;
    }
    #history_carousel .hotel_list_wrapper .thumbnail {
        height: 61px;
        width: 60px;
        overflow: hidden;
        padding-right: 10px;
    }
    #history_carousel .hotel_list_wrapper .thumbnail img {
        height: 60px;
        width: auto;
        border: none;
    }
    #history_carousel .hotel_list_wrapper .noImageBorder,
    #history_carousel .hotel_list_wrapper .noImageContainer {
        height: 60px;
        width: 60px;
    }
    #history_carousel .hotel_list_wrapper .thumbnail img.npp {
        height: 30px;
        width: 50px;
    }
    #also_viewed_carousel {
        font-family: Arial, Tahoma, "Bitstream Vera Sans", sans-serif;
    }
    #also_viewed_carousel .carousel_content .slideshow { display:none;}
    #also_viewed_carousel .carousel_content .content .rating {
        margin-left: 0;
        position: relative;
    }
    #also_viewed_carousel .carousel_content .content,
    #also_viewed_carousel .carousel_content .content .rating span.rate {
        float:none;
        display: block;
        position: relative;
    }
    #also_viewed_carousel .carousel_content .content .rate {
        margin-bottom: 2px;
    }
    #history_carousel .also_viewed_carousel_wrapper {
        float: left;
        padding: 0 0 0 14px;
        width: 399px;
        border-left: 1px solid #ebebeb;
    }
    #also_viewed_carousel {
        padding: 14px 0 0 0;
    }
    #also_viewed_carousel .carousel_content div.parent_name {
        line-height: 14px !important;
    }
    #also_viewed_carousel .carousel_content .sizedThumb {
        margin-bottom: 5px;
    }
    #also_viewed_carousel .carousel_content {
        width: 399px;
        overflow: hidden !important;
        position: relative;
    }
    #also_viewed_carousel .carousel_items_wrapper {
        white-space: nowrap;
        width: 413px; /* number of items x 139px */
        position: relative;
    }
    #also_viewed_carousel .carousel_content .carousel_item {
        width: 115px;
        overflow: hidden;
        float: left;
        margin-right: 22px;
        display: block;
        position: relative;
    }
    #also_viewed_carousel .carousel_content .carousel_item .noImageBorder,
    #also_viewed_carousel .carousel_content .carousel_item .noImageContainer {
        height: 108px;
        width: 113px;
    }
    #also_viewed_carousel .carousel_content .carousel_item .sizedThumb{
        width: 115px;
        height: 110px;
        overflow: hidden;
    }
    #also_viewed_carousel .carousel_content .carousel_item .sizedThumb img {
        position: relative;
        height: 110px;
        width: auto;
        border: 0;
    }
    #also_viewed_carousel .carousel_content .carousel_item .sizedThumb img.npp
    {
        width: 81px;
        height: 44px;
    }
    #also_viewed_carousel .carousel_content .carousel_item .content {
        margin-top: 5px;
    }
    #also_viewed_carousel .carousel_content .carousel_item .content div {
        line-height: 17px;
    }
    #also_viewed_carousel .carousel_content .carousel_item .content div.propertyLink {
        text-overflow: ellipsis;
        line-height: 12px;
        overflow: hidden;
        width: 115px;
    }
    #also_viewed_carousel .crOverlayButton {
        width: 115px;
    }
    #also_viewed_carousel .vr_recommend .carousel_items_wrapper {
        width:426px; /* number of items x 144px */
        white-space: normal;
    }
    #also_viewed_carousel .vr_recommend .carousel_item {
        width: 118px;
    }
    #also_viewed_carousel .vrDetailButton
    {
        width:113px;
        padding: 5px 0px 6px;
        background: url("https://cc.ddcdn.com/img2/vacationrentals/Button-Big.gif") repeat-x transparent;
        border-top: 1px solid #f39e1f;
        border-bottom: 1px solid #cb8418;
        border-left: 1px solid #f39e1f;
        border-right: 1px solid #cb8418;
        cursor: pointer;
        text-align: center;
        font-size: 13px;
        font-weight: bold;
        text-shadow: 1px 1px 1px white;
        color: black;
    }
    #gpt-ad-300x250-locationphotoalbum,
    .gptAd > div {
        position: relative;
        display: inline-block;
    }
    #gpt-ad-300x250-locationphotoalbum::before,
    .gptAd > div:before {
        position: absolute;
        bottom: 0;
        left: 0;
        line-height: initial;
        content: "广告";
        padding: 3px;
        font: 10px sans-serif;
        background-color: #808080;
        color: white;
        pointer-events: none;
    }
</style>

</head>
<body id="BODY_BLOCK_JQUERY_REFLOW" class=" Tourism ltr domn_zh_CN lang_zhCN globalNav2011_reset rebrand_2017 hr_tabs_placement_test tabs_below_meta scroll_tabs full_width_page css_commerce_buttons flat_buttons sitewide xo_pin_user_review_to_top track_back" data-scroll='OVERVIEW' data-tab='TABS_OVERVIEW' data-navArea-metaType="QC_Meta_Mini" data-navArea-placement="Unknown">
<!--trkP:sync_rt_cookie-->
<!-- PLACEMENT sync_rt_cookie -->
<DIV ID="taplc_sync_rt_cookie_0" class="ppr_rup ppr_priv_sync_rt_cookie" data-placement-name="sync_rt_cookie">
    <script type="text/javascript">require(["ta/Core/TA.Store"], function(taStore) {taStore.store("retargeting.rtURL", '//' + 'www.tamgrt.com/RT');taStore.store("retargeting.drs", 'SALES_20');});</script></DIV>
<!--etk-->
<div id="iframediv"></div>
<div id="PAGE" class=" non_hotels_like desktop scopedSearch">
    <div class="masthead">
        <!--trkP:global_nav-->
        <!-- PLACEMENT global_nav -->
        <DIV ID="taplc_global_nav_0" class="ppr_rup ppr_priv_global_nav" data-placement-name="global_nav">
            <div class="global-nav-no-refresh" id="global-nav-no-refresh-1"><!-- PLACEMENT global_nav_menus --><div id="taplc_global_nav_menus_0" class="ppr_rup ppr_priv_global_nav_menus" data-placement-name="global_nav_menus">
                <!-- PLACEMENT global_nav_menus -->
                <div class="hidden">
                    <div class="global-nav-menus-container">
                    </div>
                    <ul class="global-nav-links-menu-more"></ul>
                </div>
                <div class="global-nav-overlays-container"></div></div></div><div class="global-nav has-links"><div class="global-nav-top"><div class="global-nav-bar global-nav-green"><div class="ui_container global-nav-bar-container global-nav-mobile-web-rollout first-view persistent-icons"><div class="global-nav-hamburger global-nav-icons show-left is-hidden-tablet" onclick="return placementEvCall('taplc_global_nav_0', 'deferred/lateHandlers.showSidebarNav', event, this);"><span class="ui_icon menu-bars"></span><div class="ui_jewel marked_for_attention unread hidden"></div></div><a href="/" class="global-nav-logo global-nav-logo-resize"><img src=https://cc.ddcdn.com/img2/langs/zh_CN/branding/rebrand/TA_logo_secondary.svg alt=TripAdvisor(猫途鹰) class="global-nav-img global-nav-svg"/></a><!-- PLACEMENT global_nav_geopill --><div id="taplc_global_nav_geopill_0" class="ppr_rup ppr_priv_global_nav_geopill" data-placement-name="global_nav_geopill"><div class="global-nav-geopill"data-id="297458"onclick="return remoteModule(event, this)"data-load-init="$plc:deferred/GeoSearch.init"data-load-css="src/build/styleguide/ui_overlays/flyouts"data-element=".hidden"data-recently-viewed-header="最近浏览"data-no-results="无搜索结果"data-location-label="附近" data-location-denied-label="您阻止了TripAdvisor使用您的当前位置。请开放许可后重试。" data-geonavi-enabled=""><span class="ui_pill inverted">青岛市<span class="ui_icon caret-down"></span></span><div class="hidden"><div class="ui_text"><input type="text" class="ui_input_text" placeholder="搜索目的地"/> <span class="ui_underline"></span></div><div class="ui_flyout_results"></div></div></div></div><div class="global-nav-actions global-nav-icons show-right"><!-- PLACEMENT daodao_global_nav_action_war --><div id="taplc_daodao_global_nav_action_war_0" class="ppr_rup ppr_priv_daodao_global_nav_action_war" data-placement-name="daodao_global_nav_action_war"><div class="masthead-war" title="写点评"><a class="war-icon" onclick="require('ta/util/Cookie').setPIDCookie(1434)" onmouseover="this.href=asdf('LqdWVqgripEStaqHyXAkdovqHxXSCyMJiQQoqnQQhGJCMiCyqHqatxiGIac')"><span class="ui_icon pencil-paper"></span></a></div></div><!-- PLACEMENT global_nav_action_cart --><div id="taplc_global_nav_action_cart_0" class="ppr_rup ppr_priv_global_nav_action_cart" data-placement-name="global_nav_action_cart"></div><!-- PLACEMENT global_nav_action_trips --><div id="taplc_global_nav_action_trips_0" class="ppr_rup ppr_priv_global_nav_action_trips is-shown-at-tablet" data-placement-name="global_nav_action_trips"><div class="masthead-saves" data-nav-2018-enabled="" title="我的旅行和最近浏览"><a class="trips-icon"><span class="ui_icon my-trips"></span></a></div></div><!-- PLACEMENT global_nav_action_inbox --><div id="taplc_global_nav_action_inbox_0" class="ppr_rup ppr_priv_global_nav_action_inbox is-shown-at-tablet" data-placement-name="global_nav_action_inbox"><div title="收件箱"> <div class=""><div class="masthead-inbox-icon ui_icon comments" data-nav-2018-enabled=""></div><div class="ui_jewel marked_for_attention hidden"></div></div><div class="inbox-nav-contents ppr_rup ppr_priv_global_nav_action_inbox hidden"><div class="inbox-nav-dropdown"><div class="header"><div class="title">收件箱</div> <a class="see-all" href="/Inbox" onclick="ta.trackEventOnPage('Inbox|Dropdown', 'see_all', '', '40186');">查看全部</a> </div><div class="inbox-lander-thread-list-item js-inbox-lander-thread-list-item loading hidden"><div class="loading-animation"></div><div class="inbox-lander-thread-list-item-core-content"><div class="inbox-lander-thread-list-item-avatar-and-mobile-date"><div class="inbox-lander-thread-list-item-avatar"><div class="empty_avatar"></div></div></div><div class="inbox-lander-thread-list-item-message"><div class="inbox-lander-thread-list-item-skeleton-bar"></div><div class="inbox-lander-thread-list-item-skeleton-bar"></div><div class="inbox-lander-thread-list-item-skeleton-bar"></div></div></div></div><div class="inbox-masthead-wrapper"></div></div></div></div></div><!-- PLACEMENT global_nav_action_profile --><div id="taplc_global_nav_action_profile_0" class="ppr_rup ppr_priv_global_nav_action_profile is-shown-at-tablet" data-placement-name="global_nav_action_profile"><!-- Renderer is com.TripResearch.placements.renderers.core.GlobalNavProfileRenderer --><div class="global-nav-profile global-nav-utility"><div class="global-nav-utility-activator" data-element=".global-nav-profile-menu" data-nav-2018-enabled="" data-track-profile-dropdown-open title="账户"><span class="ui_avatar small"><img src="https://ccm.ddcdn.com/photo-t/02/88/d5/68/daodaoavatar032.jpg" alt="wechat_oqtefulakb2rxp7oxbyyr9y2y..."/></span><span class="name">wechat_oqtefulakb2rxp7oxbyyr9y2y...</span></div><div class="hidden"><ul class="global-nav-profile-menu"><li class="subItem"><a href="/MemberProfile-a_uid.FEF741FC53D8606486F7ED79445E5FB1" class="subLink" onClick="ta.trackEventOnPage('UtilityNav', 'click', 'UserProfile_viewProfile');">个人页面</a></li> <li class="subItem rule"><a href="/Settings-cp" class="subLink global-nav-submenu-divided" onClick="ta.trackEventOnPage('UtilityNav', 'click', 'UserProfile_settings');">帐号信息</a></li> <li class="subItem"><a href="/NewsletterSignOut-e__2F__Tourism__2D__g297458__2D__Qingdao__5F__Shandong__2D__Vacations__2E__html" class="subLink" onClick="ta.trackEventOnPage('UtilityNav', 'click', 'UserProfile_signout');">退出</a></li> </ul></div></div></div><!-- PLACEMENT masthead_search --><div id="taplc_masthead_search_0" class="ppr_rup ppr_priv_masthead_search" data-placement-name="masthead_search"><div class="mag_glass_parent" title="搜索"><div class="separator"></div><span class="ui_icon search" onclick="return placementEvCall('taplc_masthead_search_0', 'deferred/lateHandlers.showSearchOverlay', event, this);"></span><span class="hidden"><div class="search_overlay_content ui_container typeahead_2017" data-div-classes="ppr_rup ppr_priv_masthead_search"><div id="DUAL_SEARCH_LOADER_CONTAINER" class="dual_search_loader_container"><div class="dual_search_loader_overlay"></div><div class="dual_search_loader_visual"><div class="ui_spinner"></div></div></div><div class="just_padding"><div class="no_cpu"><form class="search_form ui_columns is-multiline" method="get" action="/Search" onsubmit="return placementEvCall('taplc_masthead_search_0', 'deferred/lateHandlers.submitForm', event, this);" id="global_nav_search_form"><div class="ui_column is-10"><div class="search_line ui_columns is-multiline is-gapless"><div id="MAIN_SEARCH_CONTAINER" class="mainSearchContainer ui_column is-8 big_input"><input id="mainSearch" type="text" class="text focusClear" autocomplete="off" onBlur="placementEvCall('taplc_masthead_search_0', 'deferred/lateHandlers.whatFocused', event, this)" onfocus="this.select();placementEvCall('taplc_masthead_search_0', 'deferred/lateHandlers.whatFocused', event, this)" onkeydown="if (ta && (event.keyCode || event.which) === 13){ta.setEvtCookie('TopNav_Search', 'Action', 'Hit_Enter_toSRP', 0, '/Search');}" autocorrect="off" spellcheck="false" placeholder="搜索 TripAdvisor"/><span class="input_highlight"></span></div><div id="GEO_SCOPE_CONTAINER" class="geoScopeContainer ui_column is-4"><span class="where_neighbor">在</span><div class="where_with_highlight"><input id="GEO_SCOPED_SEARCH_INPUT" type="text" class="text geoScopeInput " onBlur="placementEvCall('taplc_masthead_search_0', 'deferred/lateHandlers.whereFocused', event, this)" onfocus="this.select();placementEvCall('taplc_masthead_search_0', 'deferred/lateHandlers.whereFocused', event, this)" value="青岛市, 中国" autocorrect="off" spellcheck="false" placeholder="输入目的地"/><span class="input_highlight"></span></div><span class="hidden geoExample">输入目的地</span><span class="where_neighbor without_dropdown ui_icon caret-down"></span></div></div></div><div class="ui_column is-2 search_line_block"><button id="SEARCH_BUTTON" class="search_button" type="submit" onclick="if (ta && event.clientY) { document.getElementById('global_nav_search_form').elements['pid'].value=3825; }return placementEvCall('taplc_masthead_search_0', 'deferred/lateHandlers.submitClicked', event, this);" name="sub-search"><div id="SEARCH_BUTTON_CONTENT"><label class="staticSearchLabel ui_icon search"></label><div class="inner">搜索</div> </div></button></div><input id="TYPEAHEAD_GEO_ID" type="hidden" name="geo" value="297458"><input id="TYPEAHEAD_LATITUDE" type="hidden" name="latitude" value=""><input id="TYPEAHEAD_LONGITUDE" type="hidden" name="longitude" value=""><input id="TYPEAHEAD_NEARBY" type="hidden" name="searchNearby" value=""><input type="hidden" name="pid" value="3826"><input id="TOURISM_REDIRECT" type="hidden" name="redirect" value=""><input id="MASTAHEAD_TYPEAHEAD_START_TIME" type="hidden" name="startTime" value=""><input id="MASTAHEAD_TYPEAHEAD_UI_ORIGIN" type="hidden" name="uiOrigin" value=""><input id="MASTHEAD_MAIN_QUERY" type="hidden" name="q" value=""><input id="MASTHEAD_SUPPORTED_SEARCH_TYPES" type="hidden" name="supportedSearchTypes" value="find_near_stand_alone_query"><input id="MASTHEAD_ENABLE_NEAR_PAGE" type="hidden" name="enableNearPage" value="true"><input type="hidden" name="returnTo" value="__2F__Tourism__2D__g297458__2D__Qingdao__5F__Shandong__2D__Vacations__2E__html"><input type="hidden" name="searchSessionId" value="38F0B9E669D43C2693C4948BB930DFB61528944227192ssid"><input type="hidden" id="SOCIAL_TYPEAHEAD_2018_FEATURE" name="social_typeahead_2018_feature" value=""></form></div><div class="ui_columns results_panel"><div class="ui_column is-10 ui_columns results_panel"><div class="what_results ui_column is-12 hidden"></div><div class="where_results ui_column is-offset-7 is-5 hidden"></div></div></div></div></div></span></div></div></div></div></div><div class="global-nav-links global-nav-bottom global-nav-white ui_tabs is-hidden-mobile"><div class="ui_container ui_columns is-gapless"><div class="links_container ui_column is-11"><!-- PLACEMENT global_nav_links --><div id="taplc_global_nav_links_0" class="ppr_rup ppr_priv_global_nav_links" data-placement-name="global_nav_links"><div class="global-nav-links-container"><ul class="global-nav-links-menu"><li class="nav-sub-item" data-element=".masthead-dropdown-tourism"><a href="/Tourism-g297458-Qingdao_Shandong-Vacations.html"id="global-nav-tourism" class=" global-nav-link ui_tab active"data-tracking-label="tourism">关于青岛市</a></li><li class="nav-sub-item" data-element=".masthead-dropdown-hotels"><a href="/Hotels-g297458-Qingdao_Shandong-Hotels.html"id="global-nav-hotels" class=" global-nav-link ui_tab "data-tracking-label="hotels"><span class="ui_icon hotels"></span>酒店</a></li><li class="nav-sub-item" data-element=".masthead-dropdown-attractions"><a href="/Attractions-g297458-Activities-Qingdao_Shandong.html"id="global-nav-attractions" class=" global-nav-link ui_tab "data-tracking-label="attractions"><span class="ui_icon attractions"></span>景点</a></li><li class="nav-sub-item" data-element=".masthead-dropdown-restaurants"><a href="/Restaurants-g297458-Qingdao_Shandong.html"id="global-nav-restaurants" class=" global-nav-link ui_tab "data-tracking-label="restaurants"><span class="ui_icon restaurants"></span>美食</a></li><li class="nav-sub-item" data-element=".masthead-dropdown-STB"><a href="/TourismBlog-g294211-China.html"id="global-nav-STB" class=" global-nav-link ui_tab "data-tracking-label="STB">游记</a></li><li class="nav-sub-item" data-element=".masthead-dropdown-CityGuide"><a href="/CityGuideList"id="global-nav-CityGuide" class=" global-nav-link ui_tab "data-tracking-label="CityGuide"><span class="ui_icon guides"></span>指南</a></li><li class="nav-sub-item" data-element=".masthead-dropdown-TravelersChoice"><a href="/TravelersChoice"id="global-nav-TravelersChoice" class=" global-nav-link ui_tab "data-tracking-label="TravelersChoice"><span class="ui_icon travelers-choice-badge"></span>旅行者之选</a></li><li class="nav-sub-item" data-element=".masthead-dropdown-AppDownload"><a href="/MobileApps"id="global-nav-AppDownload" class=" global-nav-link ui_tab "data-tracking-label="AppDownload">App下载</a></li><li class="nav-sub-item force-more" data-element=".masthead-dropdown-Volunteer"><a href="/zhiyuan"id="global-nav-Volunteer" class=" global-nav-link ui_tab "data-tracking-label="Volunteer">猫途鹰翻译志愿者</a></li><li class="nav-sub-item force-more" data-element=".masthead-dropdown-Airlines"><a href="/Airlines"id="global-nav-Airlines" class=" global-nav-link ui_tab "data-tracking-label="Airlines"><span class="ui_icon flights"></span>航空公司点评</a></li></ul><ul class="global-nav-links-menu-ellipsis is-top-only"><li class="global-nav-links-ellipsis"><span class="global-nav-link ui_tab ellipsis"><span class="ui_icon more-horizontal"></span></span></li></ul></div></div></div><div class="message_container ui_column is-1"></div></div></div></div><!--[if lte IE 8]><style type="text/css">.sidebar-nav-backdrop,.sidebar-nav-container.off-canvas {display: none;}</style><![endif]--><div class="sidebar-nav-container reorg-with-icons off-canvas is-hidden-tablet is-hidden-desktop"><div class="sidebar-nav-contents ui_container"><div class="sidebar-nav-header"><div class="sidebar-nav-close" onclick="return placementEvCall('taplc_global_nav_0', 'deferred/lateHandlers.hideSidebarNav', event, this);"><div class="ui_icon times"></div></div><a href="/" class="global-nav-logo global-nav-logo-resize"><img src=https://cc.ddcdn.com/img2/langs/zh_CN/branding/rebrand/TA_logo_primary.svg alt=TripAdvisor(猫途鹰) class="global-nav-img"/></a></div><div class="sidebar-nav-profile-container"><div class="sidebar-nav-profile-linker"><a href="/MemberProfile-a_uid.FEF741FC53D8606486F7ED79445E5FB1" class="global-nav-profile-linker"><img src="https://ccm.ddcdn.com/photo-t/02/88/d5/68/daodaoavatar032.jpg" class="ui_avatar" alt=""/><span class="profile-link"><span class="profile-name">wechat_oqtefulakb2rxp7oxbyyr9y2y...</span><span class="profile-link-text">个人页面</span> </span></a></div><ul class="sidebar-nav-profile"><li class="nav-sub-item"><a href="/Saves" class="nav-sub-link" data-tracking-label="My_trips">我的旅行</a></li> <li class="nav-sub-item"><a href="/Recent" class="nav-sub-link" data-tracking-label="Recently_viewed">最近浏览</a></li> <li class="nav-sub-item"><a href="/Inbox" class="nav-sub-link inbox" data-tracking-label="UserProfile_inbox_no_unread"><div class="label-and-icon">收件箱 <div class="icon-and-jewel hidden"><div class="ui_icon comments"></div><div class="ui_jewel marked_for_attention"></div></div></div></a></li></ul></div><div class="sidebar-nav-links-container"><div class="sidebar-nav-links"></div><div class="sidebar-nav-links-more"><span class="nav-sub-link nav-sub-link-more" onclick="return placementEvCall('taplc_global_nav_0', 'deferred/lateHandlers.toggleMoreLinks', event, this);">更多 <span class="ui_icon single-chevron-down"></span></span><ul class="sub-list"></ul></div><a href="#" id="global-nav-HelpDesk" class="global-nav-link" data-tracking-label="HelpDesk">帮助中心</a> </div><ul class="sidebar-nav-settings"><li class="nav-sub-item"><a href="/MobileNativeSettings" class="nav-sub-link" data-tracking-label="UserProfile_settings">设置</a></li> <li class="nav-sub-item"><a href="/NewsletterSignOut-e__2F__Tourism__2D__g297458__2D__Qingdao__5F__Shandong__2D__Vacations__2E__html" class="nav-sub-link" data-tracking-label="UserProfile_signout">退出</a></li> </ul></div></div><div class="sidebar-nav-backdrop is-hidden-tablet is-hidden-desktop" onclick="return placementEvCall('taplc_global_nav_0', 'deferred/lateHandlers.hideSidebarNav', event, this);"></div></div><div class="global-nav-no-refresh" id="global-nav-no-refresh-2"><!-- PLACEMENT global_nav_onpage_assets --><div id="taplc_global_nav_onpage_assets_0" class="ppr_rup ppr_priv_global_nav_onpage_assets is-shown-at-tablet" data-placement-name="global_nav_onpage_assets">
            <!-- PLACEMENT global_nav_onpage_assets -->
            <div class="ui_container  with_masthead ">
                <h1 class="header heading fr">青岛旅游</h1>
                <!--trkP:trip_planner_breadcrumbs-->
                <!-- PLACEMENT trip_planner_breadcrumbs -->
                <DIV ID="taplc_trip_planner_breadcrumbs_0" class="ppr_rup ppr_priv_trip_planner_breadcrumbs" data-placement-name="trip_planner_breadcrumbs">
                    <ul class="breadcrumbs"><li class="breadcrumb"itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a class="link" href="/Tourism-g2-Asia-Vacations.html" onclick="ta.setEvtCookie('Breadcrumbs', 'click', 'Continent', 1, '/Tourism-g2-Asia-Vacations.html');" itemprop="url"><span itemprop="title">亚洲</span></a>&nbsp;<span class="ui_icon single-chevron-right"></span>&nbsp;</li><li class="breadcrumb"itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a class="link" href="/Tourism-g294211-China-Vacations.html" onclick="ta.setEvtCookie('Breadcrumbs', 'click', 'Country', 2, '/Tourism-g294211-China-Vacations.html');" itemprop="url"><span itemprop="title">中国</span></a>&nbsp;<span class="ui_icon single-chevron-right"></span>&nbsp;</li><li class="breadcrumb"itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a class="link" href="/Tourism-g297455-Shandong-Vacations.html" onclick="ta.setEvtCookie('Breadcrumbs', 'click', 'State', 3, '/Tourism-g297455-Shandong-Vacations.html');" itemprop="url"><span itemprop="title">山东省</span></a>&nbsp;<span class="ui_icon single-chevron-right"></span>&nbsp;</li><li class="breadcrumb">青岛市旅游</li></ul></DIV>
                <!--etk-->
            </div>
        </div></div></DIV>
        <!--etk-->
    </div>
    <div id="MAINWRAP" class=" noLHN ">
        <div id="MAIN" class="Tourism
         prodp13n_jfy_overflow_visible
    ">
            <div class="ad iab_leaBoa topOfPage">
                <div id="gpt-ad-728x90-970x66" class="adInner gptAd"></div>
            </div>
            <div id="BODYCON" class="col easyClear poolA new_meta_chevron_v2">
                <!--trkP:daodao_gtm_tracking_body-->
                <!-- PLACEMENT daodao_gtm_tracking_body -->
                <noscript>
                    <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-PK6FLC4" height="0" width="0" style="display:none;visibility:hidden"></iframe>
                </noscript><!--etk-->
                <div class="sectionCollection">
                    <div class="resizingMargins">
                        <div class="topSection tourismRow" data-module="top">
                            <div class="pageHeading">
                                <div class="avatars">
                                    <div class="ui_avatar small">
                                        <img width="30" id="lazyload_-1797461925_0" class="circularAvatar" height="30" src='https://cc.ddcdn.com/img2/x.gif'/>
                                    </div>
                                    <div class="ui_avatar small">
                                        <img width="30" id="lazyload_-1797461925_1" class="circularAvatar" height="30" src='https://cc.ddcdn.com/img2/x.gif'/>
                                    </div>
                                    <div class="ui_avatar small">
                                        <img width="30" id="lazyload_-1797461925_2" class="circularAvatar" height="30" src='https://cc.ddcdn.com/img2/x.gif'/>
                                    </div>
                                    <div class="ui_avatar small">
                                        <img width="30" id="lazyload_-1797461925_3" class="circularAvatar" height="30" src='https://cc.ddcdn.com/img2/x.gif'/>
                                    </div>
                                </div>
                                <div class="totalContentCount">
                                    <b>41,409</b>条点评和建议 </div>
                                <h1 id="HEADING">青岛旅游</h1>
                            </div>
                            <div class="photoLinksWrapper">
                                <div class="heroPhoto u_/LocationPhotoDirectLink-g297458-i17934585-Qingdao_Shandong.html#17934585 fkASDF" onclick=" ta.trackEventOnPage('City_Photo_LB', 'Traveler', 'bigPic'); ta.call('ta.overlays.Factory.albumsLB', event, this, 297458, 297458, 2, 17934585);">
                                    <div class="heroPhotoImg hoverHighlight" style="background-size: cover; background-image: url('https://ccm.ddcdn.com/ext/photo-s/01/11/a8/f9/seaside-qingdao.jpg'); width: 650px; height: 367px" title="青岛市"></div>
                                    <div class="attribution">
                                        (sim00, 2008年5月)
                                    </div>
                                </div>
                                <div class="navLinks">
                                    <ul onclick="ta.servlet.Tourism.linkClick('Nav', '', event)">
                                        <li class="hotels twoLines">
                                            <a href="/Hotels-g297458-Qingdao_Shandong-Hotels.html" data-trk="hotels_nav"> <span class="nav_link_icon ui_icon hotels"></span>
                                                <span class="typeName">酒店</span>
                                                <span class="typeQty">(1,761)</span>
                                                <span class="contentCount">28,875条点评</span>
                                                <span class="ui_icon single-chevron-right nav_arrow"/>
                                            </a> </li>
                                        <li class="attractions twoLines">
                                            <a href="/Attractions-g297458-Activities-Qingdao_Shandong.html" data-trk="attractions_nav"> <span class="nav_link_icon ui_icon attractions"></span>
                                                <span class="typeName">景点玩乐</span> <span class="typeQty">(301)</span>
                                                <span class="contentCount">8,903条点评</span>
                                                <span class="ui_icon single-chevron-right nav_arrow"/>
                                            </a> </li>
                                        <li class="restaurants twoLines">
                                            <a href="/Restaurants-g297458-Qingdao_Shandong.html" data-trk="restaurants_nav">
                                                <span class="nav_link_icon ui_icon restaurants"></span>
                                                <span class="typeName">餐厅</span> <span class="typeQty">(1,014)</span>
                                                <span class="contentCount">2,855条点评</span>
                                                <span class="ui_icon single-chevron-right nav_arrow"/>
                                            </a> </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="resizingMargins">
                        <div id="PERSISTENT_TAB_HEADER" class="persistent_tabs_container invisible tourismRow ">
                            <div id="FLOATING_PERSISTENT_TAB_HEADER" class="persistent_tabs_header">
                                <div class="tourismRow">
                                    <ul class="tabs_pers_content ">
                                        <li class="tabs_pers_item" id="TABS_OVERVIEW" data-anchor="TABS_OVERVIEW">
                                            <span class="tabs_pers_titles">简介</span> </li>
                                        <li class="tabs_pers_item" id="TABS_HOTELS" data-anchor="TABS_HOTELS">
                                            <span class="tabs_pers_titles">住宿地点</span> </li>
                                        <li class="tabs_pers_item" id="TABS_MAP" data-anchor="TABS_MAP">
                                            <span class="tabs_pers_titles">位置</span> </li>
                                        <li class="tabs_pers_item" id="TABS_THINGS_TO_DO" data-anchor="TABS_THINGS_TO_DO">
                                            <span class="tabs_pers_titles">景点</span> </li>
                                        <li class="tabs_pers_item tabs_more hidden" id="TABS_MORE">
                                            <span class="tabs_pers_titles">更多</span> <span class="more_arrow"></span>
                                            <ul class="tabs_more_content"></ul>
                                        </li>
                                    </ul>
                                </div> </div> </div> </div>
                    <div class="resizingMargins">
                        <div class="highlightsSection tourismRow easyClear itemCount2 moreThanOneItem" data-module="highlights">
                            <div class="blurb item1">
                                <!--trkP:expanding_read_more_box-->
                                <!-- PLACEMENT expanding_read_more_box -->
                                <DIV ID="taplc_expanding_read_more_box_0" class="ppr_rup ppr_priv_expanding_read_more_box" data-placement-name="expanding_read_more_box">
                                    <div class="ermb_text">
                                        <div class="content">
                                            从小青岛到青岛村,从胶澳再到今天的青岛,历经4000年的这座海滨之城,如今已经是著名的旅游城市,形成座山靠海之势。青岛靠山,海上仙山崂山。八仙过海让崂山成为道家仙山,而后口口相传,游人不绝。崂山北九水,白沙河自山顶倾泻而下,曲折延伸,分为内九水、外九水、南九水,北九水十八潭,潮音瀑布响。青岛拥湾,胶州湾、浮山湾赋予了这座海滨城市独有的海洋文化魅力。没有椰林,但有沙滩,有帆。海鸥清鸣,朝阳铺海,栈桥笔直,错落有致的欧陆风格建筑点缀老城区八大关,圣弥厄尔教堂和圣保罗基督教堂的歌声现在还在回响。花石楼、总督府、山海关路5号建筑风格迥异,异国风情十足,配以八大关十路上决然不同的花卉,形成了别具特色的老城区景观。青岛游滩,滨海步行道连接了青岛市几乎整条海岸线,步行观海,听海风抚浪,将青岛包括水浴场、五四广场、奥帆中心在内的多个著名景点串连在一起;青岛看寺,作为道家仙山的所在地,青岛孕育了天后宫、湛山寺、海云庵、华严寺、法海亭、太清宫、石门寺、蔚竹安等香火圣地。青岛观鱼,海底世界和水族馆让你深刻的感受到城市的海洋气息;青岛访古,老舍、康有为、梁实秋、沈从文等等一批近代文人都在这里留下了自己的足迹;青岛喝酒,著名的青岛啤酒在城市孕育出了一年一度的青岛啤酒节,吃海鲜喝啤酒已经成为了青岛经典的生活方式;青岛扬帆,这里是中国最大的帆船基地,帆船之都实至名归。
                                        </div>
                                        <div class="divider" onclick="ta.plc_expanding_read_more_box_0_handlers.toggleDescription()">
                                            <span class="read_link read_more">展开全文</span> <span class="read_link read_less">收起全文</span> </div>
                                    </div>
                                </DIV>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


</body>
</html>


<%--<p>City:${cityName}</p>--%>
<%--<c:if test="${!empty weather }">--%>
    <%--<c:forEach items="${weather}" var="weather">--%>
        <%--<c:out value="${weather}"></c:out>--%>
    <%--</c:forEach>--%>
<%--</c:if>--%>
<%--<br>--%>
<%--<p>Hotel:${hotel}</p>--%>