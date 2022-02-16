<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	
	session.invalidate(); //세션해제
	response.sendRedirect("/Board1/user/login.jsp?success=101"); //로그인
	



%>