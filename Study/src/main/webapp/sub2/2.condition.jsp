<%@ page contentType="text/html;charset=UTF-8" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"/>
		<title>2_condition</title>
		<%--
			��¥ 2022.02.07
			�̸� ������
			���� JSP ���ǹ� �ǽ� ���� P124
		 --%>
	</head>
	<body>
		<h3>2.���ǹ�</h3>
		<%
			int num1 =1 ;
			int num2 =2 ;
			int num3 =3 ;
			int num4 =4 ;
		
			if(num1 > 0){
				out.println("<h4>num1�� 0���� ũ��</h4>");
			}
			
			if(num1 > num2){
		%>
			<h4>num1�� num2���� ũ��.</h4>
		<%
			} else {
		%>
		 <h4>num1�� num2���� �۴�.</h4>
		<% } %>
		
		<hr/>
		
		<% if(num1 > num2){ %>
			<h4>num1�� num2���� ũ��</h4>
		<% }else if(num2 > num3){ %>
		<h4>num2�� num3���� ũ��</h4>
		<% }else if(num3 > num4){ %>
		<h4>num3�� num4���� ũ��</h4>
		<% }else{ %>
			<h4>num4�� ���� ũ��.</h4>
		<% } %>
		
		
	</body>
</html>