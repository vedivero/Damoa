<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Damoa : 회원가입</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/main/assets/css/loginForm.css">
	<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
	
    <!-- JS -->
    <script src="${pageContext.request.contextPath}/resources/main/assets/join/main.js"></script>
    
    <!-- 주소API -->
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    
    <!-- 아이디중복체크  -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>
        <!-- header -->
        <div id="header">
            <a href="/main" target="_blank" title="홈페이지로">
            	<img src="${pageContext.request.contextPath}/resources/main/assets/join/logo.png" id="logo">
            </a>
        </div>

        <!-- wrapper -->
        <div id="wrapper">

            <!-- content-->
            <div id="content">
				<form action="/member/join" method="post" accept-charset="UTF-8" name="joinForm">
                
                <!-- ID -->
 			<div>
                <h3 class="join_title">
                    <label for="id">아이디</label>
                </h3>
                <span class="box int_id">
                    <input type="text" name="id" id="id" class="int" maxlength="20">
	               	<span class="check_font" id="id_check"></span>
                </span>
             </div>
                    <!-- Ajax-템플릿 -->
<!--                     <span class="step_url"></span> -->
<!--                     <span class="error_next_box"></span> -->
            
             <!-- PW1 -->
             <div>
                    <h3 class="join_title"><label for="pswd1">비밀번호</label></h3>
                    <span class="box int_pass">
                        <input type="password" id="pswd1" name="pw" class="int" maxlength="20">
                        <span id="alertTxt">사용불가</span>
                        <img src="${pageContext.request.contextPath}/resources/main/assets/join/m_icon_pass.png" id="pswd1_img1" class="pswdImg">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- PW2 -->
                <div>
                    <h3 class="join_title"><label for="pswd2">비밀번호 재확인</label></h3>
                    <span class="box int_pass_check">
                        <input type="password" id="pswd2" name="pw2" class="int" maxlength="20">
                        <img src="${pageContext.request.contextPath}/resources/main/assets/join/m_icon_check_disable.png" id="pswd2_img1" class="pswdImg">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- NAME -->
                <div>
                    <h3 class="join_title"><label for="name">이름</label></h3>
                    <span class="box int_name">
                        <input type="text" id="name" name="name" class="int" maxlength="20">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- GENDER -->
                <div>
                    <h3 class="join_title"><label for="gender">성별</label></h3>
                    <span class="box gender_code">
                        <select id="gender" name="gender" class="sel">
                            <option value="성별">성별</option>
                            <option value="male">남자</option>
                            <option value="female">여자</option>
                        </select>                            
                    </span>
                    <span class="error_next_box">필수 정보입니다.</span>
                </div>

                <!-- EMAIL -->
                <div>
                    <h3 class="join_title"><label for="email">이메일<span class="optional"></span></label></h3>
                    <span class="box int_email">
                        <input type="email" id="email" name="email" class="int" maxlength="40" placeholder="선택입력">
                    </span>
                    <span class="error_next_box">이메일 주소를 다시 확인해주세요.</span>    
                </div>

                <!-- Address -->
                <div>
                    <h3 class="join_title"><label for="email">주소<span class="optional"></span></label></h3>
                    <span class="box int_email">
                        <input type="text" id="zipcode" class="intZip" maxlength="10"  width="60px" readonly="readonly">
                        <input type="button" class="addrButton" onclick="searchPostal()" value="우편번호 검색" >
                    </span>
                    <span class="error_next_box"></span>    
                </div>
                <br>

                <div>
<!--                     <h3 class="join_title"><label for="email">주소<span class="optional"></span></label></h3> -->
                    <span class="box int_email">
                        <input type="text" id="baseAddr" name="addr1" class="int" maxlength="100" width="60px">
                    </span>
                    <span class="error_next_box"></span>    
                </div>
                <br>
                <div>
<!--                     <h3 class="join_title"><label for="email">주소<span class="optional"></span></label></h3> -->
                    <span class="box int_email">
                        <input type="text" id="detailAddr" name="addr2" class="int" maxlength="100" placeholder="상세주소" width="60px">
                    </span>
                    <span class="error_next_box"></span>    
                </div>
                        <input type="hidden" id="extraAddress">
                        <input type="hidden" id="jibunAddress">

                <!-- MOBILE -->
                <div>
                    <h3 class="join_title"><label for="phoneNo">휴대전화</label></h3>
                    <span class="box int_mobile">
                        <input type="text" id="mobile" name=phone class="int" maxlength="11" placeholder=" - 없이 입력">
                    </span>
                    <span class="error_next_box"></span>    
                </div>


                <!-- JOIN BTN-->
                <div class="btn_area">
					<input type="button" id="btnJoin" value="가입하기" onclick="joinValidation()">
                </div>
                </form>
            </div> 
            <!-- content-->
			
        </div> 
        <!-- wrapper -->
    
    
	<!-- 아이디 중복 체크 -->
	<script type="text/javascript">		
	$('#id').blur(function(){
		var id = document.joinForm.id.value;
		$.ajax({
			url : '${pageContext.request.contextPath}/member/idCheck?id='+id,
			type : 'get',
			success : function(data){
					
				if (data == 1) {
						// 1 : 아이디가 중복되는 문구
						$("#id_check").text("이미 사용중인 아이디입니다.");
						$("#id_check").css("color", "red");
				} else {
						
					if(id == ""){
						// 0 : 아이디 길이 / 문자열 검사
						$("#id_check").text("아이디를 입력하세요.");
			
					} else if(id.length < 4){
						$('#id_check').text('아이디를 4자 이상 입력하세요.');
						$('#id_check').css('color', 'red');
						
					} else {
						
						$('#id_check').text("사용 가능한 아이디 입니다.");
						$('#id_check').css('color', 'red');
					}
				}
				}
			});
		});
	</script>
    </body>
</html>