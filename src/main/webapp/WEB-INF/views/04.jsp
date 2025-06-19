<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.UserVo" %>
<%
UserVo userVo = (UserVo)request.getAttribute("userVo");
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	
		<h1>el-jsrl</h1>
		<h2>el(어트리뷰트)</h2>
		
		<h3>스클립틀릿</h3>
		num = <%=(int)request.getAttribute("num") %> <br>
		str = <%=(String)request.getAttribute("str") %> <br>
		<br>
		name = <%=userVo.getName() %> <br>
		email = <%=userVo.getEmail() %> <br>
		
		<h3>el-request의 어트리뷰트</h3>
		num = ${requestScope.num } <br>
		str = ${requestScope.str } <br>
		<br>
		name = ${requestScope.userVo.name } <br>
		name = ${requestScope.userVo.email } <br>
		
	</body>
</html>