$('#imageboardWriteFormBtn').click(function(){
	$('#imageIdDiv').empty();
	$('#imageNameDiv').empty();
	$('#imagePriceDiv').empty();
	$('#imageQtyDiv').empty();
	$('#imgaeContentDiv').empty();
	$('#image1Div').empty();
	
	if($('#imageId').val()=='img_' || $('#imageId').val()==''){
		$('#imageIdDiv').text('상품코드를 입력하세요');
		$('#imageIdDiv').css('color','red');
		$('#imageIdDiv').css('font-size','8pt');
		$('#imageIdDiv').css('font-weight','bold');
	}else if($('#imageName').val()==''){
		$('#imageNameDiv').text('상품명을 입력하세요');
		$('#imageNameDiv').css('color','red');
		$('#imageNameDiv').css('font-size','8pt');
		$('#imageNameDiv').css('font-weight','bold');
	}else if($('#imagePrice').val()==''){
		$('#imagePriceDiv').text('단가를 입력하세요');
		$('#imagePriceDiv').css('color','red');
		$('#imagePriceDiv').css('font-size','8pt');
		$('#imagePriceDiv').css('font-weight','bold');
	}else if($('#imageQty').val() == '' ){
		$('#imageQtyDiv').text('개수를 입력하세요');
		$('#imageQtyDiv').css('color','red');
		$('#imageQtyDiv').css('font-size','8pt');
		$('#imageQtyDiv').css('font-weight','bold');
	}else if($('#imageContent').val() == ''){
		$('#imageContentDiv').text('내용을 입력하세요');
		$('#imageContentDiv').css('color','red');
		$('#imageContentDiv').css('font-size','8pt');
		$('#imageContentDiv').css('font-weight','bold');
	//}else if($('#image1').val() == ''){
		//$('#image1Div').text('이미지 파일이 없습니다');
		//$('#image1Div').css('color','red');
		//$('#image1Div').css('font-size','8pt');
		//$('#image1Div').css('font-weight','bold');
	}else{
		//$('form[name=imageboardWriteForm]').submit();
		
		let formData = new FormData($('#imageboardWriteForm')[0])
		$.ajax({
			type : 'post',
			enctype : 'multipart/form-data',
			processData : false, //데이터를 컨텐트 타입에 맞게 변환 여부
			contentType : false, //요청 컨텐트 타입
			url : '/hotSalt/imageboard/imageboardWrite',
			data : formData,
			success : function(){
				alert('이미지 등록 하였습니다');
				location.href='/hotSalt/imageboard/imageboardList';
			}
		});	
	}
});