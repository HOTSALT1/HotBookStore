// 주소 검색 버튼 클릭시 이벤트 처리 - getAddr 연계
$('#btn-addr').click(function() {
	getAddr($('#receiver'));
})

function getAddr($parentTag) {
	new daum.Postcode({
		oncomplete: function(data) {
			$parentTag.find('input[id$=zonecode]').val(data.zonecode);
			$parentTag.find('input[id$=address]').val(data.address);
			$parentTag.find('input[id$=jibunAddress]').val(data.jibunAddress);
			$parentTag.find('input[id$=zonecode]').val(data.zonecode);
			
			$parentTag.find('input[id$=detailAddress]').focus();
		}
	}).open();
}

// 배송지 정보와 동일하게 주문고객 정보 입력(이름, 연락처)
$('#chk-same').change(function() {
	if($(this).is(":checked")){
		$('#name').val($('#r_name').val()).prop('readonly','readonly');
		$('#tel').val($('#r_tel1').val()).prop('readonly','readonly');
	}else{
		$('#name').removeAttr('readonly');
		$('#tel').removeAttr('readonly');
	}
})

$('#r_name').change(function() {
	if($('#chk-same').is(":checked")){
		$('#name').val($(this).val());
	}
})

$('#r_tel1').change(function() {
	if($('#chk-same').is(":checked")){
		$('#tel').val($(this).val());
	}
})


// 문화비 소득 공제 신청시 하위 div 태그를 보여주기
$('#tax').change(function() {
	if($(this).is(":checked")){
		$('#tax_info').slideDown(300);
	}else{
		$('#tax_info').slideUp(300);
	}
})

// 결제 수단 선택시 첫 번째 하위 결제 수단 자동 선택
$('div[id^=heading]').click(function() {
	$(this).next().find('input:first').trigger('click');
})


/* 결제 유효성 검사 */
$('#btn-confirm').click(function() {
	
	let chk = true;
	/* 배송지 정보, 주문고객 정보 필수 입력사항 확인 */
	$('.customar__field .not-null').each(function() {
		if($(this).val()==''){
			alert( $(this).prev().text().split("*")[0].trim() + '은(는) 필수 입력사항입니다.');
			$(this).focus();
			chk = false;
			return false;
		}else{
			if($(this).attr('id') == 'r_tel1'){
				let v = /[0-9]{2,3}-?[0-9]{3,4}-?[0-9]{4}/;
				if(v.test($(this).val().trim()) == false){
					$(this).focus();
					chk = false;
					alert('연락처 형식이 올바르지 않습니다.')
					return;
				}
			}
		}
	});
	if(!chk) return false;
	
	// 주문자 연락처 확인
	let v = /[0-9]{2,3}-?[0-9]{3,4}-?[0-9]{4}/;
	if($('#tel').val().trim() != '' && v.test($('#tel').val().trim()) == false){
		$(this).focus();
		chk = false;
		alert('연락처 형식이 올바르지 않습니다.')
		return;
	}
	
	/* 문화비소득공제 확인 */
	if($('#tax').is(":checked") && $('#tax_num').val().trim() == '')  {
		alert('문화비소득공제를 신청하시는 경우 휴대폰번호 또는 사업자번호를 입력해주세요.');
		$('#tax_num').focus();
		return false;
	}
	
	/* 구매 동의 체크 확인 */
	if(!$('#chk-confirm').is(":checked")){
		$('#chk-confirm').focus();
		alert('구매 동의 버튼을 클릭하셔야 구매가 가능합니다.');
		return false;
	}
	
	/* 구매 코드 실행 */
	let pg = 'inicis';
	let method = '';
	if($('#chk-pay11').is(":checked")){
		method = 'card';
	}else if($('#chk-pay21').is(":checked")){
		method = 'bank';
	}else if($('#chk-pay22').is(":checked")){
		method = 'vbank';
	}else if($('#chk-pay31').is(":checked")){
		method = 'easy';
		pg = 'kakao';
	}else if($('#chk-pay32').is(":checked")){
		method = 'npay';
		pg = 'payapp';
	}
	
	var data = new Object();
	if($('#tax').is(":checked")){
		data.tax_ref = $('#tax_num').val();
	}
	data.zipcode = $('#zonecode').val();
	data.addr_new = $('#address').val();
	data.addr_old = $('#jibunAddress').val();
	data.addr_detail = $('#detailAddress').val();
	data.r_tel1 = $('#r_tel1').val();
	data.r_tel2 = $('#r_tel2').val();
	data.delivery_msg = $('#r_message').val();
	data.receiver = $('#r_name').val();
	data.buyer = $('#name').val();
	data.tel = $('#tel').val();
	
	$.ajax({
		type:"post",
		url:"/hotSalt/order-info",
		data:data,
		async: false
	})
	
	paymentTest(pg, method);
	
});

function paymentTest(pg, method) {
	var order_price = getNumbers($('#order_price').text());
	//order_price = 100;
	var order_name = $('.bookName:first input[id^=title_]').val();
	
	var order_items = new Array();
	$('.bookName').each(function() {
		var book = new Object();
		book.item_name = $(this).find('input[id^=title_]').val();
		book.qty = $(this).find('input[id^=qty_]').val();
		book.price = $(this).find('input[id^=d_price_]').val();
		book.unique = $(this).find('input[id^=seq_]').val();
		
		order_items.push(book);
	})
	
	BootPay.request({
		price: order_price, //실제 결제되는 가격
		application_id: "5e65905102f57e00224b483e",
		name: order_name, //결제창에서 보여질 이름
		pg: pg,
		method: method, //결제수단, 입력하지 않으면 결제수단 선택부터 화면이 시작합니다.
		show_agree_window: 0, // 부트페이 정보 동의 창 보이기 여부
		items: order_items,
		user_info: {
			username: $('#name').val(),
			email: $('#email').val(),
			addr: '(' + $('#zonecode').val() + ') ' + $('#address').val()+ $('#detailAddress').val().trim(),
			phone: getNumbers($('#tel').val())
		},
		order_id: $('#order_id').val(), //고유 주문번호로, 생성하신 값을 보내주셔야 합니다.
		params: {callback1: '그대로 콜백받을 변수 1', callback2: '그대로 콜백받을 변수 2', customvar1234: '변수명도 마음대로'},
		account_expire_at: '', // 가상계좌 입금기간 제한 ( yyyy-mm-dd 포멧으로 입력해주세요. 가상계좌만 적용됩니다. )
		extra: {
		    start_at: '', // 정기 결제 시작일 - 시작일을 지정하지 않으면 그 날 당일로부터 결제가 가능한 Billing key 지급
			end_at: '', // 정기결제 만료일 -  기간 없음 - 무제한
	        vbank_result: 0, // 가상계좌 사용시 사용, 가상계좌 결과창을 볼지(1), 말지(0), 미설정시 봄(1)
	        quota: '' // 결제금액이 5만원 이상시 할부개월 허용범위를 설정할 수 있음, [0(일시불), 2개월, 3개월] 허용, 미설정시 12개월까지 허용
		}
	}).error(function (data) {
		//결제 진행시 에러가 발생하면 수행됩니다.
		console.log(data);
	}).cancel(function (data) {
		//결제가 취소되면 수행됩니다.
		console.log(data);
	}).ready(function (data) {
		// 가상계좌 입금 계좌번호가 발급되면 호출되는 함수입니다.
		console.log(data);
	}).confirm(function (data) {
		//결제가 실행되기 전에 수행되며, 주로 재고를 확인하는 로직이 들어갑니다.
		//주의 - 카드 수기결제일 경우 이 부분이 실행되지 않습니다.
		console.log(data);
		var enable = true; // 재고 수량 관리 로직 혹은 다른 처리
		if (enable) {
			BootPay.transactionConfirm(data); // 조건이 맞으면 승인 처리를 한다.
		} else {
			BootPay.removePaymentWindow(); // 조건이 맞지 않으면 결제 창을 닫고 결제를 승인하지 않는다.
		}
	}).close(function (data) {
	    // 결제창이 닫힐때 수행됩니다. (성공,실패,취소에 상관없이 모두 수행됨)
	    console.log(data);
	}).done(function (data) {
		location.href="/hotSalt/verify/"+data.receipt_id
		console.log(data);
	});
}

//---------- getNumbers ---------- 
//문자열에서 숫자로 된 값만 추출
function getNumbers(str){
	return str.replace(/[^0-9]/g,"");
}