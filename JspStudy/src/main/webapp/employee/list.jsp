<%@page import="bean.EmployeeBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>



<%
	String host = "jdbc:mysql://chhak.or.kr:3306/jhmcos13";
	String user = "jhmcos13";
	String pass = "1234";
	
	List<EmployeeBean> employee = new ArrayList<>();
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection(host, user, pass);
		Statement stmt = conn.createStatement();
		
		String sql = "SELECT * FROM `Employee`";
		ResultSet rs = stmt.executeQuery(sql);
		
		while(rs.next()){
			//자바빈 생성 및 데이터 저장
			EmployeeBean em = new EmployeeBean();
			em.setUid(rs.getString(1));
			em.setName(rs.getString(2));
			em.setGender(rs.getInt(3));
			em.setHp(rs.getString(4));
			em.setEmail(rs.getString(5));
			em.setPos(rs.getString(6));
			em.setDep(rs.getInt(7));
			em.setRdate(rs.getString(8));
			employee.add(em);
		}
	}catch(Exception e){
		e.printStackTrace();
	}

%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"/>
		<title>Insert title here</title>
	</head>
	<body>
	<!-- 표시 페이지 -->
				<h3>Employee목록</h3>
		<a href="./register.jsp">직원등록</a> <!-- 직원 등록버튼 -->
		<table border="1">
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>성별</th>
				<th>휴대폰</th>
				<th>이메일</th>
				<th>직급</th>
				<th>부서</th>
				<th>입사일</th>
			</tr>
			<% for(EmployeeBean em : employee){ %>
			<tr>
				<td><%= em.getUid()%></td>
				<td><%= em.getName() %></td>
				<td>
					<% //숫자대신 성별 출력
						switch(em.getGender()){
						case 1:
							out.println("남");
							break;
						case 2:
							out.println("여");
							break;
						}
					%>
				</td>
				<td><%= em.getHp() %></td>
				<td><%= em.getEmail() %></td>
				<td><%= em.getPos() %></td>
				<td>
					<% //부서 번호별 부서명 출력
						switch(em.getDep()){
						case 101:
							out.println("영업1부");
							break;
						case 102:
							out.println("영업2부");
							break;
						case 103:
							out.println("영업3부");
							break;
						case 104:
							out.println("영업4부");
							break;
						case 105:
							out.println("인사부");
							break;
						
						}
					%>
				</td>
				<td><%= em.getRdate().substring(0, 10) %></td>
				
			</tr>
			<% } %>
		</table>
		
	</body>
</html>