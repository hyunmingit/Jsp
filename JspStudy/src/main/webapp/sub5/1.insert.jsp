<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"/>
		<title>Insert title here</title>
	</head>
	<body>
		<h3>1.Insert</h3>
		<a href="./2.select.jsp">User 목록보기</a>
		<h4>user1 </h4>
		
		<form action="../proc/userInsertProc.jsp">
			<table border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="uid"> </td>
			</tr>
			
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
			</tr>
			
			<tr>
				<td>휴대폰</td>
				<td><input type="text" name="hp"></td>
			</tr>
			
			<tr>
				<td>나이</td>
				<td><input type="text" name="age"></td>
			</tr>
			<tr>
				<td colspan="2" align="right">
				<input type="submit" value="등록"/>
				</td>
			</tr>
			
			
			
			
			
			</table>
		
		
		
		
		
		</form>
	</body>
</html>