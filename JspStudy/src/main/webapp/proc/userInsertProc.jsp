<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String uid = request.getParameter("uid");
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String age = request.getParameter("age");

	String host = "jdbc:mysql://chhak.or.kr:3306/jhmcos13";
	String user = "jhmcos13";
	String pass = "1234";
	
	try{
	//1단계 jdbc드라이버 로드
	Class.forName("com.mysql.jdbc.Driver");
	//2단계 데이터베이스 접속
	Connection conn = DriverManager.getConnection(host, user, pass);
	//3단계 sql 실행객체 생성
	Statement stmt = conn.createStatement();
	
	//4단계 sql 실행
	String sql = "INSERT INTO `User1` VALUES('"+uid+"', '"+name+"', '"+hp+"', "+age+");";
	stmt.executeUpdate(sql);
	//5단계	결과처리(select)
	
	//6단계 종료
	stmt.close();
	conn.close();
	}catch(Exception e){
		e.printStackTrace();
	}
	//리다이렉트
	response.sendRedirect("../sub5/1.insert.jsp");
%>