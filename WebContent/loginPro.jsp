<%@page import="mapper.manager.SqlSessionManager"%>
<%@page import="java.util.Date"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% 
request.setCharacterEncoding("utf-8");

String email = request.getParameter("email");
String name = request.getParameter("name");
String pw = request.getParameter("pw");
Date join_date = new Date(); 

SqlSession sqlSession = SqlSessionManager.getInstance().getSession();
try{
	String dbpass = sqlSession.selectOne("selectAMember", email);
	if(dbpass.equals(pw)){
		%>로그인됐습니다.
<%	} else {
	%>
	<script>
	alert('비번이 다릅니다!');
	window.location.href = "loginView.jsp";
	</script>
	<%
	}
} catch(Exception e){
	System.out.print(e.getMessage());
} finally {
	/* 이유는 아직 잘 이해못했지만 아무튼 sqlSession은 꾸준히 잘 닫아줘야한다. finally에서 닫게 시키자. */
	sqlSession.close();
}
%>



</body>
</html>