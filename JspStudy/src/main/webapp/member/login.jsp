<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//전송 데이터 수신ㅇ
	request.setCharacterEncoding("utf-8");
	String success = request.getParameter("success");
	

%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"/>
		<title>login</title>
		
		<script >
		
		if(success == "100"){
			alert('로그인 실패');
		}else if (success == "101"){
			alert('로그아웃 성공')
		}else if(success =="102"){
			alert('로그인 먼저 해주세요');
		}
		
		</script>
		
		
		
	</head>
	<body>
		<h4>로그인</h4>
		<form action="./loginProc.jsp" method="post">
		
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