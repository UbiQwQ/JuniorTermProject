<%--
  Created by IntelliJ IDEA.
  User: Innovation
  Date: 2018/6/16
  Time: 22:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>添加文字 - 写游记</title>


    <script type="text/javascript">
        window.Env = {"WWW_HOST":"www.mafengwo.cn","IMG_HOST":"images.mafengwo.net","P_HOST":"passport.mafengwo.cn","P_HTTP":"https:\/\/passport.mafengwo.cn","PAGELET_HTTP":"http:\/\/pagelet.mafengwo.cn","JS_HOST":"js.mafengwo.net","UID":44491707,"CSTK":"2e2e9acc58ceb613202ed54cb0e9ba35_94c43029b2a300fb6d3013dd89cb518e","GOOGLE_MAP_KEY":"AIzaSyD-Su0x_rPy1xehlMBcMyTqWkU49Bk53nQ","TONGJI_HOST":"tongji.mafengwo.cn","note":{"ctime":0},"is_tag":0,"id":333371879,"showToolbarDownArrow":true,"poiData":[],"contentData":[{"type":"txt","content":"\u90a3\u662f\u771f\u7684\u725b\u76ae","seq":333379864}],"isConvert":0,"isPoiRelated":false,"hasParagraph":false,"isPublished":0,"isDraftSaved":1,"coverSetted":0,"isGoodNote":0,"watermarkSetting":{"open":0,"style":1,"position":10}};
    </script>

    <link href="http://css.mafengwo.net/css/cv/css+base:css+jquery.suggest:css+plugins:css+plugins+jquery.jgrowl:css+other+popup:css+mfw-header.2015^YlVS^1527308432.css" rel="stylesheet" type="text/css"/>



    <link href="http://css.mafengwo.net/css/cv/css+jquery-ui-1.9.1.custom.min:css+clip:css+new_notes+publish:css+new_notes+edit_jsrel^a1M^1529042207.css" rel="stylesheet" type="text/css"/>


    <script language="javascript" src="http://js.mafengwo.net/js/cv/js+jquery-1.8.1.min:js+global+json2:js+M+Module:js+M+M:js+M+Log:js+m.statistics:js+advert+inspector^alw^1527559450.js" type="text/javascript" crossorigin="anonymous"></script>

</head>
<body>



<form action="/postTravel" enctype="multipart/form-data" method="post">
<div data-pagelet id="topic" class="" >
    <div class="set_index" id="_j_cover_box">
        <%--<div class="set_bg _j_toppiccnt">--%>
        <%--</div>--%>
        <%--<div class="fully_loading">--%>
            <%--<p vtip="头图加载中...">头图加载中...</p>--%>
            <%--<img src="http://images.mafengwo.net/images/post/new_notes/fully_loading_v2.gif" alt="loading">--%>
        <%--</div>--%>
        <div class="set_page">
            <%--<a role="button" class="set_add  _j_uploaderattop _j_upload_toppic" id="_j_upload_toppic"></a>--%>
            <input type='file' class="set_add  _j_uploaderattop _j_upload_toppic" id="_j_upload_toppic" name="image" />
            <h2>设置游记头图</h2>
            <p>图片建议选择尺寸大于1680px的高清大图，如相机原图</p>
            <div class="clear"></div>
        </div>
        <div class="set_title ">
            <input type="text" id="_j_title"  placeholder="填写游记标题" maxlength="48" name="title" />
            <span>可输入<strong>48</strong>字</span>
            <div class="clear"></div>
        </div>
        <%--<div class="set_btn" id="_j_cover_do">--%>
            <%--<a role="button" title="设置头图" class="a_set _j_addtoppiclabel"><i></i><span>设置头图</span></a>--%>
            <%--<ul>--%>
                <%--<li id="_j_change_cover_cnt"><a role="button" title="更换头图" class="a_change _j_upload_toppic" id="_j_change_toppic"><i></i><span>重新上传头图</span></a></li>--%>
                <%--<li><a role="button" title="重新编辑头图" class="a_change _j_reposition_cover" data-fileid="" data-url="" data-size="[]"><i></i><span>重新编辑头图</span></a></li>--%>
                <%--<li>--%>
                    <%--<a role="button" title="" class="a_add  _j_addtopvideo"><i></i><span id="_j_video_switch">添加头图视频</span><strong>NEW</strong></a>--%>
                    <%--<a role="button" id="_js_topic_video_upbtn" title="" ></a>--%>
                <%--</li>--%>
                <%--<li class="_j_topvideo_delete"><a role="button" title="" class="a_delete delete_video" id="_j_delete_video"><i></i><span>删除头图视频</span></a></li>--%>
            <%--</ul>--%>
        <%--</div>--%>
        <%--<div class="loading_video _j_load_v">--%>
            <%--<h3>视频正在上传...</h3>--%>
            <%--<div class="loading_bar"><span></span></div>--%>
            <%--<a role="button" class="cancel_up _j_cover_cancel" id="_j_upload_top_video_cancel" title="取消上传">取消上传</a>--%>
            <%--<div class="clear"></div>--%>
            <%--<div class="loading_num"></div>--%>
        <%--</div>--%>
        <%--<div class="video_up_success" id="video_up_success" vid="0">--%>
            <%--<div class="trans_success hide">--%>
                <%--<i></i>--%>
                <%--<p>视频处理成功！发布后即可观看</p>--%>
            <%--</div>--%>
            <%--<div class="trans_wait ">--%>
                <%--<i class="vus2"></i>--%>
                <%--<p>视频处理中</p>--%>
            <%--</div>--%>
            <%--<div class="trans_del hide">--%>
                <%--<i class="vus2"></i>--%>
                <%--<p>视频未通过审核</p>--%>
            <%--</div>--%>
        <%--</div>--%>
    </div>

</div>
<div class="container clearfix">
    <%--<div data-pagelet id="pagelet-block-aff85942fb4f9db6c1ebed4c707b4821" class=" content" data-controller="/js/note/ControllerEditContent" data-controller_data="{&quot;id&quot;:&quot;333371879&quot;}">--%>
        <%--<div class="block-loading loading_backward"></div>--%>
        <%--<div class="_j_content_box"></div>--%>
        <%--<div class="block-loading loading_forward"></div>--%>

    <%--</div>--%>
        <textarea rows="10" cols="120" name="content" placeholder="游记内容...">
        </textarea>

    <div class="clear"></div>
    <div class="action-ft">
        <div class="action-wrap">
            <div class="item-btn _js_actionBtn">
                <button class="btn-publish _j_btn_publish" role="button" type="submit" >发表游记</button>
            </div>
        </div>
    </div>


</div>

</form>


<link href="http://css.mafengwo.net/css/mfw-toolbar.css?1493174418" rel="stylesheet" type="text/css"/>






<script language="javascript" type="text/javascript">
    if (typeof M !== "undefined" && typeof M.loadResource === "function") {
        M.loadResource("http://js.mafengwo.net/js/cv/js+Dropdown:js+pageletcommon+pageHeadUserInfoWWWNormal:js+jquery.tmpl:js+M+module+InputListener:js+M+module+SuggestionXHR:js+M+module+DropList:js+M+module+Suggestion:js+M+module+MesSearchEvent:js+SiteSearch:js+AHeader:js+M+module+PageAdmin:js+M+module+Storage:js+M+module+Cookie:js+M+module+ResourceKeeper:js+jquery.jgrowl.min:js+AMessage:js+M+module+dialog+Layer:js+M+module+dialog+DialogBase:js+M+module+dialog+Dialog:js+M+module+FrequencyVerifyControl:js+M+module+FrequencySystemVerify:js+ALogin:js+M+module+ScrollObserver:js+M+module+QRCode:js+AToolbar:js+ACnzzGaLog:js+ARecruit:js+ALazyLoad:js+plupload:js+module+uploader+Pluploader:js+M+module+dialog+alert:js+qiniu+qiniuFileUpload:js+M+module+dialog+confirm:js+note+TopicVideoUpload:js+jquery.mousewheel.min:js+M+module+ScrollBar:js+M+module+Clip:js+M+module+ClickToggle:js+note+ControllerTopic:js+M+module+RollNumbers:js+note+initHlsVideo:js+jquery.caret:js+M+module+TextareaAutosize:js+M+module+TopTip:js+jquery-ui-core:js+jquery-ui-selectable:js+jquery-ui-draggable:js+jquery-ui-droppable:js+note+PicPanel:js+M+module+Slider:js+note+PlaceRelPicPanel:js+M+module+KeyListener:js+M+module+RichInput:js+note+PlaceSuggest:js+note+PlaceSuggestPanel:js+note+PicRelatePoiDialog:js+note+VideoInfoEdit:js+note+ControllerEditContent:js+M+module+StickyAndStayBlock:js+note+ControllerCatalogForEditPage:js+jquery.jplayer:js+plugins+jquery.rotate:js+note+PicUploaderDialog:js+note+PicUploadPop:js+jquery.jsonp:js+M+module+Polling:js+note+PicUpByQRCode:js+EmotionsHd:js+EmojiBox:js+note+VideoUploadPop2:js+note+ParagraphInsertPop^YlBURg^1529052114.js");
        M.loadResource("http://js.mafengwo.net/js/cv/js+note+GinfoDraftDialog:js+note+ControllerEditSidebar:js+jquery-ui-sortable:js+module+app+Page:js+note+ControllerImagesReorder:js+M+module+FrequencyAppVerify:js+M+module+HoldWithinScroll:js+note+ANewEditInfo^YVVb^1528253162.js");
    }
</script>

</body>
</html>

