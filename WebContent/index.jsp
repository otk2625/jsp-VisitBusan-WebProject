<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
</head>
<body>
</body>
</html>

<%
RequestDispatcher dispatcher = request.getRequestDispatcher("board?cmd=main&page=0"); 
dispatcher.forward(request, response);
%>