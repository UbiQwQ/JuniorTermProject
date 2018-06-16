<%--
  Created by IntelliJ IDEA.
  User: Innovation
  Date: 2018/6/5
  Time:22:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>${travel.title} | 旅行网</title>
    <meta itemprop="image" content="https://www.leiphone.com/resWeb/images/common/metaLogo.jpg" />
    <link rel="dns-prefetch" href="https://www.leiphone.com">
    <link rel="dns-prefetch" href="https://home.leiphone.com">
    <link rel="dns-prefetch" href="https://m.leiphone.com">
    <link rel="dns-prefetch" href="https://leiphone.com">
    <meta name="baidu-site-verification" content="qBnDqyynv4" />
    <meta property="og:type" content="article" />
    <meta property="article:published_time" content="2018-06-15T18:57:08+08:00"/>
    <meta property="article:author" content="包永刚"/>
    <meta property="article:published_first" content="雷锋网, https://www.leiphone.com/news/201806/iSs3XCv10bRHrwvO.html" />
    <meta name="google-site-verification" content="4c2S0LRoSpcyGiNmASqakMSa7yVC9C8Jnu-IRNyq5oU" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=1">
    <meta property="qc:admins" content="10002525706451007656375" />
    <link rel="alternate" media="only screen and(max-width: 640px)" href="https://m.leiphone.com" />
    <meta name="keywords" content="高通收购恩智浦,中兴通讯,博通" />
    <meta name="description" content="雷锋网消息，南华早报周四援引消息人士称，中国商务部已经批准了高通(Qualcomm)以440亿美元收购恩智浦（NXP）半导体的并购交易。" />
    <meta name="sogou_site_verification" content="ilkqV8FehD"/>
    <meta name="renderer" content="webkit">
    <link rel="cannoical" href="https://www.leiphone.com/news/201806/iSs3XCv10bRHrwvO.html">
    <link rel="stylesheet"  type="text/css" href="https://www.leiphone.com/resWeb/css/common/common.css?20180504" media="all" />
    <script type="text/javascript">
        window.mobilecheck = function() {

            // var ua=window.navigator.userAgent;
            // if(ua.indexOf('iPhone')>=0||ua.indexOf('iPod')>=0||ua.indexOf('ndroid')>=0){
            //     return true;
            // }

            var check = false;
            (function(a,b){if(/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|mobile.+firefox|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows ce|xda|xiino/i.test(a)||/1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(a.substr(0,4)))check = true})(navigator.userAgent||navigator.vendor||window.opera);
            return check;
        }
        var check = mobilecheck();
        if(check && (window.location.host == 'www.leiphone.com')){
            window.location.href="//m.leiphone.com" + window.location.pathname + window.location.search;
        }else if(!check && (window.location.host == 'm.leiphone.com')){
            window.location.href="//www.leiphone.com" + window.location.pathname + window.location.search;
        }
    </script>
    <script type='text/javascript'>window.BWEUM||(BWEUM={});BWEUM.info = {"stand":true,"agentType":"browser","agent":"bi-collector.oneapm.com/static/js/bw-send-411.4.5.js","beaconUrl":"bi-collector.oneapm.com/beacon","licenseKey":"fqiyF~7R36YyFnEB","applicationID":2284957};</script><script type="text/javascript" src="//bi-collector.oneapm.com/static/js/bw-loader-411.4.5.js"></script>


    <!--[if IE]>
    <script>
        (function(){var e="abbr, article, aside, audio, canvas, datalist, details, dialog, eventsource, figure, footer, header, hgroup, mark, menu, meter, nav, output, progress, section, time, video".split(', ');var i=e.length;while(i--){document.createElement(e[i])}})()
    </script>
    <![endif]-->

    <!--<script src="/resWeb/js/libs/sea.js"></script>-->
    <script src="https://www.leiphone.com/resWeb/js/libs/jquery-sea.js"></script>
    <script src="https://www.leiphone.com/resCommon/js/yp_tipBoxes/tips.js"></script>
    <script>
        seajs.config({
            map:[
                ['.js','.js?20180515']
            ]
        });
        seajs.use('https://www.leiphone.com/resWeb/js/common/global',function(){
        });
        document.domain = "leiphone.com";
        // 英鹏账号登录回调
        function yingpengIslogin_callback(){
            seajs.use('https://www.leiphone.com/resWeb/js/common/com_login',function(user) {
                user.init();
            });
        }
    </script>

</head>
<body>
<!-- 顶栏广告位 -->
<div class="top-banner">
    <a href="https://www.leiphone.com/banner/updateClickNum/id/1348" target="_blank" title="GAIR">
        <img src="https://static.leiphone.com/uploads/new/banner/5b2096dd37765.jpg" alt="GAIR">
    </a>
    <em class="closeBanner"></em>
</div>

<div class="explorer" id="low-explorer">
    <div class="inner">
        <em class="warn ico"></em>
        <span>您正在使用IE低版浏览器，为了您的雷锋网账号安全和更好的产品体验，强烈建议使用更快更安全的浏览器</span>
        <span class="ico exp-ico1"></span>
        <span class="ico exp-ico2"></span>
        <span class="ico exp-ico3"></span>
        <span class="ico exp-ico4"></span>
        <span class="ico exp-ico5"></span>
    </div>
</div>
<!--[if lte IE 8]>
<script>
    (function(){var e=['abbr', 'article', 'aside', 'audio', 'canvas', 'datalist', 'details', 'dialog', 'eventsource', 'figure', 'footer', 'header', 'hgroup', 'mark', 'menu', 'meter', 'nav', 'output', 'progress', 'section', 'time', 'video'];for(var i = e.length; i--;) document.createElement(e[i])})()

    //低版本浏览器
    document.getElementById("low-explorer").style.display = 'block';

</script>
<![endif]-->





<link rel="stylesheet" type="text/css" href="https://www.leiphone.com/resCommon/css/artCont_web_admin.css">
<link rel="stylesheet" type="text/css" href="https://www.leiphone.com/resWeb/css/detail/main.css?20180515" media="all" />
<script type="text/javascript">
    var ARTICLE_CATEGORY = '14';
    var ADMIN_URL = 'https://yingpeng.leiphone.com/';
</script>


<!-- 评论数 -->
<a href="#lph-comment-177016" class="cmtNums" >
    <em></em>
    <p>0</p>
</a>
<div class="lph-overlay"></div>
<!-- 当载入markdown的时候加载 -->
<script type="text/javascript">
    var link = "iSs3XCv10bRHrwvO";
</script>
<!-- 文章详情页 -->
<div class="lphArticle-detail" data-article_url="https://www.leiphone.com/news/201806/iSs3XCv10bRHrwvO.html"
     data-article_id="177016" data-article_unique="iSs3XCv10bRHrwvO"
     data-article_seo_title="中国商务部或已经批准高通收购恩智浦 全球芯片史上最大并购案有多曲折？ | 雷锋网" data-article_seo_keywords="高通收购恩智浦,中兴通讯,博通"
     data-article_seo_description="雷锋网消息，南华早报周四援引消息人士称，中国商务部已经批准了高通(Qualcomm)以440亿美元收购恩智浦（NXP）半导体的并购交易。" data-comment_type="2"
     data-collect_type="2" data-author_id="24021"
     data-author_name="包永刚" data-article_cmtNum="0">
    <div class="article-template">
        <div class="article-title">
            <div class="inner">
                <h1 class="headTit">
                    ${travel.title}
                </h1>
                <div class="msg">
                    <table>
                        <tr>
                            <td class="aut">
                                本文作者：<a href="https://www.leiphone.com/author/baoyonggang749" target="_blank" rel="nofollow">${user.userName}</a>
                            </td>
                            <td class="time">
                                ${travel.postTime}
                            </td>
                        </tr>
                    </table>
                </div>

        </div>
        <div class="info">
            <div class="wrapper clr">
                <div class="article-left">
                    <div class="lph-article-comView">

                        <!-- 正文内容 -->
                        ${travel.content}

                        <!-- 正文内容结束 -->
                    </div>

                    <!-- 分享 -->
                    <div class="pageActive clr">
                        <div class="mark-like-btn ">
                            <a class="collect collect-no" href="javascript:;"><i></i><span>0</span>人收藏</a>
                        </div>
                        <!-- Baidu Button BEGIN -->
                        <div  class="bdsharebuttonbox"  data-tag="share_177016">
                            <span class="s-txt">分享：</span>
                            <a href="javascript:void()" onclick="openYNote('https://www.leiphone.com/news/201806/iSs3XCv10bRHrwvO.html','中国商务部或已经批准高通收购恩智浦 全球芯片史上最大并购案有多曲折？', 'https://static.leiphone.com/uploads/new/article/pic/201806/5b239193669d4.jpg','leiphone','中国商务部或已经批准高通收购恩智浦 全球芯片史上最大并购案有多曲折？')" class="youdao " title="收藏此篇文章到有道云笔记"><i></i></a>
                            <a class="bds_tsina weibo-btn  " data-cmd="tsina"  title="分享到新浪微博"></a>
                            <a class="weixin-btn bds_weixin" data-cmd="weixin" title="分享到微信"></a>
                            <a class="bds_more more-btn" data-cmd="more"></a>
                        </div>

                    </div>
                    <!-- 相关文章 -->
                    <!-- 相关文章 start -->
                    <div class="realted-article clr">
                        <div class="title clr">
                            <span class='fl'>相关文章</span>
                        </div>
                        <div class="related-link clr">
                            <a href="https://www.leiphone.com/tag/高通收购恩智浦" target="_blank" title="高通收购恩智浦">高通收购恩智浦</a>
                            <a href="https://www.leiphone.com/tag/中兴通讯" target="_blank" title="中兴通讯">中兴通讯</a>
                            <a href="https://www.leiphone.com/tag/博通" target="_blank" title="博通">博通</a>
                        </div>
                        <div class="list">
                            <ul>
                                <li  class="first" >
                                    <a href="https://www.leiphone.com/news/201805/k15Ahc7IdmUq8QYf.html" target="_blank" class="pic">
                                        <img src="https://static.leiphone.com/uploads/new/article/pic/201805/5b0b41ed83fa3.png?imageMogr2/thumbnail/210x140!/quality/90" alt=""  width="170" height="100" />
                                    </a>
                                    <div class="txt">
                                        <a href="https://www.leiphone.com/news/201805/k15Ahc7IdmUq8QYf.html" target="_blank">小米回应称陆奇将加盟小米是谣言；外媒称中国将有条 ...</a>
                                    </div>
                                </li>
                                <li >
                                    <a href="https://www.leiphone.com/news/201802/ROMf8tYs4DN0ryn3.html" target="_blank" class="pic">
                                        <img src="https://static.leiphone.com/uploads/new/article/pic/201802/5a8d368c7409d.jpg?imageMogr2/thumbnail/210x140!/quality/90" alt=""  width="170" height="100" />
                                    </a>
                                    <div class="txt">
                                        <a href="https://www.leiphone.com/news/201802/ROMf8tYs4DN0ryn3.html" target="_blank">高通新大招：多花60亿美元收购NXP，这下轮到博通头疼 ...</a>
                                    </div>
                                </li>
                                <li >
                                    <a href="https://www.leiphone.com/news/201711/FWXYITJDXBb3BZ9x.html" target="_blank" class="pic">
                                        <img src="https://static.leiphone.com/uploads/new/article/pic/201711/5a12320812a87.jpg?imageMogr2/thumbnail/210x140!/quality/90" alt=""  width="170" height="100" />
                                    </a>
                                    <div class="txt">
                                        <a href="https://www.leiphone.com/news/201711/FWXYITJDXBb3BZ9x.html" target="_blank">高通收购恩智浦半导体年内有望获得日本欧盟批准</a>
                                    </div>
                                </li>
                                <li >
                                    <a href="https://www.leiphone.com/news/201703/GoEtu1cS4GvwY7Rr.html" target="_blank" class="pic">
                                        <img src="https://static.leiphone.com/uploads/new/article/pic/201703/58c7574cae71a.jpg?imageMogr2/thumbnail/210x140!/quality/90" alt=""  width="170" height="100" />
                                    </a>
                                    <div class="txt">
                                        <a href="https://www.leiphone.com/news/201703/GoEtu1cS4GvwY7Rr.html" target="_blank">解析 | 英特尔为何要高调收购辅助驾驶明星企业Mobil ...</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <!-- 相关文章 end -->


                    <!-- 推荐文章 -->
                    <div class="realted-article clr recmdArticle" data-article_id="177016">
                        <div class="list">
                            <ul>
                            </ul>
                        </div>
                    </div>
                    <!-- 广告 -->

                    <!-- 文章 评论  -->
                    <!-- 评论 -->
                    <div class="article-comment lp-comment" id="lph-comment-177016">
                        <div class="useComJs" >
                            <!-- <input id="lp_item_id" type="hidden" name="item_id" value="177016">
                            <input id="lp_item_type" type="hidden" name="type" value="2"> -->

                            <div class="h2 clr">
                                <h2>文章点评：</h2>
                                <!-- <strong class="h2-tip">
                                    （您需要<a class="c-log" href="javascript:openPop('#lp-login-pop');">登录</a>后才能评论 <a href="https://home.leiphone.com/main/register" class="c-reg">没有账号</a> ？）</strong>
                                -->
                            </div>
                            <div class="submit clr commentForm" id="">
                                <div class="text">
                                    <textarea name="Comment[content]" placeholder="我有话要说……" ></textarea>
                                </div>
                                <div class="sub clr publishtosina">
                                    <span class="emotionc emotion0" data-emotion="0">表情</span>
                                    <label><input id="" type="checkbox" name="pushForWeibo"> 同步到新浪微博</label>
                                    <div class="qqFace" style="position:absolute; display:none; z-index:10"></div>
                                    <button type="submit" title="提交">提交</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 评论 -->



                </div>

                <script>
                    var codeAuthor_id   = "baoyonggang749";
                    var author_id       = "24021";
                </script>
                <div class="article-right">
                    <div class="aboutAur-main">

                        <!-- 作者的文章 -->

                        <div class="mouthHot-article">
                            <div class="title">当月热门文章</div>
                            <div class="list">
                                <ul>
                                    <li>
                                        <a href="https://www.leiphone.com/news/201806/Y0YeZrSGN4nSBoiH.html" title="为Windows10打造的骁龙850发布，Arm芯片能撼动英特尔的霸主地位？" target="_blank">为Windows10打造的骁龙850发布，Arm芯片能撼动英特尔的霸主地位？</a>
                                    </li>
                                    <li>
                                        <a href="https://www.leiphone.com/news/201805/boRrKZeKVUWgG5BR.html" title="一窥ARM的AI处理器" target="_blank">一窥ARM的AI处理器</a>
                                    </li>
                                    <li>
                                        <a href="https://www.leiphone.com/news/201805/p8ax4HgfuabrUFC3.html" title="格力董明珠：哪怕投资500亿也要成功自研芯片" target="_blank">格力董明珠：哪怕投资500亿也要成功自研芯片</a>
                                    </li>
                                    <li>
                                        <a href="https://www.leiphone.com/news/201805/eB72wsItk6KIJrTO.html" title="天猫精灵3款新品齐亮相，AI技术升级能让智能音箱普及？" target="_blank">天猫精灵3款新品齐亮相，AI技术升级能让智能音箱普及？</a>
                                    </li>
                                    <li>
                                        <a href="https://www.leiphone.com/news/201806/ZC8KaiY44kOu4Rnx.html" title="5G首个可商用标准正式公布！华为、联想、中兴都希望5G商业化加速实现" target="_blank">5G首个可商用标准正式公布！华为、联想、中兴都希望5G商业化加速实现</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- 作者文章结束 -->
                    </div>

                    <div class="weekly-choice hotNew-article">
                        <div class="rComTitle">
                            最新文章
                        </div>
                        <div class="list">
                            <ul class="justTxt">
                                <li>
                                    <a href="https://www.leiphone.com/news/201806/rJ61vkEjPHeTItMK.html" target="_blank">
                                        <em></em>世界杯揭幕战咪咕视频卡顿遭用户吐槽  华为云缘何背锅？ </a>
                                </li>
                                <li>
                                    <a href="https://www.leiphone.com/news/201806/S4koKqhCbHHagpXU.html" target="_blank">
                                        <em></em>vivo出席2018腾讯电竞峰会 优化电竞游戏体验 </a>
                                </li>
                                <li>
                                    <a href="https://www.leiphone.com/news/201806/AQ5XwtgsI5VQUuER.html" target="_blank">
                                        <em></em>国家队纷纷入局云计算   这给BAT们释放了什么信号？ </a>
                                </li>
                                <li>
                                    <a href="https://www.leiphone.com/news/201806/n8gvDaifWPQkzwLx.html" target="_blank">
                                        <em></em>极致性能、安全可靠 阿里云推出首个企业级块存储产品Apsara Block Storage  </a>
                                </li>
                                <li>
                                    <a href="https://www.leiphone.com/news/201806/posiVuKJEQi74DrR.html" target="_blank">
                                        <em></em>Windows 10 不再重要了？微软：呵呵 </a>
                                </li>
                                <li>
                                    <a href="https://www.leiphone.com/news/201806/Du10JxOxuJ6Ou782.html" target="_blank">
                                        <em></em>史上最大规模世界杯直播  阿里云承包了全网70%的流量 </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="serKesy-list">
                        <div class="rComTitle">
                            热门搜索
                        </div>
                        <div class="list clr">
                            <a href="https://www.leiphone.com/tag/区块链" target="_blank">区块链</a>
                            <a href="https://www.leiphone.com/tag/智能硬件" target="_blank">智能硬件</a>
                            <a href="https://www.leiphone.com/tag/乔布斯" target="_blank">乔布斯</a>
                            <a href="https://www.leiphone.com/tag/富士康" target="_blank">富士康</a>
                            <a href="https://www.leiphone.com/tag/福特" target="_blank">福特</a>
                            <a href="https://www.leiphone.com/tag/自动驾驶汽车" target="_blank">自动驾驶汽车</a>
                            <a href="https://www.leiphone.com/tag/产品" target="_blank">产品</a>
                            <a href="https://www.leiphone.com/tag/傅盛" target="_blank">傅盛</a>
                            <a href="https://www.leiphone.com/tag/Disrupt大会" target="_blank">Disrupt大会</a>
                            <a href="https://www.leiphone.com/tag/Mozilla" target="_blank">Mozilla</a>
                            <a href="https://www.leiphone.com/tag/中移动" target="_blank">中移动</a>
                        </div>
                    </div>
                </div>
            </div>


            </div>
        </div>
    </div>
    <div class="lineBg"></div>
    <!-- 百度分享 -->
    <script>

        window._bd_share_config = {
            common:{
                bdMiniList:['tsina','weixin','more']
            },
            share : [
                {
                    bdText : '中国商务部或已经批准高通收购恩智浦 全球芯片史上最大并购案有多曲折？',
                    bdDesc : '中国商务部或已经批准高通收购恩智浦 全球芯片史上最大并购案有多曲折？',
                    bdUrl : 'https://www.leiphone.com/news/201806/iSs3XCv10bRHrwvO.html',
                    bdPic : 'https://static.leiphone.com/uploads/new/article/pic/201806/5b239193669d4.jpg',
                    "tag" : "share_177016",
                    "bdSize" : 24
                },
            ],
        }
        with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='https://www.leiphone.com/static/api/js/share.js?cdnversion='+~(-new Date()/36e5)];

    </script>
</div>



<script>
    function openYNote(url, title, pic, vendor, summary) {
        var target = 'http://note.youdao.com/memory/?url=' + encodeURIComponent(url) +
            '&title=' + encodeURIComponent(title) + '&pic=' + encodeURIComponent(pic) +
            '&product=' + encodeURIComponent('网页收藏') +
            '&summary=' + encodeURIComponent(summary) + '&vendor=' + encodeURIComponent(vendor);
        window.open(target);
    }
    seajs.use(['https://www.leiphone.com/resWeb/js/article' , 'https://www.leiphone.com/resWeb/js/load_articles']);



    // document.getElementById('weixin-qt').insertBefore(qcode.create(),document.getElementById('weixin-qt-msg'));
</script>


<div id="lph-footer-gotoBar">
    <div class="gotoTop">
        <a href="javascript:;" class="top" data-goto="0" data-start="100"><em></em></a>
    </div>
</div>

<!-- 遮罩层 -->
<div class="lph-overlay"></div>
<!-- 右上角持续提示，邮箱未绑定的时候输出 -->
<div class="yzEmail_tip yzEmail_tip1" id="bandEmailTip">
    <em></em>
    <span>为了您的账户安全，请<a class="bbtn" href="javascript:;">验证邮箱</a></span>
    <i class="close"></i>
</div>

<!-- 右上角持续提示，邮箱发送但未验证的时候输出 -->
<div class="yzEmail_tip yzEmail_tip2" id="sendEmailTip">
    <span style="text-align: center;">您的邮箱还未验证,完成可获20积分哟！</span>
    <p class="links"><a class="rbtn" href="javascript:;">重发邮箱</a><a class="sbtn" href="javascript:;">修改邮箱</a></p>
    <i class="close"></i>
</div>

<!-- 记cookie弹窗，邮箱未绑定的时候弹出 -->
<div class="yzEmail_box yzEmail_box1 lph-pops" id="sendEmailBox">
    <div class="head">请验证您的邮箱</div>
    <div class="box">
        <span class="tipp"><!-- *邮箱 --></span>
        <input class="inp" id="sendEmail_input" placeholder="输入您的邮箱" value="" >
        <!-- <strong>验证邮件已发送，请您查收</strong> -->
        <a class="btn" href="javascript:;" target="_blank" id="sendEmail_btn"><i></i><em>立即验证</em></a>
        <div class="error"></div>
    </div>
    <!-- <div class="boxOk">
        <strong>验证邮件已发送，请您查收</strong>
    </div> -->
    <i class="close"></i>
</div>

<!-- 记cookie弹窗，已发送邮件但未验证 -->
<div class="yzEmail_box yzEmail_box2 lph-pops" id="setPwBox">
    <div class="head">完善账号信息</div>
    <div class="top">
        <span>您的账号已经绑定，现在您可以<a href="javascript:;">设置密码</a>以方便用邮箱登录</span>
    </div>
    <div class="btm">
        <input class="inp" type="password" id="" placeholder="输入您的密码" value="" >
        <a class="btn" href="javascript:;" target="_blank" id=""><i></i><em>立即设置</em></a>
        <a class="clo" href="javascript:;">以后再说</a>
        <div class="error"></div>
    </div>
    <i class="close"></i>
</div>


<script>
    // 四站登录
    with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src=BASE_URL+'/resWeb/home/js/login/yp_login.js?cdnversion='+~(-new Date()/36e5)];
</script>
<!-- 优路跟踪代码 -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
        new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
    j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
    'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-5HDG4H');
</script>
<script>
    (function(){
        var bp = document.createElement('script');
        var curProtocol = window.location.protocol.split(':')[0];
        if (curProtocol === 'https'){
            bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
        }
        else{
            bp.src = 'https://push.zhanzhang.baidu.com/push.js';
        }
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(bp, s);

    })();
</script>
</body>
</html>