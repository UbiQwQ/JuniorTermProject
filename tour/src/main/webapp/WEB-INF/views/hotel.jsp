<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Innovation
  Date: 2018/6/16
  Time: 20:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>酒店 | 驴行网</title>
    <meta itemprop="image" content="https://www.leiphone.com/resWeb/images/common/metaLogo.jpg" />
    <link rel="dns-prefetch" href="https://www.leiphone.com">
    <link rel="dns-prefetch" href="https://home.leiphone.com">
    <link rel="dns-prefetch" href="https://m.leiphone.com">
    <link rel="dns-prefetch" href="https://leiphone.com">
    <meta name="baidu-site-verification" content="qBnDqyynv4" />
    <meta name="google-site-verification" content="4c2S0LRoSpcyGiNmASqakMSa7yVC9C8Jnu-IRNyq5oU" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=1">
    <meta property="qc:admins" content="10002525706451007656375" />
    <link rel="alternate" media="only screen and(max-width: 640px)" href="https://m.leiphone.com" />
    <link rel="cannoical" href="https://www.leiphone.com/category/ai">
    <meta name="keywords" content="人工智能，人工智能技术，人工智能技术应用，人工智能最新进展，人工智能技术前景，人工智能的原理" />
    <meta name="description" content="雷锋网人工智能频道专注于人工智能最新的资讯,为用户、产业和厂商提供丰富的人工智能技术应用，人工智能最新进展，人工智能技术前景，人工智能算法解析等，致力于打造专业的人工智能技术服务。" />
    <meta name="sogou_site_verification" content="ilkqV8FehD"/>
    <meta name="renderer" content="webkit">
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

<link rel="stylesheet" type="text/css" href="https://www.leiphone.com/resWeb/css/list/list.css?v=20180503" media="all" />

<div class="lph-main clr">
    <div class="wrapper">
        <div class="lph-left list-left">
            <!-- 模块一 -->
            <div class="lph-picShow list-picShow clr">
                <div class="lph-slider list-slider">
                    <a href="javascript:;" class="arrow prev"><em></em></a>
                    <a href="javascript:;" class="arrow next"><em></em></a>
                    <ul>
                        <li>
                            <div class="pic">
                                <a href="/banner/homepageUrl/id/2075" target="_blank">
                                    <img src="https://static.leiphone.com/uploads/new/homepagerecommend/pic/201712/5a40a9c072b50.png?imageMogr2/thumbnail/!510x322r/gravity/Center/crop/510x322/quality/90" alt="" />
                                </a>
                            </div>
                            <div class="txt">
                                <a href="/banner/homepageUrl/id/2075">丘成桐得意门生顾险峰：机器学习解决不了的医学图像问题，如何用几何方法来攻克？	</a>
                            </div>
                            <div class="shadow"></div>
                        </li>
                        <li>
                            <div class="pic">
                                <a href="/banner/homepageUrl/id/1639" target="_blank">
                                    <img src="https://static.leiphone.com/uploads/new/homepagerecommend/pic/201712/5a40a9504a1eb.png?imageMogr2/thumbnail/!510x322r/gravity/Center/crop/510x322/quality/90" alt="" />
                                </a>
                            </div>
                            <div class="txt">
                                <a href="/banner/homepageUrl/id/1639">谷歌AI中国中心负责人李佳：改善人类生活需要 AI，而 AI 需要「四步走」</a>
                            </div>
                            <div class="shadow"></div>
                        </li>
                        <li>
                            <div class="pic">
                                <a href="/banner/homepageUrl/id/1642" target="_blank">
                                    <img src="https://static.leiphone.com/uploads/new/homepagerecommend/pic/201712/5a40a91c901fd.png?imageMogr2/thumbnail/!510x322r/gravity/Center/crop/510x322/quality/90" alt="" />
                                </a>
                            </div>
                            <div class="txt">
                                <a href="/banner/homepageUrl/id/1642">被吴恩达的Landing.ai刷屏后，我们从他的8条Twitter和9大招聘岗位中看到了三个有趣细节</a>
                            </div>
                            <div class="shadow"></div>
                        </li>
                    </ul>
                    <div class="btns">
                        <a href="javascript:;" class="cur"></a>
                        <a href="javascript:;" ></a>
                        <a href="javascript:;" ></a>
                    </div>
                </div>
                <div class="list-topPush">
                    <ul>
                        <li  class="first">
                            <a href="/banner/homepageUrl/id/2765" target="_blank" title="">
                                <img src="https://static.leiphone.com/uploads/new/homepagerecommend/pic/201803/5aba07091ea42.jpg?imageMogr2/thumbnail/!520x312r/gravity/Center/crop/520x312/quality/90" width="260" height="156" >
                            </a>
                            <div class="shadow"></div>
                            <a href="/banner/homepageUrl/id/2765" target="_blank" class="pop">
                                <table>
                                    <tbody>
                                    <tr>
                                        <td>新智驾会员计划：全年100期"深思考"，带你深入浅出读懂自动驾驶</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </a>
                        </li>
                        <li >
                            <a href="/banner/homepageUrl/id/2077" target="_blank" title="">
                                <img src="https://static.leiphone.com/uploads/new/homepagerecommend/pic/201712/5a40a85ea5bb1.png?imageMogr2/thumbnail/!520x312r/gravity/Center/crop/520x312/quality/90" width="260" height="156" >
                            </a>
                            <div class="shadow"></div>
                            <a href="/banner/homepageUrl/id/2077" target="_blank" class="pop">
                                <table>
                                    <tbody>
                                    <tr>
                                        <td>专访MSRA副院长周明：中国NLP如何跻身世界顶尖水平？	</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>


            <!-- 酒店 -->
            <div class="lph-pageList list-pageList">
                <H1 class="title">酒店</H1>
                <div class="list">
                    <ul class="clr">

                        <c:forEach items="${hotels}" var="hotel">
                            <li>
                                <div class="box">
                                    <div class="img">
                                        <a href="https://www.leiphone.com/category/ai" date-category="132" class='sort rgzn'>酒店</a>
                                        <a href="https://www.leiphone.com/news/201806/UWOi5uIPcwuMZmTi.html"  target="_blank">
                                            <img class='lazy' data-original="https://static.leiphone.com/uploads/new/article/pic/201806/5b24ce3a59f97.jpg?imageMogr2/thumbnail/!480x290r/gravity/Center/crop/480x290/quality/90" title="ASSIA | 中国自动化学会「深度与宽度强化学习」智能自动化学科前沿讲习班（二）" alt="" />
                                        </a>
                                    </div>
                                    <div class="word">
                                        <h3>
                                            <a href="/lookTravel?travelId=${travle.travelsId}" target="_blank" title="ASSIA | 中国自动化学会「深度与宽度强化学习」智能自动化学科前沿讲习班（二）" class="headTit">
                                                    ${hotel.name}
                                            </a>
                                        </h3>
                                        <div class="des">
                                            ${hotel.description}
                                        </div>
                                        <div class="msg clr">
                                            <a href="https://www.leiphone.com/author/liufukang383" target="_blank" class="aut" rel="nofollow">
                                                <span style="font-size: 18px;">price:</span>
                                            </a>
                                            <div class="time" style="color: #ff7315;font-size: 18px;">￥${hotel.price}/晚</div>
                                            <div class="tags">
                                                <button style="height:40px;width:120px;background:#ff7315; color:#f2f2f2;font-size:15px;border-radius: 10px;border: none;">预定此酒店</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </c:forEach>



                    </ul>
                    <div class="lph-page"><div class="pages"><a href="${pageContext.request.contextPath}/travels?page=1">1</a><a href="${pageContext.request.contextPath}/travels?page=2">2</a><a href="${pageContext.request.contextPath}/travels?page=3">3</a><a href="${pageContext.request.contextPath}/travels?page=4">4</a><a href="${pageContext.request.contextPath}/travels?page=5">5</a><span>...</span><a href="https://www.leiphone.com/category/ai/page/191">${allPage}</a></div></div></div>
            </div>
        </div>
        <div class="lph-right">
            <div class="right-item-sw">
                <a href="javascript:void(0)" target="_blank">
                    <img src="https://static.leiphone.com/uploads/new/banner/583e79a35349c.jpg" alt='' width="312" height="322" />
                </a>
            </div>



            <!-- start -->
            <div class="ycLesson-item">
                <div class="title">最新硬创公开课预告</div>
                <div class="main">
                    <div class="slider">
                        <ul>
                            <li>
                                <a href="http://www.leiphone.com/news/201704/aglsw3o4E05NCckh.html?type=preview" target="_blank">
                                    <div class="pic">
                                        <img src="https://static.leiphone.com/uploads/new/specialImages/pic/201704/58f9af0eefdbd.jpg"/>
                                    </div>
                                    <div class="name">硬创公开课 AR/VR 领域往期实录</div>
                                </a>
                            </li>
                            <li>
                                <a href="http://www.leiphone.com/news/201703/TamDONTdXy2tyd4w.html?type=preview" target="_blank">
                                    <div class="pic">
                                        <img src="https://static.leiphone.com/uploads/new/specialImages/pic/201704/58f9aee2d3bb2.jpg"/>
                                    </div>
                                    <div class="name">硬创公开课人工智能领域往期实录</div>
                                </a>
                            </li>
                            <li>
                                <a href="http://www.leiphone.com/news/201703/lDZpxd1XYBXfhy5A.html" target="_blank">
                                    <div class="pic">
                                        <img src="https://static.leiphone.com/uploads/new/specialImages/pic/201704/58f9ae7735b29.jpg"/>
                                    </div>
                                    <div class="name">硬创公开课智能驾驶领域往期实录</div>
                                </a>
                            </li>
                        </ul>
                        <div class="btns">
                            <a href="javascript:;" class=""></a>
                            <a href="javascript:;" class="cur"></a>
                            <a href="javascript:;" class="cur"></a>
                        </div>
                    </div>
                    <div class="past-ycLesson">
                        <div class="tit">往期公开课</div>
                        <div class="list">
                            <p>
                                <a href="https://www.leiphone.com/news/201706/c42jk1Tcheq4MYlm.html" target="_blank" title="微软人工智能公开课概览 | 硬创公开课">
                                    微软人工智能公开课概览 | 硬创公开课                        </a>
                            </p>
                            <p>
                                <a href="https://www.leiphone.com/news/201706/ZOiMDY7KoL0MVcEu.html" target="_blank" title="Video++张奕：人工智能在消费级视频场景中的应用丨硬创公开课（附PPT）">
                                    Video++张奕：人工智能在消费级视频场景中的应用丨硬创公开课（附PPT）                        </a>
                            </p>
                            <p>
                                <a href="https://www.leiphone.com/news/201705/q9GfISIqTuJaYHev.html" target="_blank" title="清华大学博士生涂锋斌：设计神经网络硬件架构时，我们在思考些什么？（下） | 硬创公开课总结	">
                                    清华大学博士生涂锋斌：设计神经网络硬件架构时，我们在思考些什么？（下） | 硬创公开课总结	                        </a>
                            </p>
                            <p>
                                <a href="https://www.leiphone.com/news/201705/8sB0WHz6D70J7NAy.html" target="_blank" title="清华大学博士生涂锋斌：设计神经网络硬件架构时，我们在思考些什么？（上） | 硬创公开课总结	">
                                    清华大学博士生涂锋斌：设计神经网络硬件架构时，我们在思考些什么？（上） | 硬创公开课总结	                        </a>
                            </p>
                            <p>
                                <a href="https://www.leiphone.com/news/201705/eE3cOaHMpW6xyrHu.html" target="_blank" title="微软亚洲研究院秦涛：对偶学习的对称之美 | 硬创公开课总结">
                                    微软亚洲研究院秦涛：对偶学习的对称之美 | 硬创公开课总结                        </a>
                            </p>
                        </div>
                        <div class="more">
                            <a href="https://www.leiphone.com/special/ycopen?category=ai" target="_blank">更多</a>
                        </div>
                    </div>
                </div>
            </div>
            <!--end -->

            <!--每周精选 -->
            <!-- 每周精选 -->
            <div class="weekly-choice">
                <div class="rComTitle">
                    每周精选
                </div>
                <div class="list">
                    <ul class='picTxt'>
                        <li>
                            <div class="pic">
                                <a href="https://www.leiphone.com/news/201806/5pbEkls0rQhVxWD5.html" target="_blank">
                                    <img src="https://static.leiphone.com/uploads/new/article/pic/201806/5b1fd5f3de3b5.jpg?imageMogr2/thumbnail/!520x300r/gravity/Center/crop/520x300/quality/90" width="260"  height="154" /></a>
                            </div>
                            <div class="txt">
                                <a href="https://www.leiphone.com/news/201806/5pbEkls0rQhVxWD5.html"  target="_blank">
                                    阿希链应用开发Meetup：来一场区块链DApp开发者的聚会                    </a>
                            </div>
                        </li>
                        <li>
                            <div class="pic">
                                <a href="https://www.leiphone.com/news/201806/rBGrN8P3lqK1ubVn.html" target="_blank">
                                    <img src="https://static.leiphone.com/uploads/new/article/pic/201806/5b188afb7923f.jpg?imageMogr2/thumbnail/!520x300r/gravity/Center/crop/520x300/quality/90" width="260"  height="154" /></a>
                            </div>
                            <div class="txt">
                                <a href="https://www.leiphone.com/news/201806/rBGrN8P3lqK1ubVn.html"  target="_blank">
                                    阿希之夏：全球区块链创客马拉松团队招募启动                    </a>
                            </div>
                        </li>
                    </ul>
                    <ul class='justTxt'>
                        <li>
                            <a href="https://www.leiphone.com/news/201806/TmLhyjGUI1fcwx6Z.html" target="_blank">
                                <em></em>浅析Arm全新Mali G76 GPU：全方位进化，但仍不足与高通苹果匹敌                </a>
                        </li>
                        <li>
                            <a href="https://www.leiphone.com/news/201806/t2CTHcSzgisSPOVJ.html" target="_blank">
                                <em></em>浅析ARM全新Cortex A76架构：2.4GHz便可干掉骁龙845                </a>
                        </li>
                        <li>
                            <a href="https://www.leiphone.com/news/201806/kl7kOOluYiMBwqO8.html" target="_blank">
                                <em></em>专访天壤智能创始团队：深度强化学习如何落地围棋、营销等多个领域                </a>
                        </li>
                        <li>
                            <a href="https://www.leiphone.com/news/201805/kjGrD2K53AYIZKac.html" target="_blank">
                                <em></em>刚刚！雷军用 7 款新品成就小米发布会的巅峰之作                </a>
                        </li>
                        <li>
                            <a href="https://www.leiphone.com/news/201805/GiH130n6ij3WYEwK.html" target="_blank">
                                <em></em>富人发正品，穷人发A货，大数据售假是个什么鬼？                </a>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- 每周精选 end -->

            <div class="weekly-choice hotNew-article">
                <div class="rComTitle">
                    热门文章
                </div>
                <div class="list">
                    <ul class="justTxt">
                        <li>
                            <a href="https://www.leiphone.com/news/201805/Rw7DatbrhjyjfTgK.html" target="_blank">
                                <em></em>中美贸易战殃及池鱼，部分 AI 留学生将只能获得一年期美签！ </a>
                        </li>
                        <li>
                            <a href="https://www.leiphone.com/news/201805/mH2EofobIBHtGaOY.html" target="_blank">
                                <em></em>ICRA 2018奖项全公布，香港大学团队获最佳会议论文 </a>
                        </li>
                        <li>
                            <a href="https://www.leiphone.com/news/201806/5EMM10HXETNy5Gxz.html" target="_blank">
                                <em></em>夺冠Google AI地标识别大赛，极链科技Video++将受邀出席2018CVPR </a>
                        </li>
                        <li>
                            <a href="https://www.leiphone.com/news/201805/PYpNLnYwsKEc6XcV.html" target="_blank">
                                <em></em>放弃深度学习？我承认是因为线性代数 </a>
                        </li>
                        <li>
                            <a href="https://www.leiphone.com/news/201805/0UtBTaxsxpOqEU3h.html" target="_blank">
                                <em></em>百度四篇论文被 ACL 2018 录用，阅读理解新进展一览 | ACL 2018 </a>
                        </li>
                        <li>
                            <a href="https://www.leiphone.com/news/201805/vQZ8YhgE7laC7cub.html" target="_blank">
                                <em></em>清华-得意团队获音频情感识别竞赛冠军 </a>
                        </li>
                        <li>
                            <a href="https://www.leiphone.com/news/201805/KCEviCYROvYdcZC2.html" target="_blank">
                                <em></em>抠图不再麻烦，Adobe 新算法让 P 图以假乱真 </a>
                        </li>
                        <li>
                            <a href="https://www.leiphone.com/news/201805/axNOSYRX5gpPWkNq.html" target="_blank">
                                <em></em>哈工大刘挺：哈工大 SCIR 实验室的 NLP 研究 | CCF-GAIR </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="serKesy-list">
                <div class="rComTitle">
                    热门搜索
                </div>
                <div class="list clr">
                    <a href="https://www.leiphone.com/tag/运营商" target="_blank">运营商</a>
                    <a href="https://www.leiphone.com/tag/智能电视" target="_blank">智能电视</a>
                    <a href="https://www.leiphone.com/tag/5G" target="_blank">5G</a>
                    <a href="https://www.leiphone.com/tag/iPhone 5" target="_blank">iPhone 5</a>
                    <a href="https://www.leiphone.com/tag/Apple TV" target="_blank">Apple TV</a>
                    <a href="https://www.leiphone.com/tag/贾跃亭" target="_blank">贾跃亭</a>
                    <a href="https://www.leiphone.com/tag/ADAS" target="_blank">ADAS</a>
                    <a href="https://www.leiphone.com/tag/Adobe" target="_blank">Adobe</a>
                    <a href="https://www.leiphone.com/tag/苹果公司" target="_blank">苹果公司</a>
                    <a href="https://www.leiphone.com/tag/联通" target="_blank">联通</a>
                    <a href="https://www.leiphone.com/tag/OBD" target="_blank">OBD</a>
                </div>
            </div>
        </div>
        <!-- lph-right -->
    </div>
</div>

<script>
    var liW=510;
    seajs.use([
        'https://www.leiphone.com/resWeb/js/list/list',
        'https://www.leiphone.com/resWeb/js/common/com_banner'
    ]);
</script>
<!-- js END -->


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

<!-- 申请专栏作者 -->
<form id="applyAutor" onsubmit="return false">
    <div class="applyAutor-pop">
        <i class="close"></i>
        <div class="title">请填写申请人资料</div>
        <div class="main">
            <div class="rows clr">
                <span class="name">姓名</span>
                <input type="text" id="name" name="MemberAuthorType[name]" value="">
                <span class="error"></span>
            </div>
            <div class="rows clr">
                <span class="name">电话</span>
                <input type="text" id="phone" name="MemberAuthorType[phone]" value="">
                <span class="error"></span>
            </div>
            <div class="rows clr">
                <span class="name">邮箱</span>
                <input type="text" id="eml" name="MemberAuthorType[email]" value="">
                <span class="error"></span>
            </div>
            <div class="rows clr">
                <span class="name">微信号</span>
                <input type="text" id="weixin" name="MemberAuthorType[wechat]" value="">
                <span class="error"></span>
            </div>
            <div class="rows clr">
                <span class="name">作品链接</span>
                <input type="text" id="job" name="MemberAuthorType[link]" value="">
            </div>
            <div class="rows clr">
                <span class="name">个人简介</span>
                <textarea id="description" name="MemberAuthorType[description]"></textarea>
            </div>
            <div class="rows clr rows-last">
                <input type="submit" value="提 交" id="subBtn">
                <input type="button" value="取 消" id="clsBtn">
            </div>
        </div>
    </div>
</form>
<!--<!-- 公告 -->
<!--<div class="server-mask"></div>-->
<!--<div class="server-pop">-->
<!--    <em id='serCls'></em>-->
<!--    <div class="tit">关于网站服务器维护的公告</div>-->
<!--    <div class="main">-->
<!--        <p>尊敬的雷锋网用户：</p>-->
<!--        <p>&nbsp;&nbsp;&nbsp;&nbsp;由于网站服务器维护升级，雷锋网将在7月14日22:00-24:00 暂时关闭网站。由此给您带来的不便，我们深表歉意。特此公告!</p>-->
<!--        <p class="txtR mt10">雷锋网</p>-->
<!--        <p class="txtR">2017年7月13日</p>-->
<!--    </div>-->
<!--</div>-->

<script>
    // 四站登录
    with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src=BASE_URL+'/resWeb/home/js/login/yp_login.js?cdnversion='+~(-new Date()/36e5)];
</script>
<!-- 优路跟踪代码 -->
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

