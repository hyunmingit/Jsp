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
	
	//데이터 처리
	
	int id = 0;
	try{
		Connection conn = DBConfig.getInstance().getConnection();
		
		PreparedStatement psmt = conn.prepareStatement(Sql.INSERT_ARTICLE);
		psmt.setString(1, title);
		psmt.setString(2, content);
		psmt.setInt(3, fname == null ? 0 : 1);
		psmt.setString(4, uid);
		psmt.setString(5, regip);
		psmt.executeUpdate();
		
		//방금 작성한 글 번호 조회
		Statement stmt = conn.createStatement();
		ResultSet rs =  stmt.executeQuery(Sql.SELECT_MAX_ID);
		
		
		if(rs.next()){
			 id = rs.getInt(1);
		}
		
		
		
		
		
		conn.close();
		
	}catch (Exception e){
		e.printStackTrace();
	}
	
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
		
		try{
			Connection conn = DBConfig.getInstance().getConnection();
			
			PreparedStatement psmt = conn.prepareStatement(Sql.INSERT_FILE);
			psmt.setInt(1, id);
			psmt.setString(2, fname);
			psmt.setString(3, newName);
			psmt.executeUpdate();
			
			conn.close();
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		
	}
	
	response.sendRedirect("/Board1/list.jsp");



%>