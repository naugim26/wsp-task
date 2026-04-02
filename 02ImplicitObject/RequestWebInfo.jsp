<%@ page contentType="text/html;charset=UTF-8" language="java"
pageEncoding="UTF-8" %>
<html>
<head>
    <title>내장 객체 - request</title>
</head>
<body>
<%--하단 부분은 전송된 값(han) 한글이 깨져서 추가했습니다.--%>
<% request.setCharacterEncoding("UTF-8"); %>
<%--예제 2-2--%>
<h1>20251246:김나우</h1>
<h2>1. 클라이언트와 서버의 환경정보 읽기</h2>
<ul>
    <li>데이터 전송 방식 : <%= request.getMethod() %></li>
    <li>URL : <%= request.getRequestURL() %></li>
    <li>URI : <%= request.getRequestURI() %></li>
    <li>프로토콜 : <%= request.getProtocol() %></li>
    <li>서버명 : <%= request.getServerName() %></li>
    <li>서버 포트 : <%= request.getServerPort() %></li>
    <li>클라이언트 IP 주소 : <%= request.getRemoteAddr() %></li>
    <li>쿼리스트링 : <%= request.getQueryString() %></li>
    <li>전송된 값 1 : <%= request.getParameter("eng") %></li>
    <li>전송된 값 2 : <%= request.getParameter("han") %></li>
</ul>
</body>
</html>
