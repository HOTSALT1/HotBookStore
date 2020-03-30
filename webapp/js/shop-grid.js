// 장바구니 추가
$('a.addToCart').click(function() {
	let book_id = $(this).parent().parent().prev().val();
	let qty = 1;

	$.ajax({
		type: 'post',
		url: '/hotSalt/cart',
		data: {	'book_id': book_id,
				'qty': qty},
		dataType:'text',
		success: function(data) {
			if(data!='error'){
				if(confirm("장바구니에 상품이 담겼습니다. 바로 확인하시겠습니까?")){
					location.href="/hotSalt/cart"
				}
			}else{
				alert('서버와 통신 중 오류가 발생했습니다.')
			}
		}
	})
})