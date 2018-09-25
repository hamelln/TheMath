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
	padding: 30px 24px 30px 24px;
	border: 1px solid #E1E7EB;
	background-color: #F6F9FA;
	text-align: left;
	height: 100%;
}

.login-divider {
	position: relative;
	left: 30%;
	width: 40%;
	text-align: center;
	border-bottom: 1px solid #E1E7EB;
	line-height: 9px;
	margin-top: 6px;
	margin-bottom: 20px;
}

.login-divider span {
	position: relative;
	color: #B0BEC5;
	padding: 0px 10px;
	font-size: 12px;
	background-color: #FBFBFC;
}

.btn-outline {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: center;
	justify-content: center;
	height: 41px;
	max-width: 292px;
	border: 1px solid #CDD7DC;
	border-radius: 2px;
	background-color: #F6F9FA;
	color: #0078ff;
	margin: 0 auto;
}

.coll {
	width: 340px;
	height: 605px;
	display: inline-block;
	margin-right: 16px;
	position: relative;
	overflow: hidden;
}

.roco {
	width: 100%;
	text-align: center;
}

.btn-facebook {
	background-color: #3b579d;
	width: 8.625rem;
	margin-right: 1rem;
}
</style>

<script src="//code.jquery.com/jquery.min.js"></script>

<script type="text/javascript">
	function checkDisable(frm) {
		if (frm.chkbox.checked == true)
			frm.commit.disabled = false;
		else {
			frm.commit.disabled = true;
		}
	}

	$(document).ready(function() {
		$("#chkBox").change(function() {
			if ($("#chkBox").is(":checked")) {
				$("#fb").click().prop("disabled", false);
				$("#gh").click().prop("disabled", false);
			} else {
				$("#fb").click().prop("disabled", true);
				$("#gh").click().prop("disabled", true);

			}
		});
	});

	function pc() {
		var p = document.frm.pw.value;
		var pp = document.frm.pwCheck.value;

		if (p == "") {
			alert('비밀번호를 입력해주세요.');
		} else if (p != pp) {
			alert('비밀번호를 다시 확인해주세요.')
			document.frm.pw.focus();
		} else if (p.length < 6
				|| !p
						.match(/([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/)) {
			alert('비밀번호는 영문,숫자,특수문자(!,@,$,%,^,&,* 만 가능)를 사용하여 6~16자까지, 영문은 대소문자를 구분합니다.');
		} else {
			alert('인증메일을 보냈습니다. 확인해주세요.');
		}

	}
</script>

</head>
<body>
	<header> <nav class="navbar navbar-inverse"
		style="margin-bottom: 0">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="index.jsp">메인이미지</a>
		</div>

		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li style="color: white;"><a href="loginView.jsp"><strong>로그인</strong></a></li>
			</ul>
		</div>
	</div>
	</nav> </header>



	<div class="page-header" style="text-align: center;">
		<h1>회원가입</h1>
	</div>

	<div class="roco">
		<div class="coll">
			<div class="thumbnail" style="height: 100%;">
				<img width="292" height="196" src="img/bac.png"
					alt="Img integrated sign">
				<div class="caption" style="text-align: left; margin: 5%">
					<h4>
						<strong>하나의 계정으로 모든 서비스 이용</strong>
					</h4>
					<h5 style="margin-top: 10%">
						통합 계정 하나로 (주)그렙이 운영하는 아래 서비스를 이용할 수 있습니다. <br> <br> <a
							href="https://hashcode.co.kr"><strong>Hashcode.co.kr</strong></a>
						<br> 프로그래밍 문제 해결을 위한 Q&amp;A 서비스<br> <br> <a
							href="https://programmers.co.kr"><strong>Programmers.co.kr</strong></a><br>프로그래밍
						대회 / 테스트 서비스<br> <br>
					</h5>
				</div>
			</div>
		</div>


		<div class="coll">
			<div class="infoBox">
				<form id="frm" name="frm" method="post" action="memberSignUp.do">
					<div class="form-group">
						<label for="exampleInputName2"><strong>닉네임</strong> </label> <input
							type="text" class="form-control" id="name" name="name"
							placeholder="닉네임을 입력하세요">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1"><strong>이메일</strong></label> <input
							type="email" class="form-control" id="email" name="email"
							placeholder="이메일을 입력하세요">
					</div>

					<div class="form-group" id="pwl">
						<label for="exampleInputPassword1"><strong>비밀번호</strong> <span>(소문자와
								숫자 포함 최소 6자)</span></label> <input type="password" name="pw"
							class="form-control" id="pw" placeholder="비밀번호">
					</div>

					<div class="form-group" id="pwchk">
						<label for="exampleInputPassword1"><strong>비밀번호
								확인</strong></label> <input type="password" name="pwCheck" class="form-control"
							id="pwCheck" placeholder="비밀번호 확인">
					</div>
					<div id="disable" name="disable" class="tooltip-wrapper disabled">
						<input type="checkbox" id="chkBox" name="chkbox"
							onclick="checkDisable(this.form)"> <a href="using.jsp">이용약관</a>
						및 <a href="using.jsp">개인정보 처리방침</a>에 동의합니다. <input type="submit"
							id="commit" class="btn btn-primary btn-block btn-signup"
							value="계정 만들기" data-disable-with="계정 만들기" disabled="disabled"
							onclick="pc()"
							style="background: #0078ff; margin-top: 5%; margin-bottom: 5%">
						<button type="submit" id="fb" name="fb"
							class="btn btn-primary btn-lg" disabled="disabled"
							style="float: left; width: 48%; padding-bottom: 2%; padding-top: 2%; margin-bottom: 4%; background: #3b579d">facebook</button>
						<button type="submit" id="gh" name="gh"
							class="btn btn-primary btn-lg" disabled="disabled"
							style="float: right; width: 48%; padding-bottom: 2%; padding-top: 2%; margin-bottom: 4%; background: #222222">Github</button>
					</div>
					<h2 align="center" class="login-divider">
						<span><strong>또는</strong></span>
					</h2>
					<a class="btn-outline" href="loginView.jsp">로그인</a>

				</form>

			</div>
		</div>
	</div>

</body>

<footer> <a href="test1.jsp">약관</a> &nbsp; <a href="test2.jsp">개인정보
	처리방침</a> &nbsp; <a href="test3.jsp">문의</a>&nbsp; </footer>
</html>