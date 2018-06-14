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
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
</head>
<body>
    <p>${user.avatar}</p>
    <img src="pic/"+${user.avatar}>
    <%--<img src="pic/test.jpg">--%>
    <p>${user.userName}</p>
</body>
</html>