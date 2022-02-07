<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page info="developed by HM" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"/>
		<title>5.지시자</title>
		<!-- 
		날짜 2022.02.07
		이름 장현민
		내용 JSP지시자 실습
		
		지시자(DIrective)
		- 클라이언트가 요청한 JSP페이지가 실행될 때 필요한 정보를 지정
		- 스크립트릿과 함께 JSP페이지를 구성하는 구성요소
		- 대표적으로 page, include 지시자가 있다.
		 -->
		 <style>
		 	header {
		 		background: orange;
		 	}
		 	footer {
		 		background: green;
		 	}
		 </style>
		 
		 
		 
	</head>
	<body>
		<h3>5.지시자</h3>
		
		<h4>page 지시자</h4>
		info : <%= getServletInfo() %>
		
		<h4>include 지시자</h4>
		<%@ include file="../inc/_Header.jsp" %>
		<%@ include file="../inc/_Footer.jsp" %>
		
		
		
		
	</body>
</html>