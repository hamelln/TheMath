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


	������ �����մϴ�!
	<br>
	<%=name%>�� ȯ���մϴ�.
	<a href="loginView.jsp">�α����Ϸ� �̵�</a>
</body>
</html>