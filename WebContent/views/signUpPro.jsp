<%@page import="com.math.model.member.MemberBean"%>
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
/* post�������� �޾ƿ��� �޴� ������ ���ڵ� ����. get������ server.xml���� ���� ����. */
request.setCharacterEncoding("utf-8");

String email = request.getParameter("email");
String name = request.getParameter("name");
String pw = request.getParameter("pw");
Date join_date = new Date(); 

/* Sqlsession�� sql�� ������ �� �ִ� ����. */
SqlSession sqlSession = SqlSessionManager.getInstance().getSession();
try{
	MemberBean member = new MemberBean(email, name, pw, join_date);
	/* �� �̸��Ϸ� ��ϵǾ��ִ� �г����� ������ nam�� ������ �� �Ű�(�̸��� �ߺ�), ������ null���̴�(�ߺ��� �̸��� ����). */
	String pass = sqlSession.selectOne("memberMapper.selectAMember", member);
	%><%=pass %><%
	/* �ߺ��Ǵ� �̸����� ��� nam�� ��������� member��ü�� ȸ�������� ����Ѵ�. */	
	if(pass == null || pass == ""){
		sqlSession.insert("memberMapper.joinMember", member);
		sqlSession.commit();
		%>������ �����մϴ�! <br>
		<%= name %>�� ȯ���մϴ�.
		<a href="loginView.jsp">�α����Ϸ� �̵�</a>
<%	} else {
	/* �̸����� �ߺ����̸� ȸ������ ó������ ���� ��� �Ѵ�. */
	%>
	<script>
	alert('�̹� �ִ� �̸����Դϴ�!');
/* 	window.location.href = "signUpView.jsp"; */
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