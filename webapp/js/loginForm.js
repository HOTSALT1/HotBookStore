$('#loginFormBtn').click(function(){
	$('#loginIdDiv').empty();
	$('#loginPwdDiv').empty();
	
	if($('#loginId').val()==''){
		$('#loginIdDiv').text('아이디를 입력')
						.css('color','#f56a6a')
						.css('font-size','8pt')
						.css('font-weight','bold');
		
	}else if($('#loginPwd').val()==''){
		$('#loginPwdDiv').text('비밀번호를 입력')
						.css('color','#f56a6a')
						.css('font-size','8pt')
						.css('font-weight','bold');
	
	}else{
		$.ajax({
			type : 'post',
			data : {'id' : $('#loginId').val(), 'pwd' : $('#loginPwd').val()},
			url : '/hotSalt/login',
			contentType: "application/x-www-form-urlencoded; charset=UTF-8",
			dataType : 'text',
			success : function(data){
				if(data!="fail"){
					alert(data+"님 환영합니다")
					location.href = '/hotSalt/index';
				}else {
					alert("로그인 실패 아이디 또는 비밀번호가 일치하지 않습니다.")
				}
			}
		})
		
	}
})
//키이벤트 발생 13=엔터키
$(document).keydown(function() {
  if (event.keyCode == '13') {
	  $('#loginFormBtn').click();
  }
})



