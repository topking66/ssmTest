<%--
  Created by IntelliJ IDEA.
  User: 李铭燊
  Date: 2021/6/10
  Time: 20:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <a href="${pageContext.request.contextPath}/account/testSpringMVC">测试查询</a>
    <br/>
    <h3>测试保存</h3>
    <form action="${pageContext.request.contextPath}/account/save" method="post">
        姓名:<input type="text" name="name"> <br>
        金额:<input type="text" name="money"> <br> 
        <input type="submit" value="提交">

    </form>

</body>
</html>
