// 장바구니 추가
$('a.addToCart, #modal-buy').click(function() {
	let book_id = $(this).parent().parent().prev().val();
	let qty = 1;
	
	if(book_id == ''){
		console.log('book_id 값을 불러오지 못했습니다. 장바구니에 추가하지 못했습니다.')
		return false;
	}

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
	let cate1 = 'all'
	if($('#titleOrAuthor').val().trim() ==''){
		alert('검색어를 입력해주세요.')
	}else{
		location.href="/hotSalt/search?cate1=" + cate1 + '&titleOrAuthor=' + $('#titleOrAuthor').val().trim()
			+ "&grid-list=" + $('#grid-list').val()
	}
})

$('.wedget__title').next().find('li').click(function() {
	let cate1 = $(this).text();
	if(cate1.trim() == '전체'){
		cate1 = 'all';
	}
	location.href="/hotSalt/search?cate1=" + cate1;
})

$('#price-filter').click(function() {
	goTo();
})

// quickview 버튼 클릭시
$('i.bi.bi-search').parent().click(function() {
	var $p = $(this).parent().parent().parent().parent().parent().parent();
	$('#modal-img').attr('src',($p.find('.first__img img').attr('src')));
	$('#modal-title').text($p.find('.product__content a').text());
	$('#modal-d_price').text($p.find('.product__content .prize li:eq(0)').text());
	$('#modal-price').text($p.find('.product__content .prize li:eq(1)').text());
	$('#modal-info').text($p.find('input.info').val().substr(0, 300));
	$('div.review').text($p.find('input.review').val());
	$('#modal-buy').attr('class', 'modal-buy_' + $p.find('input.seq').val());
	$('#book_id').val($p.find('input.seq').val());
})

$('ul.wn__pagination li:not(.active) a').click(function() {
	goTo($(this).text());
});

function goTo(pg) {
	let pg2 = 1;
	if(pg){
		pg2 = pg;
	}
	let orderBy = $('#order_select').val()
	let cate1 = $('#cate1').val();
	if(cate1.trim() == '전체'){
		cate1 = 'all';
	}
	let cate2 = $('#cate2').val();
	if(cate2.trim() == ''){
		cate2 = 'all';
	}
	var data = {
		cate1:	cate1,
		cate2:	cate2,
		pg: 	pg2,
		min:	$('#slider-range').slider('values', 0),
		max:	$('#slider-range').slider('values', 1),
		orderBy:orderBy,
		grid_list:$('#grid_list').val()
	}
	if($('#titleOrAuthor').val().trim()!=''){
		data.titleOrAuthor = $('#titleOrAuthor').val().trim();
	}
	location.href="/hotSalt/search?" + $.param(data);
}

$('#titleOrAuthor').keydown(function(key) {
	if (key.keyCode == 13) {
        $('#btn-search').trigger('click');
   }
});

$('#order_select').change(function() {
	goTo();
})

// wishlist에 추가
$('a.wishlist').click(function() {
	let book_id = $(this).parent().parent().prev().val();
	console.log(book_id);
	if(book_id == ''){
		console.log('book_id 값을 불러오지 못했습니다. 찜한 상품 목록에 추가하지 못했습니다.')
		return false;
	}
	
	$.ajax({
		type: 'post',
		url: '/hotSalt/wishlist',
		contentType: "application/x-www-form-urlencoded; charset=UTF-8",
		data: {	'book_id': book_id},
		dataType:'text',
		success: function(data) {
			var Ca = /\+/g;
			alert(decodeURIComponent(data.replace(Ca, " ")));
		}
	})
})
