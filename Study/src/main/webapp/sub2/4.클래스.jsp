<%@page import="test.Account"%>
<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"/>
		<title>4.Ŭ����</title>
	</head>
	<body>
		<h3>Ŭ����</h3>
		<%
			Account kb = new Account("��������", "101-10-1111", "������", 30000);
			kb.deposit(50000);
			kb.withdraw(30000);
			kb.show(out);
			
			Account wr = new Account("�츮����", "101-10-2222", "������", 10000);
			wr.deposit(30000);
			wr.withdraw(40000);
			wr.show(out);
		%>
	</body>
</html>