<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
		<title>3.�ݺ���</title>
		<%
		%>
	</head>
	<body>
		<h3>3.�ݺ���</h3>

		<h4>for</h4>
		<%
			for(int i=1 ; i<=5 ; i++){
				out.println("<p>i : "+i+"</p>");
			}
			for(int k=1 ; k<=3 ; k++){
		%>
			<p>k : <%= k %></p>	
		<%
			}
		%>
		<h4>while</h4>
		<%
			int j = 1;
			while(j <= 3){
		%>
			<p>j : <%= j %></p>
		<%
				j++;
			}
		%>
		<h4>������</h4>
		<table border="1" >
		<tr>
			<th>2��</th>
			<th>3��</th>
			<th>4��</th>
			<th>5��</th>
			<th>6��</th>
			<th>7��</th>
			<th>8��</th>
			<th>9��</th>
		</tr>
		
		<% for(int x=2 ; x<=9 ; x++){ %>
			<tr>
		<% for(int y=2 ; y<=9 ; y++){%>	
					<td><%= y %> x 	<%= x %> = <%= x*y  %></td>
		<%	} %>
			</tr>
		<% } %>
	</table>
	</body>
</html>