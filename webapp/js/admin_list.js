//해당 상품을 장바구니에서 삭제(장바구니 페이지)
$('a[class^=remove]').click(function() {
	let book_id = $(this).attr('class').split("remove_")[1];
	if(confirm("해당 항목을 장바구니에서 삭제합니다.")){
		$.ajax({
			type: 'delete',
			url: '/hotSalt/cart/' + book_id,
			dataType:'text',
			success: function(data) {
				if(data!='error'){
					location.href="/hotSalt/cart"
				}else{
					alert('서버와 통신 중 오류가 발생했습니다.')
				}
			}
		})
	}
})

// 체크박스 이벤트
$('#chkAll').change(function() {
	$('input[id^=chk_]').each(function() {
		$(this).prop('checked', $('#chkAll').is(":checked"));
	})
	recalc();
})

$('input[id^=chk_]').change(function() {
	let chk = true;
	$('input[id^=chk_]').each(function() {
		if(!$(this).is(":checked")){
			chk = false;
			return false;
		};
	})
	
	$('#chkAll').prop('checked', chk);
	recalc();
})
