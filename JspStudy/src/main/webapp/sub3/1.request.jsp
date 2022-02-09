<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"/>
		<title>1. Request</title>
		<!-- 
			날짜 2022.02.08
			이름 장현민
			내용 JSP 내장객체 실습
		 -->
	</head>
	<body>
		<h3>1.Request 내장객체</h3>
		<h4>로그인</h4>
		<form action="../proc/loginProc.jsp" method="post">
		
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
		<h4>회원가입</h4>
		<form action="../proc/registerProc.jsp" method="post">
			<table border="1">
				<tr>
					<td>이름</td>
					<td><input type="text" name="name"/></td>
				</tr>
				<tr>
					<td>주소</td>
					<td>
						<select name="addr">
							<option>서울</option>
							<option>대전</option>
							<option>대구</option>
							<option>부산</option>
							<option>광주</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>성별</td>
					<td>
						<label><input type ="radio" name="gender" value="1"/>남</label>
						<label><input type ="radio" name="gender" value="2"/>여</label>
					<td/>
				</tr>
				<tr>
					<td>취미</td>
					<td>
						<label><input type ="checkbox" name="hobby" value="등산"/>등산하기</label>
						<label><input type ="checkbox" name="hobby" value="독서"/>독서하기</label>
						<label><input type ="checkbox" name="hobby" value="여행"/>여행하기</label>
						<label><input type ="checkbox" name="hobby" value="운동"/>운동하기</label>
						<label><input type ="checkbox" name="hobby" value="영화"/>영화보기</label>
					<td/>
				</tr>
				<tr>
					<td>아이디</td>
					<td><input type="text" name = "uid"/></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name = "pass"/></td>
				</tr>
				<tr>
					
					<td colspan ="2" align="right"><input type="submit" value = "회원가입"/></td>
				</tr>
			</table>
		
		</form>
		<h4>request 주요기능</h4>
		<table>
			<tr>
				<td>헤더정보</td>
				<td><%= request.getHeader("User-Agent") %></td>
			</tr>
			<tr>
				<td>통신규약</td>
				<td><%= request.getProtocol()%></td>
			</tr>
			<tr>
				<td>서버이름</td>
				<td><%= request.getServerName() %></td>
			</tr>
			<tr>
				<td>요청주소</td>
				<td><%= request.getRequestURL()%></td>
			</tr>
			<tr>
				<td>요청주소</td>
				<td><%= request.getRequestURI() %></td>
			</tr>
			<tr>
				<td>클라이언트 IP 주소</td>
				<td><%= request.getRemoteAddr() %></td>
			</tr>
			
		
		
		</table>
		
		
		
		
		
	</body>
</html>