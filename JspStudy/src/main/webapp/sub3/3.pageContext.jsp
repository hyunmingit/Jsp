<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"/>
		<title>Insert title here</title>
		<!-- 
			날짜 2022.02.08
			이름 장현민
			내용 jsp 내장객체
			
			pageContext 내장객체
			- jsp 개별 페이지에 대한 객체
			- 주요기능은 include,, forward 기능을 제공
			 
			forward 기능
			- 시스템에서 페이지를 요청하는 pageContext 기능
			- 최초 요청에 대한 구조가 반영, redirect는 최종 요청에 대한 주소가 반영
		 -->
	</head>
	<body>
		<h3>pageContext 내장객체</h3>
		<%
			pageContext.include("../inc/_Header.jsp");
			pageContext.include("../inc/_Footer.jsp");
		%>
		<a href="../proc/forwardProc.jsp">포워드 페이지 요청</a>
	</body>
</html>