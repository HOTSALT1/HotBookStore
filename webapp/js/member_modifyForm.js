let chk;
$('#pwd').keyup(function(){
	chk=true;
	var v = /[!@#$%^&*]/;
	var v2 = /[!A-Z]/;
	
	$('#pwd-chk').empty();
	$('#repwd-chk').empty();
	
	if($('#pwd').val()==''){
			$('#pwd-chk').text('비밀번호를 입력해주세요.')
			chk=false;
		}else if($('#pwd').val().length<8 ||!v.test($('#pwd').val()) || !v2.test($('#pwd').val())){
			$('#pwd-chk').text('비밀번호는 특수문자 포함 8자 이상 입력해 주세요.').css('color','#f56a6a')
			.css('font-size','9pt')
			.css('font-weight','bold');
			chk=false;
			
		}else{
			$('#pwd-chk').text('')
	}
})

$('#repwd').keyup(function(){
	if($('#pwd').val()!=$('#repwd').val()){
		$('#repwd-chk').text('비밀번호가 일치하지 않습니다.').css('color','#f56a6a')
		.css('font-size','9pt')
		.css('font-weight','bold');
	}else{
		$('#repwd-chk').text('')
	}
})
	

$('#modify-btn').click(function(){
	
	if(chk==true){
		$.ajax({
			type : 'post',
			data : {'id':$('#id').val(), 'pwd' : $('#pwd').val(), 'zipcode' : $('#zipcode').val(), 'addr1':$('#addr1').val(), 'addr2':$('#addr2').val(), 'addr3':$('#addr3').val()},
			url : '/hotSalt/member_modify',
			dataType : 'text',
			success : function(data){
				if(data=="succes"){
					alert("회원정보가 수정되었습니다.")
					location.href = '/hotSalt/index';
				}else {
					alert("회원정보 수정 실패 ")
				}
			}
		})
	}else{
		alert("비밀번호는 필수 입력입니다.")
	}
	
})