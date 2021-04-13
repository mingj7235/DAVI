
var resultCheckId;
var arrFlag = [];
arrFlag[0] = false;

//아이디 유효성 검사(1 = 중복 / 0 != 중복)
$("#memberId").blur(function() {
	let inputId = $("#memberId");
	let text = $("#idText");	
	let regExp = /^[A-Za-z0-9_]{6,20}$/;
	
	if(!regExp.test($(this).val())){
		console.log("not");
		text.css("color", "#ff6347");
		text.text("영문,숫자 6~20자리");
		arrFlag[0] = false;
		return false;
	}
	
	$.ajax({
		type: "get",
		url : path + "/member/checkId.me",
		data:{
			"memberId" : text.val()			
		},
		success : function(result) {			
			if($.trim(result) == 1){
				resultCheckId = true;
				text.css("color", "#3cb371");
				text.text("사용 가능한 ID입니다");
				arrFlag[0] = true;
				
			}else{
				resultCheckId = false;
				text.css("color", "#ff6347");
				text.text("사용 중인 ID입니다");
				arrFlag[0] = false;
				
			}				
		},
		error : function(a, b, c){			
			console.log(a + b + c);
		}	
	});		
});

$("#memberPw").keyup(function() {
	
	let regExp = /^[A-Za-z0-9_]{4,20}$/;	
	
	let text = $("#pwText");		
		
	if(regExp.test($(this).val())){
		console.log("ok");
		text.css("color", "#3cb371");
		text.text("사용 가능한 비밀번호 입니다");
		console.log($(this).val());
		arrFlag[1] = true;
	}else{
		console.log("not");
		text.css("color", "#ff6347");
		text.text("사용 불가능한 비밀번호입니다");
		arrFlag[1] = false;
		
	}
});

$("#memberPwCheck").blur(function() {
	
	let pw = $("#memberPw").val();
	let pw2 = $("#memberPwCheck").val();
	let text = $("#pwOkText");
	
	if(pw == pw2){
		console.log("ok");
		text.css("color", "#3cb371");
		text.text("비밀번호가 일치합니다");
		arrFlag[2] = true;
	}else{
		console.log("not");
		text.css("color", "#ff6347");
		text.text("비밀번호가 다릅니다");
		arrFlag[2] = false;
	}
});

$("#memberName").blur(function() {
	
	let text = $("#nameText");
	
	let regExp = /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/;
	if(regExp.test($(this).val())){
		text.css("color", "#3cb371");
		text.text("");
		arrFlag[3] = true;		
	}else{
		console.log("not");
		text.css("color", "#ff6347");
		text.text("유효하지않은 이름입니다");
		arrFlag[3] = false;
	}
});

$("#memberPhone").blur(function() {
	
	let regExp = /^[0-9]{10,11}$/;
	let text = $("#phoneText");
	
	if(regExp.test($(this).val())){
		console.log("ok");
		text.css("color", "#3cb371");
		text.text("");
		arrFlag[4] = true;
	}else{
		console.log("not");
		text.css("color", "#ff6347");
		text.text(" 유효하지않은 번호입니다");
		arrFlag[4] = false;
		
	}
});

$("#memberEmail").blur(function() {
	
	let regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
	let text = $("#emailText");
	
	if(regExp.test($(this).val())){
		console.log("ok");	
		text.css("color", "#3cb371");
		text.text("");
		arrFlag[5] = true;
	}else{
		console.log("not");
		text.css("color", "#ff6347");
		text.text(" 유효하지않은 Email입니다");
		arrFlag[5] = false;	
	}
});
function formOk() {	
	for(let i=0;i<6;i++){		
		if(arrFlag[i] == false){
			alert("입력 양식이 틀렸습니다. 확인해주세요");
			return false;
		}		
	}
	$("#join").submit();
}
