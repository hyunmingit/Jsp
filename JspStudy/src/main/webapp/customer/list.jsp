<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.CustomerBean"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>

<%
	String host = "jdbc://mysql://chhak.or.kr:3306/jhmcos13";
	String user = "jhmcos13";
	String pass = "1234";
	
	List<CustomerBean> customer = new ArrayList<>();
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection(host, user, pass);
		Statement stmt = conn.createStatement();
		
		String sql = "SELECT * FROM `Customer`";
		ResultSet rs = stmt.executeQuery(sql);
		
		while(rs.next()){
			
		}
		
		
		
		
		
	}catch(Exception e){
		e.printStackTrace();
	}





%>






<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"/>
		<title>list</title>
	</head>
	<body>
		<h3>고객목록</h3>
		<a href="./register.jsp">고객등록</a>
		<table border="1">
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>주소</th>
				<th>휴대폰</th>
				
				<th>관리</th>
			</tr>
			<tr>
				<td>1</td>
				<td>지성</td>
				<td>UK</td>
				<td>010-2142-2142</td>
				<td>
					<a href="./modify.jsp">수정</a>
					<a href="./delete.jsp">삭제</a>
				</td>
			</tr>
		</table>

	</body>
</html>