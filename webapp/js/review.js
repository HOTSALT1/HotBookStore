$('#review_writeBtn').click(function(){
	$('#review_title_div').empty();
	$('#review_content_div').empty();
	
	if($('#title_field').val()==''){// || $('#title_field').length < 1
		$('#review_title_div').text('제목을 적어주세요')
		.css('color','#f56a6a')
		.css('font-size','8pt')
		.css('font-weight','bold');
	}else if($('#quote_field').val()==''){
		$('#review_quote_div').text('인상깊은 한구절 입력')
		.css('color','#f56a6a')
		.css('font-size','8pt')
		.css('font-weight','bold');
	}
	else if($('#content_field').val()==''){
		$('#review_content_div').text('리뷰를 적어주세요')
		.css('color','#f56a6a')
		.css('font-size','8pt')
		.css('font-weight','bold');
	}
//	else
//		$('form[name=review_WriteForm]').submit();
	else{
		var book_id = $('#review_book_id').val();
		$.ajax({
			type : 'post',
			url : '/hotSalt/reviewWrite',
			data : {'book_id':  book_id, 'memId':  $('#review_member_id').val(), 'title':  $('#title_field').val(), 'content':  $('#content_field').val(),'quote':$('#quote_field').val(), 'score':$('#writeScore').val() },
			contentType: "application/x-www-form-urlencoded; charset=UTF-8",
//			async : false,
			success : function(){
				alert("리뷰가 등록되었습니다.");
				location.href = '/hotSalt/single-product?book_id='+book_id;
			}
		})
		
	}//else
});



