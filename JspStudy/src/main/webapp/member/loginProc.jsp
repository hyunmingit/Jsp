<%@page import="test.Member"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<h3>데이터 수신</h3>
<%
		
	request.setCharacterEncoding("UTF-8");
	//데이터수신
	String uid = request.getParameter("uid");
	String pass = request.getParameter("pass");
		
	Member member = new Member();
	member.setUid(uid);
	member.setPass(pass);
	
	
	
	if(uid.equals("abcd") && pass.equals("1234")){
		session.setAttribute("sessMember", member);
		response.sendRedirect("./loginSuccess.jsp") ; //회원 맞음
	}else{
		response.sendRedirect("./login.jsp?success=100");	//회원아님
		 }
		
%>
<p>
아이디 : <%= uid %><br>
비밀번호 : <%= pass %><br>
</p>