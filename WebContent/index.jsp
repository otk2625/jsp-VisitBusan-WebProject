<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
</head>
<body>
<h1>브랜치 테스트22222222333 살짝쿵 바꿨어 ㅎ</h1>
</body>
</html>

<%
RequestDispatcher dispatcher = request.getRequestDispatcher("board?cmd=main&page=0"); 
dispatcher.forward(request, response);
%>