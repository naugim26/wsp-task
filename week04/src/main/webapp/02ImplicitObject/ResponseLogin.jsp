<%@ page contentType="text/html;charset=UTF-8" language="java"
pageEncoding="UTF-8" %>
<html>
<head>
    <title>내장 객체 - Response</title>
</head>
<body>
<%--예제 2-6--%>
<h1>20251246:김나우</h1>
<%
    String id = request.getParameter("user_id");
    String pwd = request.getParameter("user_pwd");
    if (id.equalsIgnoreCase("must") && pwd.equalsIgnoreCase("1234")) {
        response.sendRedirect("ResponseWelcome.jsp");
    }
    else {
        request.getRequestDispatcher("ResponseMain.jsp?loginErr=1")
                .forward(request,response);
    }
%>
</body>
</html>
