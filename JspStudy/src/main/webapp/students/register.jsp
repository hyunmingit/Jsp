<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"/>
		<title>register</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<script>
		
			$(function(){
				
				$('input[type=submit]').click(function(){
					
					// 데이터 취합
					let sid  = $('input[name=sid]').val();
					let name = $('input[name=name]').val();
					let gender = $('input[name=gender]').val();
					let hp   = $('input[name=hp]').val();
					let grade  = $('select[name=grade]').val();
					let regdate  = $('input[id=regdate]').val();
					//타입 주의!!
					
					// Json 데이터 생성
					let jsonData = {
							"sid":sid,
							"name":name,
							"gender":gender,
							"hp":hp,
							"grade":grade,
							"regdate":regdate,
					};
					
					console.log(jsonData);
					
					// Ajax 데이터 전송
					$.ajax({
						url: './proc/postRegister.jsp',
						type: 'post',
						data: jsonData,
						dataType: 'json',
						success: function(data){
							
							if(data.result == 1){
								alert("등록 성공!!.");
							}else{
								alert("실패! 아이디 휴대폰 확인!");
							}
						}
					});
				});
			});
		
		</script>
		
	<!-- 학생 등록 양식 -->
	</head>
	<body>
		<h3>학생등록</h3>
		<a href="./list.jsp">학생목록</a>
		<table border="1">
			<tr>
				<td>학번</td>
				<td><input type="text" name="sid"/></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"/></td>
			</tr>
			<tr>
				<td>성별</td>
				<td><input type="radio" name ="gender" value="1" >남
				    <input type="radio" name ="gender" value="2" >여</td>
			</tr>
			<tr>
				<td>휴대폰</td>
				<td><input type="text" name="hp"/></td>
			</tr>
			<tr>
				<td>학년</td>
				<td>
					<select name="grade">
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
						<option>6</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>등록일</td>
				<td><input id="regdate" type="date"></td>
			</tr>
			<tr>
				<td colspan="2" align="right">
					<input type="submit" value="등록"/>
				</td>
			</tr>			
		</table>		
		
	</body>
</html>