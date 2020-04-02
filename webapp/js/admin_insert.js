
$('#btn-admin_insert').click(function(){
	$('#titleDiv').empty();
	$('#authorDiv').empty();
	$('#publisherDiv').empty();
	$('#publicationDateDiv').empty();
	$('#ISBNDiv').empty();
	$('#pagesDiv').empty();
	$('#weightDiv').empty();
	$('#sizeDiv').empty();
	$('#priceDiv').empty();
	$('#ddpriceDiv').empty();
	$('#stockDiv').empty();
	
	//상품등록 유효성 검사
	if($('#title').val()==''){
		$('#titleDiv').text('도서명을 입력하세요').css('color','red').css('font-size','8pt').css('font-weight','bold')
	}else if($('#author').val()==''){
		$('#authorDiv').text('저자명을 입력하세요').css('color','red').css('font-size','8pt').css('font-weight','bold')		
	}else if($('#pub').val()==''){
		$('#publisherDiv').text('출판사를 입력하세요').css('color','red').css('font-size','8pt').css('font-weight','bold')		
	}else if($('#p_date').val()==''){
		$('#publicationDateDiv').text('출간일을 입력하세요').css('color','red').css('font-size','8pt').css('font-weight','bold')		
	}else if($('#ISBN10').val()=='' && $('#ISBN13').val()=='' ){
		$('#ISBNDiv').text('ISBN10 또는 ISBN13을 입력하세요').css('color','red').css('font-size','8pt').css('font-weight','bold')		
	}else if($('#page').val()==''){
		$('#pagesDiv').text('쪽수 입력하세요').css('color','red').css('font-size','8pt').css('font-weight','bold')	
	}else if($('#weight').val()==''){
		$('#weightDiv').text('책무게를 입력하세요').css('color','red').css('font-size','8pt').css('font-weight','bold')	
		
	}else if($('#book_size').val()==''){
		$('#sizeDiv').text('책크기를 입력하세요').css('color','red').css('font-size','8pt').css('font-weight','bold')	
		
	}else if($('#price').val()==''){
		$('#priceDiv').text('정가를 입력하세요').css('color','red').css('font-size','8pt').css('font-weight','bold')
		
	}else if($('#dprice').val()==''){
		$('#ddpriceDiv').text('판매가를 입력하세요').css('color','red').css('font-size','8pt').css('font-weight','bold')
		
	}else if($('#stock').val()==''){
		$('#stockDiv').text('재고량을 입력하세요').css('color','red').css('font-size','8pt').css('font-weight','bold')	
	}else{
		//상품 정보 전송
		document.adminInsertForm.submit();

		alert('상품등록 완료');
	}
	
});