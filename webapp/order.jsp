<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="a" value="a" />
    
<link href="https://fonts.googleapis.com/css?family=Jua|Nanum+Gothic|Yeon+Sung&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../css/order-main.css" />
<link rel="stylesheet" href="../css/order.css" />

<!-- 개인정보 수집 이용 동의 / 개인정보 위탁 동의 -->
<h3 class="order-title">정보 수집 및 이용 동의</h3>
<div id="agreementWrap1" class="agreement">
	<span class="span-agreement">개인정보 수집 이용 동의</span>
	<div id="agreementUnit1" class="agreementUnit"></div>
</div>
<div id="agreement_chk1" class="txt-center">
	<span class="chk"></span> <span class="agreement_chk">동의</span>
</div>
<div id="agreementWrap2" class="agreement">
	<span class="span-agreement">개인정보 처리 위탁 동의</span>
	<div id="agreementUnit2" class="agreementUnit"></div>
</div>
<div id="agreement_chk2" class="txt-center">
	<span class="chk"></span> <span class="agreement_chk">동의</span>
</div>
<!-- 개인정보 수집 이용 동의 / 개인정보 위탁 동의 끝 -->

<!-- 상품확인 -->
<h3 class="order-title">주문 상품 확인</h3>
<table id="table-cart" class="order-mainTable">
	<thead>
		<tr>
			<td class="w500px">상품명</td>
			<td class="w100px">정가</td>
			<td class="w100px">할인가</td>
			<td class="w50px">수량</td>
			<td class="w150px">합계</td>
		</tr>
	</thead>
	<tbody>
	<!-- 상품 리스트 시작  -->
		<tr>
			<td class="w500px v-middle">
				<div class="v-middle" style="float:left;">
				<img src="https://secimage.yes24.com/Goods/84659792/70x0" alt="상품 이미지"  />
				</div>
				<div class="v-middle" style="float:left;line-height:80px;">
				<a class="" href="javascript:void(0)">
					상품명1
				</a>
				</div>
			</td>
			<td class="txt-center">10,000원</td>
			<td id="td-p_price2" class="txt-center"><input type="hidden" id="p_price1" value="9000" /> 9,000원</td>
			<td class="txt-center">1</td>
			<td id="td-total_price1" class="txt-center">9,000원</td>
		</tr>
		
		<tr>
			<td class="w500px v-middle">
				<div class="v-middle" style="float:left;">
				<img src="https://secimage.yes24.com/Goods/84659792/70x0" alt="상품 이미지"  />
				</div>
				<div class="v-middle" style="float:left;line-height:80px;">
				<a class="" href="#none">
					상품명2
				</a>
				</div>
			</td>
			<td class="txt-center">10,000원</td>
			<td id="td-p_price2" class="txt-center"><input type="hidden" id="p_price2" value="7000" /> 7,000원</td>
			<td class="txt-center">2</td>
			<td id="td-total_price2" class="txt-center">9,000원</td>
		</tr>
	<!-- 상품 리스트 끝  -->
	</tbody>
	<tfoot>
		<tr>
			<td class="txt-center" colspan="6">상품 배송은 영업일 기준 약 2~3일 소요됩니다.</td>
		</tr>
	</tfoot>
</table>
<table id="table-order-totalAmount" class="table-order-totalAmount">
	<tbody>
		<tr>
			<td class="td-name">총 상품금액</td>
			<td class="td-symbol" rowspan="2">+</td>
			<td class="td-name">총 추가금액</td>
			<td class="td-symbol" rowspan="2">-</td>
			<td class="td-name">총 할인금액</td>
			<td class="td-symbol" rowspan="2">=</td>
			<td class="td-name td-total">최종 결제금액</td>
		</tr>
		<tr>
			<td class="td-content">???원</td>
			<td class="td-content">???원</td>
			<td class="td-content">???원</td>
			<td class="td-content">???원</td>
		</tr>
	</tbody>
</table>
<!-- 상품확인 끝 -->

<!-- 배송지 정보 입력부 시작 -->
<h3 class="order-title">배송지 정보 확인<span class="explain">(*표는 필수 입력사항)</span></h3>
<table id="table-orderAddr" class="order-mainTable order-addr">
	<tbody>
		<tr>
			<td class="td-order_subject">받으실 분 이름(*)</td>
			<td><input type="text" name="order-name" id="order-name" class="input-txt1 not-null"/></td>
		</tr>
		<tr>
			<td class="td-order_subject">배송 주소(*)</td>
			<td>
				<input type="text" name="order-zipcode" id="order-zipcode" class="w80px" readOnly/><a href="#none" class="order-bw" onclick="getAddr()">주소 찾기</a> <br />
				<span class="span-tab1">도로명 주소 </span><input type="text" name="order-addr1" id="order-addr1" class="input-addr not-null" readOnly/><br />
				<span class="span-tab1">지번 주소</span><input type="text" name="order-addr2" id="order-addr2" class="input-addr" readOnly/><br />
				<span class="span-tab1">상세 주소</span><input type="text" name="order-addr3" id="order-addr3" class="input-addr not-null"/>
			</td>
		</tr>
		<tr>
			<td class="td-order_subject">핸드폰(*)</td>
			<td>
				<select name="order-cellphone1" id="order-cellphone1" class="order-phone">
					<option value="010">010</option>
					<option value="010">011</option>
					<option value="010">016</option>
					<option value="010">017</option>
					<option value="010">018</option>
					<option value="010">019</option>
				</select>-<input type="text" name="order-cellphone2"  id="order-cellphone2" class="order-phone not-null"/>-<input type="text" name="order-cellphone3"  id="order-cellphone3" class="order-phone not-null"/>
			</td>
		</tr>
		<tr>
			<td class="td-order_subject">일반전화</td>
			<td>
				<select name="order-phone1" id="order-phone1" class="order-phone">
					<option>선택</option> <option value="02">서울 (02)</option> <option value="031">경기 (031)</option> <option value="032"> 인천 (032) </option> <option value="033"> 강원 (033) </option> <option value="041"> 충남 (041) </option> <option value="042"> 대전 (042) </option> <option value="043"> 충북 (043) </option> <option value="051"> 부산 (051) </option> <option value="052"> 울산 (052) </option> <option value="053"> 대구 (053) </option> <option value="054"> 경북 (054) </option> <option value="055"> 경남 (055) </option> <option value="061"> 전남 (061) </option> <option value="062"> 광주 (062) </option> <option value="063"> 전북 (063) </option> <option value="064"> 제주 (064) </option> <option value="070"> 인터넷전화 (070) </option> <option value="050"> 평생전화 (050) </option>
				</select>-<input type="text" name="order-phone2"  id="order-phone2" class="order-phone"/>-<input type="text" name="order-phone3"  id="order-phone3" class="order-phone"/>
			</td>
		</tr>
	</tbody>
</table>
<!-- 배송지 정보 입력부 끝 -->

<!-- 주문고객 정보 입력부 시작 -->
<h3 class="order-title">주문자 정보 확인<span class="explain">(*표는 필수 입력사항)</span></h3>
<table id="table-orderClient" class="order-mainTable order-addr">
	<tbody>
		<tr>
			<td class="td-order_subject">주문고객 이름(*)</td>
			<td>
				<input type="text" name="order-client_name" id="order-client_name" class="input-txt1 not-null"/>
				<label for="chk-order-same"><input type="checkbox" name="chk-order-same" id="chk-order-same" />배송지 정보와 동일</label>
			</td>
		</tr>
		<tr>
			<td class="td-order_subject">핸드폰(*)</td>
			<td>
				<select name="order-client_cellphone1" id="order-client_cellphone1" class="order-phone not-null">
					<option value="010">010</option>
					<option value="010">011</option>
					<option value="010">016</option>
					<option value="010">017</option>
					<option value="010">018</option>
					<option value="010">019</option>
				</select>-<input type="text" name="order-client_cellphone2"  id="order-client_cellphone2" class="order-phone not-null"/>-<input type="text" name="order-client_cellphone3"  id="order-client_cellphone3" class="order-phone not-null"/>
			</td>
		</tr>
		<tr>
			<td class="td-order_subject">일반전화</td>
			<td>
				<select name="order-client_phone1" id="order-client_phone1" class="order-phone">
					<option>선택</option> <option value="02">서울 (02)</option> <option value="031">경기 (031)</option> <option value="032"> 인천 (032) </option> <option value="033"> 강원 (033) </option> <option value="041"> 충남 (041) </option> <option value="042"> 대전 (042) </option> <option value="043"> 충북 (043) </option> <option value="051"> 부산 (051) </option> <option value="052"> 울산 (052) </option> <option value="053"> 대구 (053) </option> <option value="054"> 경북 (054) </option> <option value="055"> 경남 (055) </option> <option value="061"> 전남 (061) </option> <option value="062"> 광주 (062) </option> <option value="063"> 전북 (063) </option> <option value="064"> 제주 (064) </option> <option value="070"> 인터넷전화 (070) </option> <option value="050"> 평생전화 (050) </option>
				</select>-<input type="text" name="order-client_phone2"  id="order-client_phone2" class="order-phone"/>-<input type="text" name="order-client_phone3"  id="order-client_phone3" class="order-phone"/>
			</td>
		</tr>
		<tr>
			<td class="td-order_subject">이메일(*)</td>
			<td><input type="text" name="order-email" id="order-email" class="not-null"/></td>
		</tr>
		<tr>
			<td class="td-order_subject">비밀번호</td>
			<td><input type="password" name="order-pwd" id="order-pwd" class=""/></td>
		</tr>
	</tbody>
</table>
<!-- 주문고객 정보 입력부 끝 -->

<!-- 결제 정보 입력부 시작 -->
<h3 class="order-title">결제정보 확인</h3>
<table id="table-orderPay" class="order-mainTable">
	<tbody>
		<tr>
			<td class="td-order_subject">신용카드</td>
			<td class="td-order_content">
				<label for="chk-pay11"><input type="radio" name="chk-pay" id="chk-pay11" value="11" checked />신용카드</label>
			</td>
			<td rowspan="4" class="td-order_final">최종 결제금액<br />???원</td>
		</tr>
		<tr>
			<td class="td-order_subject">계좌이체</td>
			<td class="td-order_content">
				<label for="chk-pay21"><input type="radio" name="chk-pay" id="chk-pay21" value="21" />계좌이체</label>
				<label for="chk-pay22"><input type="radio" name="chk-pay" id="chk-pay22" value="22" />무통장 입금</label>
			</td>
		</tr>
		<tr>
			<td class="td-order_subject">간편결제</td>
			<td class="td-order_content">
				<label for="chk-pay31"><input type="radio" name="chk-pay" id="chk-pay31" value="31" />카카오페이</label>
				<label for="chk-pay32"><input type="radio" name="chk-pay" id="chk-pay32" value="32" />네이버페이</label>
			</td>
		</tr>
		<tr>
			<td class="td-order_subject">문화비소득공제 현금영수증 신청</td>
			<td>
				<label for="chk-tax1"><input type="radio" name="tax_deduction" id="chk-tax1" value="1" checked />신청</label>
				<label for="chk-tax2"><input type="radio" name="tax_deduction" id="chk-tax2" value="2" />신청안함 </label> 
				<input type="text" name="tax_num" id="tax_num" class="w150px h27px"/><span class="explain"> 휴대폰번호 또는 사업자번호('-' 빼고 입력)</span><br />
			</td>
		</tr>
	</tbody>
	<tfoot>
	</tfoot>
</table>

<div class="txt-center" style="line-height:35px;">
	주문하실 상품, 가격, 배송정보 등을 확인하였으며, 구매에 동의하시겠습니까? <label for="chk-confirm"><input type="checkbox" name="chk-confirm" id="chk-confirm" />동의합니다.</label><span class="explain">(전자상거래법 제 8조 제2항)</span>
	<br /><input type="button" id="btn-confirm" value="결제하기"> <input type="button" value="장바구니로 돌아가기" />
</div>

<!-- 결제 정보 입력부 끝 -->

<script src="https://cdn.bootpay.co.kr/js/bootpay-3.0.2.min.js" type="application/javascript"></script>
<script src="https://nsp.pay.naver.com/sdk/js/naverpay.min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="../js/order.js"></script>

<script type="text/javascript">
$(function() {
	$('#agreementUnit1').load('agreement1.html');
	$('#agreementUnit2').load('agreement2.html');
	
	$('.chk').click(function() {
		if($(this).hasClass('checked')){
			$(this).removeClass('checked');
		}else{
			$(this).addClass('checked');
		}
	});
	
	$('.agreement_chk').click(function() {
		$(this).prev().trigger('click');
	});
});

$('#chk-order-same').change(function() {
	if($('#chk-order-same').is(":checked")){
		$('#order-client_name').val($('#order-name').val());
		$('#order-client_cellphone1').val($('#order-cellphone1').val());
		$('#order-client_cellphone2').val($('#order-cellphone2').val());
		$('#order-client_cellphone3').val($('#order-cellphone3').val());
		
		$('#order-client_phone1').val($('#order-phone1').val());
		$('#order-client_phone2').val($('#order-phone2').val());
		$('#order-client_phone3').val($('#order-phone3').val());
		
		$('[id^=order-client]').attr('readonly', true);
		$('[id^=order-client]').addClass('bgDisabled');
	}else{
		$('[id^=order-client]').removeAttr('readonly');
		$('[id^=order-client]').removeClass('bgDisabled');
	}
})

/*배송지 주소 검색*/
function getAddr() {
	new daum.Postcode({
        oncomplete: function(data) {
            $('#order-zipcode').val(data.zonecode);
            $('#order-addr1').val(data.roadAddress);
            $('#order-addr2').val(data.jibunAddress);
            $('#order-addr3').focus();
        }
    }).open();
}

$('#chk-tax1').change(function() {
	if($(this).is(":checked")){
		$('#tax_num').removeAttr('disabled');
	}else{
		$('#tax_num').prop('disabled', true);
		$('#tax_num').val('');
	}
})


/* 결제 유효성 검사 */
$('#btn-confirm').click(function() {
	
	/* 초기화 */
	let chk = true;
	
	if(true){
		/* 비회원 주문시 정보 수집 및 이용 동의 확인 */
		if(!$('.chk:eq(0)').hasClass('checked')){
			alert("개인정보 수집 및 이용에 동의하셔야 구매가 가능합니다.");
			fnMove('agreementWrap1');
			chk = false;
		}else if(!$('.chk:eq(1)').hasClass('checked')){
			alert("개인정보 처리 및 위탁에 동의하셔야 구매가 가능합니다.");
			fnMove('agreementWrap2');
			chk = false;
	}
		
	/* 배송지 정보, 주문고객 정보 필수 입력사항 확인 */
	}else{
		$('#table-orderAddr .not-null, #table-orderClient .not-null').each(function() {
			if($(this).val()==''){
				alert($(this).parent().prev().text().split("(")[0] + '은(는) 필수 입력사항입니다.');
				$(this).focus();
				chk = false;
				return false;
			}
		});
	}
	
	/* 문화비소득공제 확인 */
	if(chk){
		if($('#chk-tax1').is(":checked") && $('#tax_num').val() == '')  {
			alert('문화비소득공제를 신청하시는 경우 휴대폰번호 또는 사업자번호를 입력해주세요.');
			$('#tax_num').focus();
			chk = false;
		}
	}
	
	/* 구매 동의 체크 확인 */
	if(chk){
		if(!$('#chk-confirm').is(":checked")){
			$('#chk-confirm').focus();
			chk = false;
			alert('구매 동의 버튼을 클릭하셔야 구매가 가능합니다.');
		}
	}
	
	/* 구매 코드 실행 */
	if(chk){
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
		
		paymentTest(pg, method);
	}
	
});

function paymentTest(pg, method) {
	BootPay.request({
		price: '1000', //실제 결제되는 가격
		application_id: "5e65905102f57e00224b483e",
		name: '블링블링 마스카라', //결제창에서 보여질 이름
		pg: pg,
		method: method, //결제수단, 입력하지 않으면 결제수단 선택부터 화면이 시작합니다.
		show_agree_window: 0, // 부트페이 정보 동의 창 보이기 여부
		items: [
			{
				item_name: '나는 아이템', //상품명
				qty: 1, //수량
				unique: '123', //해당 상품을 구분짓는 primary key
				price: 1000, //상품 단가
				cat1: 'TOP', // 대표 상품의 카테고리 상, 50글자 이내
				cat2: '티셔츠', // 대표 상품의 카테고리 중, 50글자 이내
				cat3: '라운드 티', // 대표상품의 카테고리 하, 50글자 이내
			}
		],
		user_info: {
			username: '사용자 이름',
			email: $('#order-email').val(),
			addr: '사용자 주소',
			phone: '010-1234-4567'
		},
		order_id: '고유order_id_1234', //고유 주문번호로, 생성하신 값을 보내주셔야 합니다.
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
		//결제가 정상적으로 완료되면 수행됩니다
		//비즈니스 로직을 수행하기 전에 결제 유효성 검증을 하시길 추천합니다.
		console.log(data);
	});
}
		
</script>

