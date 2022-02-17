<%@page import="com.google.gson.JsonObject"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="apllication/json;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//전송 데이터 수신
	request.setCharacterEncoding("utf-8");
	String uid = request.getParameter("uid");
	
	// 데이터베이스 작업(Statement)
	int result = 0;
	try{
		String host = "jdbc:mysql://chhak.or.kr:3306/jhmcos13";
		String user = "jhmcos13";
		String pass = "1234";
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection(host, user, pass);
		Statement stmt = conn.createStatement();
		result = stmt.executeUpdate("DELETE FROM `Member` WHERE `uid`='"+uid+"'");
		conn.close();
	}catch(Exception e){
		e.printStackTrace();
	}
	
	JsonObject json = new JsonObject();
	json.addProperty("result", result);
	
	String jsonData = json.toString();
	out.print(jsonData);
	// 리스트 이동
%>