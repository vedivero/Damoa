//회원가입 
/*변수 선언*/

function searchPostal(){
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 참고 항목 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }

            //우편번호
            document.getElementById('zipcode').value = data.zonecode;
            //기본주소
            document.getElementById("baseAddr").value = roadAddr;
            //상세주소
            document.getElementById("jibunAddress").value = data.jibunAddress;
            
            // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
            if(roadAddr !== ''){
                document.getElementById("extraAddress").value = extraRoadAddr;
            } else {
                document.getElementById("extraAddress").value = '';
            }

            var guideTextBox = document.getElementById("guide");
            // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
            if(data.autoRoadAddress) {
                var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                guideTextBox.style.display = 'block';

            } else if(data.autoJibunAddress) {
                var expJibunAddr = data.autoJibunAddress;
                guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                guideTextBox.style.display = 'block';
            } else {
                guideTextBox.innerHTML = '';
                guideTextBox.style.display = 'none';
            }
        }
    }).open();
}

var id = document.querySelector('#id');

var pw1 = document.querySelector('#pswd1');
var pwMsg = document.querySelector('#alertTxt');
var pwImg1 = document.querySelector('#pswd1_img1');

var pw2 = document.querySelector('#pswd2');
var pwImg2 = document.querySelector('#pswd2_img1');
var pwMsgArea = document.querySelector('.int_pass');

var userName = document.querySelector('#name');

var gender = document.querySelector('#gender');

var email = document.querySelector('#email');

var mobile = document.querySelector('#mobile');

var error = document.querySelectorAll('.error_next_box');

var addr1 = document.querySelector('#addr1');
var addr2 = document.querySelector('#addr2');

//회원가입 유효성 체크

function joinValidation(){
	
	let f = document.joinForm;
	let id = f.id.value;
	let pw = f.pw.value;
	let pw2 = f.pw2.value;
	let name = f.name.value;
	let gender = f.gender.value;
	let email = f.email.value;
	let addr1 = f.addr1.value;
	let addr2 = f.addr2.value;
	
	if(!id){
		alert("아이디를 입력해주세요");
		$("#id").focus();
	}else if(!pw){
		alert("비밀번호를 입력해주세요");
		$("#pswd1").focus();
	}else if(!pw2){
		alert("위와 동일한 비밀번호를 입력해주세요");
		$("#pswd2").focus();
	}else if(!name){
		alert("이름을 입력해주세요");
		$("#name").focus();	
	}else if(gender==null){
		alert("성별을 선택해주세요");
		$("#gender").focus();
	}else if(!email){
		alert("이메일을 입력해주세요");
		$("#email").focus();	
	}else if(!addr1){
		alert("주소를 입력해주세요");
		$("#zipcode").focus();
	}else if(!addr2){
		alert("상세주소를 입력해주세요");	
		$("#baseAddr").focus();
	}else if(!mobile){
		alert("휴대전화를 입력해주세요");
		$("#mobile").focus();
	}else{
		alert("회원가입이 완료 되었습니다");
		document.joinForm.submit();
	}
}

/*이벤트 핸들러 연결*/

id.addEventListener("change", checkId);
pw1.addEventListener("change", checkPw);
pw2.addEventListener("change", comparePw);
userName.addEventListener("change", checkName);
gender.addEventListener("change", function() {
    if(gender.value === "성별") {
        error[5].style.display = "block";
    } else {
        error[5].style.display = "none";
    }
})
email.addEventListener("change", isEmailCorrect);
mobile.addEventListener("change", checkPhoneNum);



/*콜백 함수*/

function checkId() {
    var idPattern = /[a-zA-Z0-9_-]{5,20}/;
    if(id.value === "") {
        error[0].innerHTML = "필수 정보입니다.";
        error[0].style.display = "block";
    }else if(!idPattern.test(id.value)) {
        error[0].innerHTML = "5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.";
        error[0].style.display = "block";
    } else {
        error[0].innerHTML = "멋진 아이디네요!";
        error[0].style.color = "#08A600";
        error[0].style.display = "block";
    }
}

function checkPw() {
    var pwPattern = /[a-zA-Z0-9~!@#$%^&*()_+|<>?:{}]{8,16}/;
    if(pw1.value === "") {
        error[1].innerHTML = "필수 정보입니다.";
        pwMsg.style.display = "block";
        pwMsgArea.style.paddingRight = "40px";
        pwImg1.src = "/resources/main/assets/join/m_icon_pass.png";
        error[1].style.display = "block";
    } else if(!pwPattern.test(pw1.value)) {
        error[1].innerHTML = "8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.";
        pwMsg.innerHTML = "사용불가";
        pwMsgArea.style.paddingRight = "93px";
        error[1].style.display = "block";
        pwMsg.style.color = "red";
        pwMsg.style.display = "block";
        pwImg1.src = "/resources/main/assets/join/m_icon_not_use.png";
    } else {
        error[1].style.display = "none";
        pwMsg.innerHTML = "사용 가능";
        pwMsgArea.style.paddingRight = "93px";
        pwMsg.style.color = "#03c75a";
        pwMsg.style.display = "block";
        pwImg1.src = "/resources/main/assets/join/m_icon_safe.png";
    }
}

function comparePw() {
    if(pw2.value === pw1.value && pw2.value != "") {
        pwImg2.src = "/resources/main/assets/join/m_icon_check_enable.png";
        error[1].innerHTML = "비밀번호가 일치합니다.";
        error[2].style.display = "none";
    } else if(pw2.value !== pw1.value) {
        pwImg2.src = "/resources/main/assets/join/m_icon_check_disable.png";
        error[2].innerHTML = "비밀번호가 일치하지 않습니다.";
        error[2].style.display = "block";
    } 

    if(pw2.value === "") {
        error[2].innerHTML = "필수 정보입니다.";
        error[2].style.display = "block";
    }
}

function checkName() {
    var namePattern = /[a-zA-Z가-힣]/;
    if(userName.value === "") {
        error[3].innerHTML = "필수 정보입니다.";
        error[3].style.display = "block";
    } else if(!namePattern.test(userName.value) || userName.value.indexOf(" ") > -1) {
        error[3].innerHTML = "한글과 영문 대 소문자를 사용하세요. (특수기호, 공백 사용 불가)";
        error[3].style.display = "block";
    } else {
        error[3].style.display = "none";
    }
}



function isEmailCorrect() {
    var emailPattern = /[a-z0-9]{2,}@[a-z0-9-]{2,}\.[a-z0-9]{2,}/;

    if(email.value === ""){ 
        error[6].style.display = "none"; 
    } else if(!emailPattern.test(email.value)) {
        error[6].style.display = "block";
    } else {
        error[6].style.display = "none"; 
    }

}

function checkPhoneNum() {
    var isPhoneNum = /([01]{2})([01679]{1})([0-9]{3,4})([0-9]{4})/;

    if(mobile.value === "") {
        error[7].innerHTML = "필수 정보입니다.";
        error[7].style.display = "block";
    } else if(!isPhoneNum.test(mobile.value)) {
        error[7].innerHTML = "형식에 맞지 않는 번호입니다.";
        error[7].style.display = "block";
    } else {
        error[7].style.display = "none";
    }

    
}

var id = document.querySelector('#id');
var pw1 = document.querySelector('#pswd1');
var pw2 = document.querySelector('#pswd2');
var yourName = document.querySelector('#name');
var email = document.querySelector('#email');
var mobile = document.querySelector('#mobile');
var error = document.querySelectorAll('.error_next_box');

var pattern_num = /[0-9]/;
var pattern_spc = /[~!@#$%^&*()_+|<>?:{}]/;


id.onchange = checkId;
pw1.onchange = checkPw;
pw2.onchange = comparePw;
yourName.onchange = checkName;


function checkId() {
    var idPattern = /[a-zA-Z0-9_-]{5,20}/;
    if(id.value === "") {
        error[0].innerHTML = "필수 정보입니다.";
        error[0].style.display = "block";
    } else if(!idPattern.test(id.value)) {
        error[0].innerHTML = "5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.";
        error[0].style.display = "block";
    } else {
        error[0].innerHTML = "멋진 아이디네요!";
        error[0].style.color = "#08A600";
        error[0].style.display = "block";
    }
}

function checkPw() {
    var pwPattern = /[a-zA-Z0-9~!@#$%^&*()_+|<>?:{}]{8,16}/;
    if(pw1.value === "") {
        error[1].innerHTML = "필수 정보입니다.";
        pwMsg.style.display = "block";
        pwMsgArea.style.paddingRight = "40px";
        pwImg1.src = "/resources/main/assets/join/m_icon_pass.png";
        error[1].style.display = "block";
    } else if(!pwPattern.test(pw1.value)) {
        error[1].innerHTML = "8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.";
        pwMsg.innerHTML = "사용불가";
        pwMsgArea.style.paddingRight = "93px";
        error[1].style.display = "block";
        pwMsg.style.color = "red";
        pwMsg.style.display = "block";
        pwImg1.src = "/resources/main/assets/join/m_icon_not_use.png";
    } else {
        error[1].style.display = "none";
        pwMsg.innerHTML = "사용가능"; 	
        pwMsgArea.style.paddingRight = "93px";
        pwMsg.style.color = "#03c75a";
        pwMsg.style.display = "block";
        pwImg1.src = "/resources/main/assets/join/m_icon_safe.png";
    }
}

function comparePw() {
    if(pw2.value === pw1.value) {
        pwImg2.src = "/resources/main/assets/join/m_icon_check_enable.png";
        error[2].style.display = "none";
    } else if(pw2.value !== pw1.value) {
        pwImg2.src = "/resources/main/assets/join/m_icon_check_disable.png";
        error[2].innerHTML = "비밀번호가 일치하지 않습니다.";
        error[2].style.display = "block";
    } 

    if(pw2.value === "") {
        error[2].innerHTML = "필수 정보입니다.";
        error[2].style.display = "block";
    }
}

function checkName() {
    var namePattern = /[a-zA-Z가-힣]/;
    if(userName.value === "") {
        error[3].innerHTML = "필수 정보입니다.";
        error[3].style.display = "block";
    } else if(!namePattern.test(userName.value) || userName.value.indexOf(" ") > -1) {
        error[3].innerHTML = "한글과 영문 대 소문자를 사용하세요. (특수기호, 공백 사용 불가)";
        error[3].style.display = "block";
    } else {
        error[3].style.display = "none";
    }
}

function isEmailCorrect() {
    var emailPattern = /[a-z0-9]{2,}@[a-z0-9-]{2,}\.[a-z0-9]{2,}/;

    if(email.value === ""){ 
        error[6].style.display = "none"; 
    } else if(!emailPattern.test(email.value)) {
        error[6].style.display = "block";
    } else {
        error[6].style.display = "none"; 
    }

}

function checkPhoneNum() {
    var isPhoneNum = /([01]{2,})([01679]{1,})([0-9]{3,4})([0-9]{4})/;

    if(mobile.value === "") {
        error[7].innerHTML = "필수 정보입니다.";
        error[7].style.display = "block";
    } else if(!isPhoneNum.test(mobile.value)) {
        error[7].innerHTML = "형식에 맞지 않는 번호입니다.";
        error[7].style.display = "block";
    } else {
        error[7].style.display = "none";
    }

}