<%@page import="test.Account"%>
<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"/>
		<title>4.Å¬·¡½º</title>
	</head>
	<body>
		<h3>Å¬·¡½º</h3>
		<%
			Account kb = new Account("±¹¹ÎÀºÇà", "101-10-1111", "±èÀ¯½Å", 30000);
			kb.deposit(50000);
			kb.withdraw(30000);
			kb.show(out);
			
			Account wr = new Account("¿ì¸®ÀºÇà", "101-10-2222", "±èÃáÃß", 10000);
			wr.deposit(30000);
			wr.withdraw(40000);
			wr.show(out);
		%>
	</body>
</html>