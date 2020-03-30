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

$('#btn-search').click(function() {
	let keyword = $('#titleOrAuthor').val();
	let cate1 = $('#cate1').val();
	if (cate1 == ''){
		cate1 = 'all';
	}
	
	if(keyword ==''){
		alert('검색어를 입력해주세요.')
	}else{
		location.href="/hotSalt/search?cate1=" + cate1 + "&titleOrAuthor=" + keyword;
	}
})

$('.wedget__title').next().find('li').click(function() {
	location.href="/hotSalt/search?cate1=" + $(this).text();
})