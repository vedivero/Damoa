<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인::Damoa</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/main/assets/css/loginForm.css">
</head>
<body>

	<!-- 전체 페이지 구성 -->
	<div id="header">
		<div id="wrapper">
		
			<div id="content">
			
				<div>
					<h3>
						<label for="id">아이디</label>
					</h3>
					<span class="box int_id">
						<input type="text" id="id" class="int" maxlength="20">
					</span>
					<span class="error_next_box"></span>
				</div>
				
				<!-- 생년월일 입력 폼 -->
				<div>
					<h3>
						<label for="yy">생년월일</label>
					</h3>
					<div id="bir_wrap">
					
						<!-- 생년월일_YY -->
						<div id="bir_yy">
							<span class="box">
								<input type="text" id="yy" class="int" maxlength="4" placeholder="년(ex 1992)">
							</span>
						</div>
						
						<!-- 생년월일_MM -->
						<div id="bir_mm">
							<span class="box">
								<select id="mm">
									<option>월</option>
									<option value="01">1</option>
									<option value="02">2</option>
									<option value="03">3</option>
									<option value="04">4</option>
									<option value="05">5</option>
									<option value="06">6</option>
									<option value="07">7</option>
									<option value="08">8</option>
									<option value="09">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
								</select>
							</span>
						</div>
						
						<!-- 생년월일_DD -->
						<div id="bir_dd">
							<span class="box">
								<input type="text" id="dd" class="int" maxlength="2" placeholder="일">
							</span>
						</div>
					</div>
					<span class="error_next_box"></span>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 가입버튼 -->
	<div class="btn_area">
		<button type="button">
			<span>가입하기</span>
		</button>
	</div>
	
</body>
</html>