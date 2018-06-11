<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/6/10
  Time: 15:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>status-error</title>
    <link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
</head>
<script>

</script>
<body>
<div class="jumbotron" style="margin-top: 200px;margin: auto;">
    <div style="text-align: center;margin-top: 140px;">
        <h3 style="color:red;">该账号状态异常已被禁用，如果需要解冻，有两种方式：</h3>
        <span>1.自行向管理员邮箱(123456789@qq.com)发送申请解冻邮件。</span><br/>
        <span>
            <span style="margin-left: 70px;">2.点击下方按钮，填写相关邮箱信息(目前只支持126邮箱)，申请解冻。</span><br/>
            <button class="btn btn-primary btn-sm" data-toggle="modal"  data-target="#addUserModal">
                填写邮件信息发送邮件，申请解冻
            </button>
        </span>
    </div>
</div>
<div class="container" style="min-width: 1200px;">
    <!-- 模态框示例（Modal） -->
    <form method="post" action="${pageContext.request.contextPath}/admin/se" class="form-horizontal" role="form" id="form_data" onsubmit="return check_form()" style="margin: 20px;">
        <div class="modal fade" id="addUserModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                            &times;
                        </button>
                        <h4 class="modal-title" id="myModalLabel">
                            邮箱登录信息
                        </h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label for="email" class="col-sm-3 control-label">邮箱</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" id="email" name="email" placeholder="请输入126邮箱">
                                </div>
                                <label for="password" class="col-sm-3 control-label">第三方登录授权码</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" id="password" name="password" placeholder="请输入邮箱登录授权码">
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                                </button>
                                <button type="submit" class="btn btn-primary">
                                    提交
                                </button><span id="tip"> </span>
                            </div>
                        </form>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal -->
        </div>
    </form>
</div>
</body>
</html>
