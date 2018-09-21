<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="com.math.model.member.MemberBean"%>
<%@page import="mapper.manager.SqlSessionManager"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>프로그래머스</title>
<style type="text/css">
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
		        <li><a href="signUpView.do">회원가입</a></li>
		       	<li><a href="loginView.do">로그인</a></li>
	      	</ul>
	    </div>
	  </div>
	</nav>
</header>

<body>
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="img/ba1.jpg" alt="커피입니다.">
      <div class="carousel-caption">
      </div>
    </div>
    <div class="item">
      <img src="img/ba2.jpg" alt="커피입니까?">
      <div class="carousel-caption">
      </div>
    </div>
      <div class="item">
      <img src="img/ba3.jpg" alt="커피입니까?">
      <div class="carousel-caption">
      </div>
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<div class="row col-md-offset-2" >
  <div class="col-sm-6 col-md-3">
    <div class="thumbnail">
      <img src="img/1.jpg" alt="...">
      <div class="caption">
        <h3>이산수학</h3>
        <p>알고리즘 강의</p>
        <p><a href="test.do" class="btn btn-primary" role="button">강의 찜하기</a> 
        <a href="showLecture.do" class="btn btn-default" role="button">강의 보기</a></p>
      </div>
    </div>
  </div>
  
    <div class="col-sm-6 col-md-3">
    <div class="thumbnail">
      <img src="img/1.jpg" alt="...">
      <div class="caption">
        <h3>선형대수학</h3>
        <p>알고리즘 강의</p>
        <p><a href="#" class="btn btn-primary" role="button">강의 찜하기</a> 
        <a href="#" class="btn btn-default" role="button">강의 보기</a></p>
      </div>
    </div>
  </div>
  
    <div class="col-sm-6 col-md-3">
    <div class="thumbnail">
      <img src="img/1.jpg" alt="...">
      <div class="caption">
        <h3>현대대수학</h3>
        <p>알고리즘 강의</p>
        <p><a href="#" class="btn btn-primary" role="button">강의 찜하기</a> 
        <a href="#" class="btn btn-default" role="button">강의 보기</a></p>
      </div>
    </div>
  </div>
  
</div>
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