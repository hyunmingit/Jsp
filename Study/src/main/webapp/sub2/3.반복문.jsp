<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
		<title>3.반복문</title>
		<%
		%>
	</head>
	<body>
		<h3>3.반복문</h3>

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
		<h4>구구단</h4>
		<%
		
		%>
	</body>
</html>