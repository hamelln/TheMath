<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	
<!-- 	<script type="text/javascript">
	$('#myTab a').click(function (e) {
		  e.preventDefault()
		  $(this).tab('show')
		})
		
		$('#myTab a[href="#profile"]').tab('show') // Select tab by name
$('#myTab a:first').tab('show') // Select first tab
$('#myTab a:last').tab('show') // Select last tab
$('#myTab li:eq(2) a').tab('show') // Select third tab (0-indexed)
		
	</script> -->
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

<header>
	<nav class="navbar navbar-inverse" style="margin-bottom: 0">
	  <div class="container-fluid">
	  
	    <div class="navbar-header">
	      <a class="navbar-brand" href="index.do">메인이미지</a>
	    </div>
	
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	   		<ul class="nav navbar-nav navbar-left" style="padding-left: 30%;">
		        <li><a href="index.do">메인</a></li>
		        <li><a href="#">간단한 소개</a></li>
		        <li><a href="#">수학 연습</a></li>
		        <li><a href="#">코드 풀기</a></li>
	   		</ul>
	      	<ul class="nav navbar-nav navbar-right">
		        <li><a href="signUpView.jsp">회원가입</a></li>
		       	<li><a href="loginView.jsp">로그인</a></li>
	      	</ul>
	    </div>
	  </div>
	</nav>
</header>

<body>

<ol class="breadcrumb">
  <li><a href="index.do">메인</a></li>
  <li><a href="#">강의</a></li>
  <li class="active">이산수학</li>
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
    <div role="tabpanel" class="tab-pane active" id="home">강의 소개하는 화면</div>
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
<footer>
<div class="page-header"></div>
<div class="padding-left">
<p class="text-left">관리자 화면.</p>
<p class="text-left">이용자 규약.</p>
<p class="text-left">개인정보 수집 규약.</p>
<address>
  <strong>Famelln, Inc.</strong><br>
  서울특별시 강남구 역삼동 테헤란로 147 10 3층<br>
  <abbr title="Phone">문의 전화:</abbr> 010-2991-3392
</address>
<address>
  <strong>문의 메일:</strong>
  <a href="mailto:#">javaMelln@gmail.com</a>
</address>
</div>
</footer>

</html>