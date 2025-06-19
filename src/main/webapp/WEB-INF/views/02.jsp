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
		<h2>el(연산자)</h2>
		
		<h3>산술연산자</h3>
		\${7+5} --> ${7+5} <br>
		\${7-5} --> ${7-5} <br>
		\${7*5} --> ${7*5} <br>
		<br>
		\${7/5} --> ${7/5} <br>
		\${7 div 5} --> ${7 div 5} <br>
		<br>
		\${7%5} --> ${7%5} <br>
		\${7 mod 5} --> ${7 mod 5} <br>
		
		<h3>산술연산자</h3>
		\${7>5} --> ${7>5} <br>
		\${7 gt 5} --> ${7 gt 5} <br>
		<br>
		\${7<5} --> ${7<5} <br>
		\${7 lt 5} --> ${7 lt 5} <br>
		<br>
		\${7>=5} --> ${7>=5} <br>
		\${7 ge 5} --> ${7 ge 5} <br>
		<br>
		\${7<=5} --> ${7<=5} <br>
		\${7 le 5} --> ${7 le 5} <br>
		<br>
		\${7==5} --> ${7==5} <br>
		\${7 eq 5} --> ${7 eq 5} <br>
		<br>
		\${7!=5} --> ${7!=5} <br>
		\${7 ne 5} --> ${7 ne 5} <br>
		
		<h3>삼항연산자(아주 간단한 if문)</h3>
		\${(7>5)?7:5} --> ${(7>5)?7:5}
		
		<h3>논리연산자</h3>
		<!-- T && T => T -->
		\${(7>5)&&(7<10)} --> ${(7>5)&&(7<10)}<br>
		<br>
		<!-- T && F => F -->
		\${(7>5)&&(7>10)} --> ${(7>5)&&(7>10)}<br>
		
		<!-- T || F => T -->
		\${(7>5)||(7>10)} --> ${(7>5)||(7>10)}<br>
		<br>
		<!-- !T => F -->
		\${!(7>5)} --> ${!(7>5)}<br>
		
		<h3>null검사</h3>
		\${srt} --> ${srt}<br>
		\${srt == null} --> ${srt == null}<br>
		\${empty srt} --> ${empty srt}<br>
		<br>
		\${reqVal} --> ${reqVal} <br><!-- 어트리뷰트 영역의 값을 자동으로 꺼내준다 -->
		\${empty reqVal} --> ${empty reqVal}
		
		
	</body>
</html>