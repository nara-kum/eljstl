<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>el-jstl</h1>
		
		<h2>jstl(반복문)</h2>
		
		<h3>스클립트릿</h3>
		<%
			List<UserVo> userList = (List<UserVo>)request.getAttribute("userList");
		%>
			
		<table border="1">
			<thead>
				<tr>
					<th>번호</th>
					<th>이름</th>
					<th>이메일</th>
					<th>패스워드</th>
					<th>성별</th>
				</tr>
			</thead>
			<tbody>
				<%@ page import="java.util.List"%>
				<%@ page import="com.javaex.vo.UserVo"%>
				
				<%--for(int i=0; i<userList.size(); i++ ){ --%>
				<% 
					for(UserVo userVo : userList){ 
				%>
				<tr>
					<td><%=userVo.getNo()%></td>
					<td><%=userVo.getName()%></td>
					<td><%=userVo.getEmail()%></td>
					<td><%=userVo.getPassword()%></td>
					<td><%=userVo.getGender()%></td>
				</tr>
				<% 
					}
				%>
			</tbody>
			
		</table>
		
		<h3>jstl(반복문)</h3>
		
		<table border="1">
			<thead>
				<tr>
					<th>번호</th>
					<th>이름</th>
					<th>이메일</th>
					<th>패스워드</th>
					<th>성별</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${requestScope.userList}" var="userVo" varStatus="status">
					<tr>
						<td>${userVo.no}</td>
						<td>${userVo.name}</td>
						<td>${userVo.email}</td>
						<td>${userVo.password}</td>
						<td>${userVo.gender}</td>
					</tr>
				</c:forEach>
			</tbody>
			
		</table>
		
		<h3>추가기능</h3>
		
		<table border="1">
			<thead>
				<tr>
					<th>번호</th>
					<th>이름</th>
					<th>이메일</th>
					<th>패스워드</th>
					<th>성별</th>
					<th>index</th>
					<th>count</th>
				</tr>
			</thead>
			<tbody>
				<%-- <c:forEach items="${requestScope.userList}" var="userVo" varStatus="status"> --%>
				<c:forEach items="${userList}" var="userVo"  begin="0" end="5" varStatus="status">
					<tr>
						<td>${userVo.no}</td>
						<td>${userVo.name}</td>
						<td>${userVo.email}</td>
						<td>${userVo.password}</td>
						<td>${userVo.gender}</td>
						<td>${status.index}</td>
						<td>${status.count}</td>
					</tr>
				</c:forEach>
			</tbody>
			
		</table>
		 
	</body>
</html>