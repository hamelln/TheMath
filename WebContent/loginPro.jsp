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
		%>�α��εƽ��ϴ�.
<%	} else {
	%>
	<script>
	alert('����� �ٸ��ϴ�!');
	window.location.href = "loginView.jsp";
	</script>
	<%
	}
} catch(Exception e){
	System.out.print(e.getMessage());
} finally {
	/* ������ ���� �� ���ظ������� �ƹ�ư sqlSession�� ������ �� �ݾ�����Ѵ�. finally���� �ݰ� ��Ű��. */
	sqlSession.close();
}
%>



</body>
</html>