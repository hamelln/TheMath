<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="css/bbsView.css">
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script type="text/javascript">
<script>
$(function(){
    $("#myBtn").click(function(){
        $('myModal').modal();
    })
})
</script>
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


<div class="btn-group btn-group-justified" role="group" style="margin-top: 17%; margin-bottom: 5%;">
<center>
   <div class="btn-group" role="group" style="width: 100px; margin-left: 5%;">
  <button type="button" class="btn btn-default" style="width: 100px;" ><a href="#">공지사항</a></button>
  </div>
  <div class="btn-group" role="group" style="width: 100px; margin-left: 5%;">
    <button type="button" class="btn btn-default" style="width: 100px;" ><a href="#">FAQ</a></button>
  </div>
  <div class="btn-group" role="group" style="width: 100px; margin-left: 5%;">
    <button type="button" class="btn btn-default" style="width: 100px;" ><a data-toggle="modal" data-target="#myModal" style="cursor: pointer;">1:1문의</a></button>
  </div>
  </center>
</div>

 <div class="contt" style="margin-top: 5%; margin-bottom: 5%; height: 100%; overflow: hidden; width: 100%;" >
 <ul class="list-group" style="width: 800px; margin: 0 auto; ">
 
 <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true" style="width: 800px; margin: 0 auto;" >
  
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingOne" style="background-color: white; background-image: none;">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
        <span class="label label-danger">new</span>
         <li class="list-group-item" style="border: 0; padding: 2px;" >  <span class="badge" style="float: right; background-color: #b4b4b4;" >답변완료</span>
         <span class="badge" style="float: right; background-color: #b4b4b4;" >2018.9.10</span>
         <span class="badge" style="float: right; background-color: #b4b4b4;" >vuas***님</span>
 <div style="cursor: pointer; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; width: 300px; height: 20px;">
 배송이 늦어요 배송이 늦고있어요 맨날 늦는 배송 언제나 늦는 배송 나무늘보 배송 총이 없는 총알배송 배송이 느립니다. 배송이 늦는 것 같읍니다. 배송이 늦는 것으로 추정이 됩니다. 배송이 늦어요.
  </div>
  </li>        
  </a>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
      배송이 늦어요 배송이 늦고있어요 맨날 늦는 배송 언제나 늦는 배송 나무늘보 배송 총이 없는 총알배송 배송이 느립니다. 배송이 늦는 것 같읍니다. 배송이 늦는 것으로 추정이 됩니다. 배송이 늦어요.
      </div>
      <div class="well">
    <span class="glyphicon glyphicon-comment" aria-hidden="true" style="margin: 1 auto;"> </span>
    질문 감사합니다. 저희 일조는 언제나 최고품질의 상품만을 제공해드리도록 노력하고 있습니다. 건의해주신 점을 개선하도록 전달하겠습니다.
  </div>
    </div>
  </div>


  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingTwo" style="background-color: white; background-image: none;">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
        <span class="label label-danger">new</span>
         <li class="list-group-item" style="border: 0; padding: 2px;" >  <span class="badge" style="float: right; background-color: #b4b4b4;" >답변완료</span>
          <span class="badge" style="float: right; background-color: #b4b4b4;" >2018.9.10</span>
          <span class="badge" style="float: right; background-color: #b4b4b4;" >vuas***님</span>
 <div style="cursor: pointer; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; width: 300px; height: 20px;">
 배송이dd ddddd늦어요 배송이 늦고있어요 맨날 늦는 배송 언제나 늦는 배송 나무늘보 배송 총이 없는 총알배송 배송이 느립니다. 배송이 늦는 것 같읍니다. 배송이 늦는 것으로 추정이 됩니다. 배송이 늦어요.
  </div>
  </li>        
  </a>
      </h4>
    </div>
    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
      <div class="panel-body">
        배송이 늦어요 배송이 늦고있어요 맨날 늦는 배송 언제나 늦는 배송 나무늘보 배송 총이 없는 총알배송 배송이 느립니다. 배송이 늦는 것 같읍니다. 배송이 늦는 것으로 추정이 됩니다. 배송이 늦어요.
             </div>
      <div class="well">
    <span class="glyphicon glyphicon-comment" aria-hidden="true" style="margin: 1 auto;"> </span>
    질문 감사합니다. 저희 일조는 언제나 최고품질의 상품만을 제공해드리도록 노력하고 있습니다. 건의해주신 점을 개선하도록 전달하겠습니다.
  </div>
    </div>
  </div>
  
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingThree" style="background-color: white; background-image: none;">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
         <li class="list-group-item" style="border: 0; padding: 2px;" >  <span class="badge" style="float: right; background-color: #ff9614;"  >답변대기중</span>
          <span class="badge" style="float: right; background-color: #b4b4b4;" >2018.9.10</span>
          <span class="badge" style="float: right; background-color: #b4b4b4;" >vuas***님</span>
 <div style="cursor: pointer; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; width: 300px; height: 20px;">
 배송이 늦어요 배송이 늦고있어요 맨날 늦는 배송 언제나 늦는 배송 나무늘보 배송 총이 없는 총알배송 배송이 느립니다. 배송이 늦는 것 같읍니다. 배송이 늦는 것으로 추정이 됩니다. 배송이 늦어요.
  </div>
  </li>        
  </a>
      </h4>
    </div>
    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
      <div class="panel-body">
        배송이 늦어요 배송이 늦고있어요 맨날 늦는 배송 언제나 늦는 배송 나무늘보 배송 총이 없는 총알배송 배송이 느립니다. 배송이 늦는 것 같읍니다. 배송이 늦는 것으로 추정이 됩니다. 배송이 늦어요.
             </div>
    </div>
  </div>
</div>


<div class="modal fade" name="myModal" id="myModal" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">상품 문의 작성하기</h4>
      </div>
      <div class="modal-body">
      <textarea class="form-control" rows="6" placeholder="문의하실 내용을 작성하세요."></textarea>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary">등록</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<center>
<nav style="margin: 0 auto; width: 300px; height: 50px;" >
  <ul class="pagination">
    <li>
      <a href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
     <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li>
      <a href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>
</center>
</div>


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

