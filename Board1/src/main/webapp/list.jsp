<%@page import="java.util.ArrayList"%>
<%@page import="kr.co.board1.bean.listBean"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="kr.co.board1.db.DBConfig"%>
<%@page import="java.sql.Connection"%>
<%@page import="kr.co.board1.bean.userBean"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	userBean sessUser = (userBean)session.getAttribute("sessUser");

	//로그인 안하면 로그인 페이지로
	
	if(sessUser ==null){
		response.sendRedirect("/Board1/user/login.jsp?success=102");
		return;
	}


%>
<%
	
	List<listBean> articles = new ArrayList<>();

	try{
		Connection conn =  DBConfig.getInstance().getConnection();
		Statement stmt = conn.createStatement();
		
		
		//sql article SELECT 만들기
		
		
		
		
		conn.close();

		
		
	}catch(Exception e){
		e.printStackTrace();
	}


%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>글목록</title>
    <link rel="stylesheet" href="./css/style.css">    
</head>
<body>
    <div id="wrapper">
        <section id="board" class="list">
            <h3>글목록</h3>
            <article>
                <p>
                    <%= sessUser.getNick()%>님 반갑습니다.
                    <a href="/Board1/user/proc/logout.jsp" class="logout">[로그아웃]</a>
                </p>
                <table >
                    <tr>
                        <th>번호</th>
                        <th>제목</th>
                        <th>글쓴이</th>
                        <th>날짜</th>
                        <th>조회</th>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td><a href="./view.jsp">테스트 제목입니다.</a>&nbsp;[3]</td>
                        <td>길동이</td>
                        <td>20-05-12</td>
                        <td>12</td>
                    </tr>
                </table>
            </article>

            <!-- 페이지 네비게이션 -->
            <div class="paging">
                <a href="#" class="prev">이전</a>
                <a href="#" class="num current">1</a>                
                <a href="#" class="num">2</a>                
                <a href="#" class="num">3</a>                
                <a href="#" class="next">다음</a>
            </div>

            <!-- 글쓰기 버튼 -->
            <a href="./write.jsp" class="btnWrite">글쓰기</a>

        </section>
    </div>    
</body>
</html>