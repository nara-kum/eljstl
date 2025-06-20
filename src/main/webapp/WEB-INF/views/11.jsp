<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	
		<h1>el-jstl</h1>
		
		<h2>jstl(문법)</h2>
		
		<h3>스클립트릿(if)</h3>
		<%
			String color = request.getParameter("color"); 
		%>
		
		<% if("1".equals(color)){%>
				<span style="color: red">빨강</span>
		<% } else if ("2".equals(color)){%>
				<span style="color: green">초록</span>	
		<% } else if ("3".equals(color)){%>
				<span style="color: blue">파랑</span>	
		<% } else{%>
			<span>잘못된 color값</span>
		<%}%>
		
		<br>
		------------------------------------------------------
		<h3>jstl(if else --> choose when)</h3>
		
		<c:choose>
			<c:when test="${param.color==1}">
				<span style="color: red">빨강</span>
			</c:when>
			<c:when test="${param.color==2}">
				<span style="color: green">초록</span>
			</c:when>
			<c:when test="${param.color==3}">
				<span style="color: blue">파랑</span>
			</c:when>
			<c:otherwise>
				<span>잘못된 color값</span>
			</c:otherwise>
		</c:choose>
		
	</body>
</html>