<%@page import="kr.co.board1.db.ArticleDao"%>
<%@page import="kr.co.board1.bean.articleBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="kr.co.board1.db.Sql"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="kr.co.board1.db.DBConfig"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("utf-8");
	//Multipart 전송 데이터 수신
	
	String path = request.getServletContext().getRealPath("/file"); //파일 저장경로
	int maxsize = 1024 * 1024 * 10;//파일크기 10메가 제한
	
	MultipartRequest mr = new MultipartRequest(request, path, maxsize, "UTF-8", new DefaultFileRenamePolicy());
	String title = mr.getParameter("title");
	String content = mr.getParameter("content");
	String fname = mr.getFilesystemName("fname");
	String uid = mr.getParameter("uid");
	String regip = request.getRemoteAddr();
	
	articleBean article = new articleBean();
	article.setTitle(title);
	article.setContent(content);
	article.setFname(fname);
	article.setUid(uid);
	
	article.setRegip(regip);
	
	int id = ArticleDao.getInstance().insertArticle(article);
	
	
	
	//파일 처리 작업
	if(fname != null){
		
		//파일명 수정
		int i = fname.lastIndexOf(".");
		
		String ext = fname.substring(i);
		
		SimpleDateFormat sdf =  new SimpleDateFormat("yyyyMMddHHmmss_");
		String now = sdf.format(new Date());
		String newName = now+uid+ext;
		
		
		File oriFile = new File(path+"/"+fname);
		File newFile = new File(path+"/"+newName);
		
		oriFile.renameTo(newFile);
		
		
		//파일테이블 insert
		
		ArticleDao.getInstance().insertFile(id, fname, newName);
		
		
		
	}
	
	response.sendRedirect("/Board1/list.jsp");



%>