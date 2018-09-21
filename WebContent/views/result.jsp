<%@page import="com.math.model.member.MemberBean"%>
<%@page import="mapper.manager.SqlSessionManager"%>
<%@page import="javafx.scene.control.Alert"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="java.util.Date"%>
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
		String name = request.getParameter("name");
	%>


	가입을 축하합니다!
	<br>
	<%=name%>님 환영합니다.
	<a href="loginView.jsp">로그인하러 이동</a>
</body>
</html>