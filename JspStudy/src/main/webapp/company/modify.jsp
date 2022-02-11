<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="bean.MemberBean"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String uid = request.getParameter("uid");
	

	String host = "jdbc:mysql://chhak.or.kr:3306/jhmcos13";
	String user = "jhmcos13";
	String pass = "1234";	
	
	MemberBean mb = null;

	
	try{
				Class.forName("com.mysql.jdbc.Driver");
		//2단계
				Connection conn = DriverManager.getConnection(host, user, pass);
				
		//3단계
				Statement stmt = conn.createStatement();
	
	//4단계
	String sql = "SELECT * FROM `User1` WHERE `uid`='"+uid+"';";
	ResultSet rs = stmt.executeQuery(sql);
	//5단계
	if(rs.next()){
		
		mb = new MemberBean();
		mb.setUid(rs.getString("uid"));
		mb.setName(rs.getString("name"));
		mb.setHp(rs.getString("hp"));
		mb.setPos(rs.getString("pos"));
		mb.setDep(rs.getInt("dep"));
		mb.setRdate(rs.getString("rdate".substring(0, 10)));
		
		mb.setUid(rs.getString("uid"));
		mb.setName(rs.getString("name"));
		mb.setHp(rs.getString("hp"));
		mb.setPos(rs.getString("pos"));
		mb.setDep(rs.getInt("dep"));
		mb.setRdate(rs.getString("rdate".substring(0, 10)));
		
		
		
		
		
		
	}
	
	conn.close();
		
	//6단계

	}catch(Exception e){
		e.printStackTrace();
	}










%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"/>
		<title>modify</title>
	</head>
	<body>
		<h3>직원수정</h3>
		<a href="./list.jsp">직원목록</a>
		<form action="./proc/modifyProc.jsp" method="post">
			<table border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="uid" readonly value=<%= mb.getUid() %>> </td>
			</tr>
			
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" value=<%= mb.getName() %>></td>
			</tr>
			
			<tr>
				<td>휴대폰</td>
				<td><input type="text" name="hp" value=<%= mb.getHp() %>></td>
			</tr>
			
			<tr>
				<td>직급</td>
				<td>
					<select name="pos" >
					<option>사원</option>
					<option>대리</option>
					<option>과장</option>
					<option>차장</option>
					<option>부장</option>
					
					</select>
				</td>
			</tr>
			<tr>
				<td>부서</td>
				<td>
					<select name="dep" >
					<option value="101">영업1부</option>
					<option value="102">영업2부</option>
					<option value="103">영업3부</option>
					<option value="104">영업4부</option>
					<option value="105">인사부</option>
					
					
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="right">
				<input type="submit" value="수정"/>
				</td>
			</tr>
			</table>
		</form>

	</body>
</html>