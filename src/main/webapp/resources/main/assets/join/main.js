//회원가입 

//주소 검색
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
