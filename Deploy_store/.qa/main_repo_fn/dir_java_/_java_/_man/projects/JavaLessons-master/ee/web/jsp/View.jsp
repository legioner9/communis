<%@ page import="jsp.Student" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%--<%= ((Student)request.getAttribute("student")).getTitle() %>--%>
    <jsp:useBean id="student" class="jsp.Student" scope="session"/>
    <jsp:getProperty title="student" property="title"/>
</body>
</html>
