<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("utf-8");
	String uid = request.getParameter("uid");

	String host = "jdbc:mysql://chhak.or.kr:3306/jhmcos13";
	String user = "jhmcos13";
	String pass = "1234";

	try{
		//1단계
		Class.forName("com.mysql.jdbc.Driver");
		//2단계
		Connection conn = DriverManager.getConnection(host, user, pass);
		//3단계
		String sql = "DELETE FROM `User1` WHERE `uid`=?;";
		Statement stmt = conn.createStatement();
		stmt.executeUpdate("DELETE FROM `Member` WHERE `uid`='"+uid+"'");
		
		//5단계
		
		//6단계
		conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	
		response.sendRedirect("./list.jsp");
	
	
	%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"/>
		<title>Insert title here</title>
	</head>
	<body>

	</body>
</html>