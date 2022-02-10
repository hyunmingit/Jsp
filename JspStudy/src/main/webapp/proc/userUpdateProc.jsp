<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//데이터 수신
	request.setCharacterEncoding("utf-8");
	String uid = request.getParameter("uid");
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String age = request.getParameter("age");
	
	String host = "jdbc:mysql://chhak.or.kr:3306/jhmcos13";
	String user = "jhmcos13";
	String pass = "1234";	
	
	
	try{
		
	

		//JDBC프로그래밍
		
		Class.forName("com.mysql.jdbc.Driver");

		Connection conn = DriverManager.getConnection(host, user, pass);
		
		//3단계
		String sql = "UPDATE `User1` SET `name`=?, `hp`=?, `age`=?";
		sql += "WHERE `uid`=?;";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, name);
		psmt.setString(2, hp);
		psmt.setString(3, age);
		psmt.setString(4, uid);
	
		psmt.executeUpdate();
		conn.close();
		
		}catch(Exception e){
		e.printStackTrace();
		}
	
		
	//리다이렉트
	response.sendRedirect("../sub5/2.select.jsp");



%>
