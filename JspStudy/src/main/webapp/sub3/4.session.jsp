<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"/>
		<title>4.session</title>
	</head>
	<body>
		<h3>4.session</h3>
		<h4>로그인</h4>
		<form action="../proc/sessionProc.jsp" method="post">
		
			<table border = "1">
				<tr>
					<td>아이디</td>
					<td><input type="text" name = "uid"/></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name = "pass"/></td>
				</tr>
				<tr>
					
					<td colspan ="2" align="right"><input type="submit" value = "로그인"/></td>
				</tr>
			</table>
		
		</form>
	</body>
</html>