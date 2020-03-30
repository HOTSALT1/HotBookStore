$('#btn-submit').click(function(){
	if($('#member_pwd').val()==''){
		$('#member_pwd_chk').text('비밀번호를 올바르게 입력해주세요.')
	}else{
		$('#mypage_pwd_chk').submit()	
	}
})
//키이벤트 발생 13=엔터키
$(document).keydown(function() {
  if (event.keyCode == '13') {
	  $('#btn-submit').click();
  }
})

$(function() {
	if($('#result').val().trim()!=''){
		alert($('#result').val());
	}
})