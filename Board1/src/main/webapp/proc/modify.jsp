<%@page import="kr.co.board1.dao.ArticleDao"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
	String title = request.getParameter("");
	String content = request.getParameter("content");
	String id = request.getParameter("id");
	
	ArticleDao dao = ArticleDao.getInstance();
	dao.updateArticle(title, content, id);
	
	response.sendRedirect("/Board1/view.jsp?id="+id);

%>