<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>1_scriptlet.jsp</title>
		<!-- 
		��¥ 2022.02.07
		�̸� ������
		���� JSP ��ũ��Ʈ�� �ǽ� P106
		
		��ũ��Ʈ��
		- ��������(HTML)�� ���α׷��� �ڵ带 �����ϱ����� ���� ����
		- �������� ��û�ϸ� WAS���� �ش� ��ũ��Ʈ�� �ڵ� ������ ����
		- ��ũ��Ʈ�� �������� ��ũ��Ʈ��, ����, ǥ������ �ִ�.
		 -->
	</head>
	<body>
		<h3>1.Scriptlet �⺻</h3>
		<%
			//��ũ��Ʈ�� ����(���α׷��� �ڵ� ����)
			int var1 = 1;
			boolean var2 = true;
			double var3 = 3.14;
			String var4 = "Hello";
			
			out.println("<h4>var1 : "+var1+"</h4>");
			out.println("<h4>var2 : "+var2+"</h4>");

		%>
		<!-- ǥ���� ���	 -->
		<h4>var3 : <%= var3 %>></h4>
		<h4>var4 : <%= var4 %>></h4>
	</body>
</html>