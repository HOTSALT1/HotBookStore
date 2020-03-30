$('.divName').click(function(){
    $('.divName input').focus();
    /* 초기화  */
    $('#con div:gt(0):not(.check-name):not(.signup-btn), .divName').css("border","1px solid #c5c5c5");
    $('#con div:gt(0)').css('border-top','none');
    /* 색상변경 */
    $(this).css("border","1px solid #f56a6a").css("border-radius", "7px 7px 0 0");
});

var activeElement;    
$('#con div:gt(0):not(:last)').click(function(){
	/* :not(:last)마지막 선택자 */
    $('.divName').css("border-radius", "7px 7px 0 0");
    $('#con div:gt(0):not(.check-name):not(.signup-btn), .divName').css("border","1px solid #c5c5c5");
    $('#con div:gt(0)').css('border-top','none');
    $(this).prev().css('border-bottom','none');
    $(this).css("border","1px solid #f56a6a");
    
    if($(this).attr('id')!='gender' && activeElement != $(this).attr('class')){
    	/* 잰더제외 클릭했을때 클릭한 div안에 첫번째 input으로  focus가 간다/※find */
    	$(this).find('input:eq(0)').focus();
    }
    activeElement = $(this).attr('class');
});
   

/* 유효성 검사 */
$('.chk').keyup(function() {
    	 chkValidate($(this))
});
$('.chk').focusout(function() {
    	 chkValidate($(this))
}); 

function chkValidate(selected) {
	/* 초기화  */
 	/* $('.chk').each(function() {
 		$(this).parent().find('span:eq(1)').text('')
		}) */
/* 	
 	if(selected.val()==''){
 		selected.parent().find('span:last').text('필수 입력항목입니다.')
 		
 	}*/
 	/* 선택된 값의 변수 */
	let s_val = selected.val();
	/* 텍스트 변수  */
	let txt; 
	/* 아이디  */
	if(selected.attr('id')=='id'){
		let v = /[^A-Za-z0-9]/;
		/* 값 빈칸일떄  */
		if(s_val==''){
			txt = '아이디를 입력해 주세요.'
		}/* 값 자리수, 입력 조건식  */
		else if(s_val.length<5 || v.test(s_val)){
			txt= '아이디는 최소 5자 이상, 영문자와 숫자로만 입력 가능 합니다'
		}/* 공백을줘라  */
		else {			
			$.ajax({
				type : 'post',
				url : '/hotSalt/checkId',
				data : 'id='+$('#id').val(),
				dataType : 'text',
				success : function(data){
					if(data=='true'){
						$('#check-id').text('이 아이디는 사용가능합니다');
					}else{
						$('#check-id').text('이 아이디는 사용불가능합니다');
					}
				}
			})
		}

	}/* 비밀번호  */
	else if(selected.attr('id')=='pwd'){
		/* 변수  */
		let v = /[!@#$%^&*]/;
		let v2 = /[!A-Z]/;
		/* 값 빈칸일때 */
		if(s_val==''){
			txt='비밀번호를 입력해 주세요.'
		}/* 값 자리수, 입력 조건식  */
		else if(s_val.length<8 || !v.test(s_val) || !v2.test(s_val)){
			txt = '비밀번호는 특수문자 포함 8자 이상 입력해 주세요.'
		}/* 공백을줘라  */
		else{
			txt=''
		}
	}/* 비밀번호확인 */
	else if(selected.attr('id')=='repwd'){
		if($('#pwd').val() != $('#repwd').val()){
			txt='비밀번호가 일치하지 않습니다.'
		}else{
			txt=''
		}
		
	}/* 이름 */
	else if(selected.attr('id')=='name'){
		let v = /[@!#$%^&*]/;
		let v2 = /[0-9]/;
		if(s_val==''){
			txt='이름을 입력해주세요'
		}else if(v.test(s_val)|| v2.test(s_val)){
			txt='한글과 영문 대 소문자를 사용하세요. (특수기호, 숫자, 공백 사용 불가)'
		}else{
			txt=''
		}
	
	}/* 생년월일 */
	else if(selected.attr('id')=='birthYear'){
		let v = /[0-9]{4,5}/;
		if(s_val=='' || !v.test(s_val)){
			txt = '태어난 년도 4자리를 정확히 입력하세요'
		}else if(Number(s_val)>2019){
			txt='미래에서 오셨군요'	
		}else if(Number(s_val)<1901){
			txt='과거에서 오셨군요'	
		}else{
			txt=''
		}
	}else if(selected.attr('id')=='birthMonth'){
		let v = /[0-9]{1,3}/;
		if(s_val=='' || !v.test(s_val)){
			txt = '태어난 월 정확하게 입력하세요.'
		}else{
			txt=''
		}
	}else if(selected.attr('id')=='birthDay'){
		let v = /[0-9]{1,3}/;
		let v2 = /[0]/;
		if(s_val=='' || !v.test(s_val)){
			txt = '태어난 일(날짜) 2자리를 정확하게 입력하세요'
		}else if(v2.test(s_val)){
			txt='생년월일을 다시 확인해 주세요.'
		}else{
			txt=''
		}
	}
	/* 이메일  */
	else if(selected.attr('id')=='mail1'){
		let v = /[^a-zA-Z0-9]/;
		let v2 =  /[ㄱ-ㅎㅏ-ㅣ가-힣\s]/;
		
		if(s_val=='' || v.test(s_val)){
			txt='5~20자의 영문 소문자, 숫자와 특수기호(_), (-)만 사용 가능합니다.'
		}else {
			txt=''
		}
		
	}else if(selected.attr('id')=='mail2'){
		
		let v = /[^a-zA-Z0-9.]/;
		let v2 =  /[ㄱ-ㅎㅏ-ㅣ가-힣\s]/;
		
		if(s_val=='' || v.test(s_val) || v2.test(!s_val)){
			txt='이메일 도메인은 한글, 특수문자는 사용하실 수 없습니다.'
		}else {			
			$.ajax({
				type : 'post',
				url : '/hotSalt/checkEmail',
				data : 'email='+$('#mail1').val()+"@"+$('#mail2').val(),
				dataType : 'text',
				success : function(data){
					if(data!='false'){
						$('#check-mail').text('이 이메일는 사용불가능합니다');
					}else{
						$('#check-mail').text('이 이메일은 사용가능합니다');
					}
				}
			})
		}
		
	}else if(selected.attr('id')=='gender'){
		if(s_val=='성별'){
			txt='성별을 선택해주세요'
		}else{
			txt=''
		}
	}else if(selected.attr('id')=='tel'){
//		숫자만 사용
		let v= /[^0-9]/g
		if(s_val==''){
			txt='번호를 입력해주세요'
		}else if(v.test(s_val)){
			txt='숫자만 사용하실 수 있습니다.'
		}else{
			txt=''
		}
	}
	/*버튼호출*/
	writeCheckAll();
	selected.parent().find('span:last').text(txt).css('color','#f56a6a')
}
/* 버튼유효성색상 */
let chk;
function writeCheckAll(){
	$('#write-button').css("background-color", "#f56a6a")
	chk = true;
	
		
	$('.chk').each(function(){
		if($(this).val()==''){
			$('#write-button').css("background-color", "#a7a4a4");
			chk=false;
			return false
		}
	})
}

$('#write-button').click(function(){
	if(chk){
		alert(chk)
		if($('#birthMonth').val().length==1){
			$('#birthMonth').val('0'+$('#birthMonth').val())
		}
		let birth = $('#birthYear').val()+'/'+$('#birthMonth').val()+'/'+$('#birthDay').val()
		let email = $('#mail1').val()+"@"+$('#mail2').val()

		$('#birth').val(birth)
		$('#email').val(email)
		/* 회원가입 db데이터 넣기 */
		alert($('#writeForm').serialize());
		$.ajax({
			type : 'POST',
			url : '/hotSalt/signup',
			data : $('#writeForm').serialize(),
			dataType : 'json',
			success : function(data){
								
				$('.idx1,.idx2,.idx3,.idx4,.idx5,.idx6,.idx7').css("border","1px solid #c5c5c5");
				$('#card-signup_writeForm').hide();
				$('#carsd-signup_writeForm').css('display','block');
				location.href = '/hotSalt/signup_complete?id='+data.id+'&name='+data.name;
			}
		})
		
	}else if(chk==false){
		alert('회원정보를 모두 입력해주세요')
	}
})
	   
	/* 유효성 검사 
    $('#write-button').click(function(){
    	$('span[id^="check-"]').empty().css('display','none');
     	
    	
    	//if($('#name').val()==''){
    	//if($('input[id=name]').val()==''){
    	if($('#name').val()==''){
    		$('#check-name').text('이름을 입력하세요');
    		$('#check-name').css('display','block')
    		$('#check-name').css('color','red')
    		$('#check-name').css('font-size','9pt')
    	
    	//}else if($('input[name=id]').val()==''){
    	}else if($('#id').val()==''){
    		$('#idDiv').text('아이디를 입력하세요')
    		$('#idDiv').css('color','red')
    		$('#idDiv').css('font-size','8pt')
    		$('#idDiv').css('font-weight','bold')
    		
    	}else if($('#pwd').val()==''){
    		$('#pwdDiv').text('비밀번호를 입력하세요')
    		$('#pwdDiv').css('color','red')
    		$('#pwdDiv').css('font-size','8pt')
    		$('#pwdDiv').css('font-weight','bold')
    		
    	}else if($('#pwd').val() != $('#repwd').val()){
    		$('#repwdDiv').text('비밀번호가 일치하지 않습니다')
    		$('#repwdDiv').css('color','red')
    		$('#repwdDiv').css('font-size','8pt')
    		$('#repwdDiv').css('font-weight','bold')
    	
    	}else if($('#id').val() != $('#check').val()){
    		$('#idDiv').text('중복체크 하세요')
    		$('#idDiv').css('color','red')
    		$('#idDiv').css('font-size','8pt')
    		$('#idDiv').css('font-weight','bold')
    	
    	}else
    		$('form[name=writeForm]').submit();
    		
    }); 
 */