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
/* post형식으로 받아오면 받는 곳에서 인코딩 설정. get형식은 server.xml에서 설정 가능. */
request.setCharacterEncoding("utf-8");

String email = request.getParameter("email");
String name = request.getParameter("name");
String pw = request.getParameter("pw");
Date join_date = new Date(); 

/* Sqlsession은 sql로 질의할 수 있는 공간. */
SqlSession sqlSession = SqlSessionManager.getInstance().getSession();
try{
	MemberBean member = new MemberBean(email, name, pw, join_date);
	/* 이 이메일로 등록되어있는 닉네임이 있으면 nam은 대입이 될 거고(이메일 중복), 없으면 null값이다(중복된 이메일 없음). */
	String pass = sqlSession.selectOne("memberMapper.selectAMember", member);
	%><%=pass %><%
	/* 중복되는 이메일이 없어서 nam이 비어있으면 member객체로 회원정보를 등록한다. */	
	if(pass == null || pass == ""){
		sqlSession.insert("memberMapper.joinMember", member);
		sqlSession.commit();
		%>가입을 축하합니다! <br>
		<%= name %>님 환영합니다.
		<a href="loginView.jsp">로그인하러 이동</a>
<%	} else {
	/* 이메일이 중복중이면 회원가입 처리하지 말고 경고를 한다. */
	%>
	<script>
	alert('이미 있는 이메일입니다!');
/* 	window.location.href = "signUpView.jsp"; */
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