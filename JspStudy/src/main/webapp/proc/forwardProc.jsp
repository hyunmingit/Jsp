<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"/>
		<title>Insert title here</title>
	</head>
	<body>
		<h3>포워드</h3>
		<%
			pageContext.forward("../sub1/Hello.jsp");
		%>
	</body>
</html>