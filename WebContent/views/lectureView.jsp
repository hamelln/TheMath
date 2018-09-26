<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.math.model.lecture.LectureDaoImpl" %>
<%@ page import="com.math.model.lecture.LectureBean" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
		
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.intro{
width: 15%;
margin-left: 1%;
}
.inline{
display: inline;
}
.margin-left{
margin-left: 20%;
}
.padding-left{
padding-left: 21%;
}

</style>
</head>
<jsp:include page="header.jsp" flush="false"/>
<body>

<%
LectureDaoImpl dao = LectureDaoImpl.getInstance();
String name = request.getParameter("name");
LectureBean lecture = dao.select(name);
%>

<ol class="breadcrumb">
  <li><a href="index.do">메인</a></li>
  <li><a href="#">강의</a></li>
  <li class="active" name="name" >hame</li>
</ol>

<div class="margin-left">
  <div class="col-sm-2 col-md-2">
    <div class="thumbnail">
      <img src="img/petersen.png" alt="...">
      <div class="caption">
        <h3>이산수학</h3>
        <p>알고리즘 강의</p>
        <p><a href="#" class="btn btn-primary" role="button">강의 찜하기</a> 
        <a href="#" class="btn btn-default" role="button">강의 보기</a></p>
      </div>
    </div>
  </div>
  
    <div class="col-sm-6 col-md-7">
   <div role="tabpanel">
  <ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">소개</a></li>
    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">커리큘럼</a></li>
    <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">Q&A</a></li>
  </ul>

  <div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="home">${LectureBean.getName}</div>
    <div role="tabpanel" class="tab-pane" id="profile">커리큘럼 화면</div>
    <div role="tabpanel" class="tab-pane" id="messages">질의응답 화면</div>
  </div>
</div>
</div>

<div class="intro"><div class="page-header" style=" margin-top: 2px; margin-bottom: 2px; padding: 4px;"><span class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>&nbsp; 온라인 코스</div></div>
<div class="intro"><div class="page-header" style=" margin-top: 2px; margin-bottom: 2px; padding: 4px;"><span class="glyphicon glyphicon-time" aria-hidden="true"></span>&nbsp;&nbsp;5시간 강의</div></div>
<div class="intro"><div class="page-header" style="  margin-top: 2px; margin-bottom: 2px; padding: 4px;"><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>&nbsp;&nbsp;29개의 코딩 실습</div></div>
<div class="intro"><div class="page-header" style="  margin-top: 2px; margin-bottom: 2px; padding: 4px;"><span class="glyphicon glyphicon-credit-card" aria-hidden="true"></span>&nbsp;&nbsp;무료</div></div>
<div class="intro"><div class="page-header" style="  margin-top: 2px; margin-bottom: 2px; padding: 4px;"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>&nbsp;&nbsp;1명이 공부중</div></div>
<div class="intro" style=" margin-top: 2px; margin-bottom: 2px; padding: 4px;"><span class="glyphicon glyphicon-link" aria-hidden="true"></span>&nbsp;&nbsp;공유하기</div></div>

</body>
<jsp:include page="footer.jsp" flush="false"/>
</html>