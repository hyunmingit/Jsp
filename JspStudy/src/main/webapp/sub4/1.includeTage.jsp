<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"/>
		<title>Insert title here</title>
		<!-- 
			날짜 2022.02.10
			이름 장현민
			내용 JSP 액션태그
			
			include 태그
			-일반적으로 UI 모듈, 공통전역 파일을 삽입할 때 사용하는 태그
			-JSP 페이지가 실행될때 삽입됨(동적타입)
			
			include 지시자
			-일반적으로 UI모듈, 공통전역 파일을 삽일하 ㄹ때 사용하는 지시자
			-정적타입에 삽입, 참고 ) include 태그는 동적타입에 삽입
		 -->
	</head>
	<body>
		<h3>include 액션태그</h3>
		<jsp:include page="../inc/_Header.jsp"></jsp:include>
		<jsp:include page="../inc/_Footer.jsp"></jsp:include>


	<%@ include file="../inc/_Header.jsp" %>
	<%@ include file="../inc/_Footer.jsp" %>
	
	<%
		pageContext.include("../inc/_Header.jsp");
		pageContext.include("../inc/_Footer.jsp");
	
	%>
	</body>
</html>