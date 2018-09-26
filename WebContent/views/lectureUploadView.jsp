<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="lectureUpload.do" method="post">
<div class="input-group">
  <span class="input-group-addon" id="sizing-addon2">no</span>
  <input type="text" class="form-control" placeholder="고유번호" aria-describedby="sizing-addon2" name="no">
</div>
<div class="input-group">
  <span class="input-group-addon" id="sizing-addon2">name</span>
  <input type="text" class="form-control" placeholder="이름" aria-describedby="sizing-addon2" name="name">
</div>
<div class="input-group">
  <span class="input-group-addon" id="sizing-addon2">간단소개</span>
  <input type="text" class="form-control" placeholder="간단소개" aria-describedby="sizing-addon2" name="simple_desc">
</div>
<div class="input-group">
  <span class="input-group-addon" id="sizing-addon2">상세소개</span>
  <input type="text" class="form-control" placeholder="상세소개" aria-describedby="sizing-addon2" name="detail_desc">
</div>
<div class="input-group">
  <span class="input-group-addon" id="sizing-addon2">이미지</span>
  <input type="text" class="form-control" placeholder="이미지" aria-describedby="sizing-addon2" name="img">
</div>
<div class="input-group">
  <span class="input-group-addon" id="sizing-addon2">가격</span>
  <input type="text" class="form-control" placeholder="가격" aria-describedby="sizing-addon2" name="price">
</div>
<div class="input-group">
  <span class="input-group-addon" id="sizing-addon2">소개영상</span>
  <input type="text" class="form-control" placeholder="인트로 비디오" aria-describedby="sizing-addon2" name="intro_video">
</div>
<input type="submit" value="제출">
</form>
</body>
</html>