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
</head>
<body>
    <p>City:${cityName}</p>
    <c:if test="${!empty weather }">
        <c:forEach items="${weather}" var="weather">
            <c:out value="${weather}"></c:out>
        </c:forEach>
    </c:if>
    <br>
    <p>Hotel:${hotel}</p>


</body>
</html>
