<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	
		<h1>el-jsrl</h1>
		<h2>el</h2>
		
		<h3>리퀘스트의 파라미터값 영역</h3>
		name = ${param.name}<br>
		
		<h3>리퀘스트의 어트리뷰트 영역</h3>
		리퀘스트 정우성 = ${requestScope.userVo.name}<br>
		리퀘스트 정우성 = ${userVo.name}<br>
		
		<h3>세션의 어트리뷰트 영역</h3>
		세션 박명수 = ${sessionScope.userVo.name}<br>
		세션 박명수 = ${userVo.name}<br>
		
	</body>
</html>