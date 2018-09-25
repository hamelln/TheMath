<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
footer {
	position: relative;
	text-align: center;
	margin: 4% auto;
}

.infoBox {
	width: 306px;
	height: 135px;
	padding: 10px;
	margin: auto;
	border: 1px solid #E1E7EB;
	background-color: #F6F9FA;
	text-align: left;
}


.coll {
	width: 340px;
	height: 200px;
	margin: auto;
	position: relative;
	overflow: hidden;
}


</style>

</head>


<header>
	<nav class="navbar navbar-inverse" style="margin-bottom: 0">
	  <div class="container-fluid">
	  
	    <div class="navbar-header">
	      <a class="navbar-brand" href="index.jsp">메인이미지</a>
	    </div>
	
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	   		<ul class="nav navbar-nav navbar-left" style="padding-left: 30%;">
		        <li><a href="main.jsp">메인</a></li>
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

	<h3 style="text-align: center;"><strong>비밀번호 찾기</strong></h3>
<h5 style="text-align: center;">비밀번호를 재설정 할 이메일을 입력하세요. 자세한 안내가 담긴 메일을 보내드리겠습니다.</h5>
<br>
		<div class="coll">
			<div class="infoBox">
				<form id="frm" name="frm" method="post" action="passChange.do">
					<div class="form-group">
						<label for="exampleInputEmail1">
						<strong>비밀번호를 재설정할 이메일</strong>
						</label> 
						<input type="email" class="form-control" id="email" name="email" placeholder="이메일">
					</div>
						<input type="submit" name="commit" class="btn btn-primary btn-block btn-signup" value="비밀번호 재설정 메일 보내기" data-disable-with="계정 만들기" onclick="pc()" style="background: #0078ff; margin-top: 5%; margin-bottom: 5%">
				</form>
			</div>
		</div>
	</div>

</body>

<footer> 
<a href="test1.jsp">약관</a> &nbsp; 
<a href="test2.jsp">개인정보 처리방침</a> &nbsp; 
<a href="test3.jsp">문의</a>&nbsp; 
</footer>
</html>