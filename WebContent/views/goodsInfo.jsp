<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="css/bbsView.css">
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="cont" style="height: 100%; overflow: hidden;">

<div class="row" style="display: inline-block; width: 500px;">
  <div class=thumb style="width: 500px; height: 400px;">
    <a href="#" class="thumbnail">
    <img src="imgs/batgro.jpg" alt="..." class="img-rounded">
    </a>
  </div>
  </div>
  
  <div class="info" style="display: inline-block; width: 500px; height: 100%; float: right;">
 <form class="form-horizontal">
  <div class="form-group">
    <label class="col-sm-2 control-label">제품명</label>
    <div class="col-sm-10">
      <p class="form-control-static">배틀 그라운드</p>
    </div>
  </div>
  </form>
  <form class="form-horizontal">
  <div class="form-group">
    <label class="col-sm-2 control-label" style="text-align: center;">가격</label>
    <div class="col-sm-10">
      <p class="form-control-static">49,000원</p>
    </div>
  </div>
  </form>
  

  <div class="form-group form-group-sm">
    <label class="col-sm-2 control-label" for="formGroupInputSmall">옵션</label>
    <div class="col-sm-10" style="padding-left: 0; padding-bottom: 10px;">
      <select class="form-control input-sm">
       <option value="">옵션</option>
    <option value="default">기본</option>
    <option value="DLC">DLC 포함(+ 19,000)</option>
    <option value="allSet">전 시리즈 포함(+ 30,000)</option>
      </select>
    </div>
  </div>

  <div class="form-group form-group-sm">
    <label class="col-sm-2 control-label" for="formGroupInputSmall">수량</label>
    <div class="col-sm-10" style="padding-left: 0;  ">
      <select class="form-control input-sm">
      <option value="">1인 최대 3개까지 구매 가능합니다.</option>
    <option value="one">1</option>
    <option value="two">2</option>
    <option value="three">3</option>
      </select>
    </div>
  </div>
  
  <table class="table" style="margin-top: 100px; text-align: left;">
 
  <th>배틀 그라운드</th>
  <td>1개</td>
   <td>49,000원</td>
</table>
  
  <div style="margin-top: 50px; text-align: center;" >
  <button type="button" class="btn btn-primary">구매하기</button>
  <button type="button" class="btn btn-default">장바구니에 담기</button>
  </div>
  
</div>



</div>
</body>
</html>