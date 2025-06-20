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
		
		<h3>스클립틀릿(if)</h3>
		<%
			String color = request.getParameter("color"); 
		%>
		
		<% if("1".equals(color)){%>
				<span style="color: red">빨강</span>
		<% } %>
		
		<% if ("2".equals(color)){%>
				<span style="color: green">초록</span>	
		<% } %>
		
		<% if ("3".equals(color)){%>
				<span style="color: blue">파랑</span>	
		<% } %>
		
		<br>
		------------------------------------------------------
		<h3>jstl(if)</h3>
		
		<c:if test="${param.color==1}">
			<span style="color: red">빨강</span>
		</c:if>
		
		<c:if test="${param.color==2}">
			<span style="color: green">초록</span>
		</c:if>
		
		<c:if test="${param.color==3}">
			<span style="color: blue">파랑</span>
		</c:if>


	</body>
</html>