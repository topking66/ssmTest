<%--
  Created by IntelliJ IDEA.
  User: 李铭燊
  Date: 2021/6/10
  Time: 20:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h3>查询成功</h3>

<c:forEach items="${list}" var="account" >

    ${account.name}
    ${account.money}

</c:forEach>

</body>
</html>
