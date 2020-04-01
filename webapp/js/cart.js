// 장바구니 추가
$('button.tocart').click(function() {
	let book_id = $('#book_id').val();
	let qty = $('#qty').val();

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

// 장바구니에서 책 수량 변경시
$('input[class^=qty]').change(function() {
	let book_id = $(this).attr('class').split("qty_")[1];
	let qty = $(this).val();
	
	let v = /[^0-9]/;
	if(v.test(qty)){
		alert('입력값이 올바르지 않습니다.')
		qty = 1;
		$(this).val(qty)
	}else if(qty < 1){
		$(this).val(1);
		alert('상품 수량은 1보다 작을 수 없습니다.')
		return false;
	}
	
	let d_price = $('.d_price_' + book_id).text()
	let price = $('.price_' + book_id).text()
	
	$.ajax({
		type: 'post',
		url: '/hotSalt/cart',
		data: {	'book_id': book_id,
				'qty': qty},
		dataType:'text',
		success: function(data) {
			if(data!='error'){
				$('.total_' + book_id).text( setComma(data.split("/")[0]) + "원" );
				
				// 상품 금액 재계산
				recalc();
			}
		}
	})
})

function recalc() {
	let price = 0;
	let total_qty = 0;
	
	$('span[class^="amount price_"]').each(function() {
		if($(this).parent().parent().find('input[id^=chk_]').is(":checked")){
			let qty = $(this).parent().parent().find('input[class^=qty]').val();
			price = price + parseInt(getNumbers($(this).text())) * qty;
			total_qty = total_qty + qty;
		}
	})
	// 상품 할인가(판매가) 재계산
	let d_price = 0;
	$('span[class^="amount d_price_"]').each(function() {
		if($(this).parent().parent().find('input[id^=chk_]').is(":checked")){
			let qty = $(this).parent().parent().find('input[class^=qty]').val();
			d_price = d_price + parseInt(getNumbers($(this).text())) * qty;
			total_qty = total_qty + qty;
		}
	})
	
	$('#price_total').text(setComma(price)+"원");
	$('#d_price_total').text(setComma(price - d_price)+"원");
	
	// 배송비 재계산
	let delivery = 3000;
	if(d_price >= 30000 || total_qty == 0) delivery = 0;
	
	$('#delivery').text(setComma(delivery)+"원")
	$('#order_total').text(setComma(d_price + delivery)+"원")
	
	if(total_qty == 0){
		$('a#checkout').css('display', 'none')
	}else{
		$('a#checkout').css('display', 'inline-block')
	}
}

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

// 해당 상품을 장바구니에서 삭제(navbar)
$('i[id^=remove_]').click(function() {
	let book_id = $(this).attr('id').split("remove_")[1];
	let qty = parseInt(getNumbers($('#qty_'+book_id).text()));
	let selected_price = parseInt(getNumbers($('#d_price_'+book_id).text()));
	
	if(confirm("해당 항목을 장바구니에서 삭제합니다.")){
		$.ajax({
			type: 'delete',
			url: '/hotSalt/cart/' + book_id,
			dataType:'text',
			success: function(data) {
				if(data!='error'){
					
						$('#book_id_'+ book_id).remove();
						
						let book_count = parseInt(getNumbers($('#book_count').text())) - 1;
						$('#book_count2').text(book_count + '개 상품');
						$('#book_count').text(book_count);
						
						let d_price = getNumbers($('#d_price').text());
						$('#d_price').text(d_price - selected_price * qty);
						
						$('#book_id_'+book_id).remove();
						if(book_count > 1){
							$('div[id^=book_id_]:first').removeClass('mt--20')
							$('div[id^=book_id_]:gt(0)').addClass('mt--20')
						}else if(book_count > 0){
							$('div[id^=book_id_]:first').removeClass('mt--20')
						}else{
							$('#no_item').text('카트에 담긴 상품이 없습니다.');
						}
				
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

// 장바구니 페이지에서 주문하기 버튼 클릭시
$('a#checkout').click(function() {
	// Json 배열 선언
	var items = new Array();
	
	// 선택된 항목들을 배열에 담기
	$('input[id^=chk_]').each(function() {
		if($(this).is(":checked")){
			var item = new Object();
			item.cart_id = $(this).next().val();
			item.book_id = $(this).parent().parent().find('.product-quantity input').attr('class').split("qty_")[1];
			item.qty = $(this).parent().parent().find('.product-quantity input').val();
			items.push(item);
		};
	})
	
	// 데이터를 넘기며 주문페이지로 이동
	goCheckout(items);
})

// 상단 메뉴바에서 장바구니에 있는 상품 주문하기 버튼 클릭시
$('a#checkout_all').click(function() {
	if(confirm("장바구니에 담긴 상품들을 바로 주문합니다. 확인 버튼을 누르시면 결제 페이지로 이동합니다.")){
		location.href="/hotSalt/checkout_all"
	}
})


// 바로주문 버튼 클릭시
$('a[id^=buy1_], a[id^=buy2_], .modal-buy').click(function() {
	if(!confirm("해당 상품을 바로 구매하시겠습니까? (확인을 클릭하시면 구매 페이지로 이동합니다.")){
		return false;
	}
	
	// Json 배열 선언
	var items = new Array();
	
	// 선택된 항목을 담기
	var item = new Object();
	//item.cart_id = $(this).next().val();
	item.book_id = $(this).attr('id').split("_")[1];
	item.qty = 1;
	
	items.push(item);
			
	// 데이터를 넘기며 주문페이지로 이동
	goCheckout(items);
})

function goCheckout(items) {
	// post요청(동기화)
	$.ajax({
		type: 'post',
		url: '/hotSalt/checkout',
		contentType : "application/json; charset=utf-8",
		data : JSON.stringify(items),
		dataType:'text',
		async: false,
		success: function(data) {
			if(data!='error'){
				location.href="/hotSalt/checkout"
			}else{
				alert('서버와 통신 중 오류가 발생했습니다.')
			}
		}
	})
}

// ---------- setComma ---------- 
// 숫자에 천단위 구분기호(,) 표시
function setComma (value){
    if (value == null || value == ""){
        return value;
    }
    // 소수점 분리
    var valueArr = value.toString().split(".");
    var str = valueArr[0].toString();
        str = str.replace ( /,/g ,'' );
    var retValue = "";
 
    for(var i = 1; i <= str.length; i++) {
        if ( i > 1 && ( i % 3 ) == 1 )
            retValue = str.charAt ( str.length - i ) + "," + retValue;
        else
            retValue = str.charAt ( str.length - i ) + retValue;
    }
    return retValue + (valueArr.length > 1 ? "." + valueArr[1] : "");
}


// ---------- getNumbers ---------- 
// 문자열에서 숫자로 된 값만 추출
function getNumbers(str){
	return str.replace(/[^0-9]/g,"");
}
