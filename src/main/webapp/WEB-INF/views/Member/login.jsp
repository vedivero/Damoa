<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype HTML>
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/main/assets/css/login.css">
	<script src="https://kit.fontawesome.com/51db22a717.js" crossorigin="anonymous"></script>
</head>
<body>
	<div class="main-container">
		<div class="main-wrap">
		<header>
			<div class="logo-wrap">
				<a href="/main">
					<img src="${pageContext.request.contextPath}/resources/main/assets/join/logo.png">
				</a>
			</div>
		</header>
		<section class="login-input-section-wrap">
			<form action="/member/loginProc" method="post">
			<div class="login-input-wrap">	
				<input name="id" placeholder="아이디" type="text"></input>
			</div>
			<div class="login-input-wrap password-wrap">	
				<input name="pw" placeholder="패스워드" type="password"></input>
			</div>
			<div class="login-button-wrap">
				<button onclick="location.href='/member/loginProc'">로그인</button>
			</div>
			</form>
			<div class="login-stay-sign-in">
				<i class="far fa-check-circle"></i>
				<span>로그인 정보 기억하기</span>
			</div>
		</section>
		<section class="Easy-sgin-in-wrap">
			<h2>간편한 로그인</h2>
			<ul class="sign-button-list">
				<li><button><i class="fas fa-qrcode"></i><span>Sign in with QR code</span></button></li>
				<li><button><i class="fab fa-facebook-square"></i><span>Facebook</span></button></li>
				<li><button><i class="fab fa-line"></i><span>line</span></button></li>
			</ul>
			<p class="forget-msg">비밀번호를 잃어버리셨나요? | 회원가입</p>
		</section>
		<footer>
			<div class="copyright-wrap">
			<span>	<img src="${pageContext.request.contextPath}/resources/main/assets/join/logo.png"> Copyright © DAMOA Corp. All Rights Reserved.</span>
			</div>
		</footer>
		</div>
	</div>
</body>