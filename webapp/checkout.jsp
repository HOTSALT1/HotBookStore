<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri ="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>Checkout | Books Library eCommerce Store</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- Favicons -->
	<link rel="shortcut icon" href="images/favicon.ico">
	<link rel="apple-touch-icon" href="images/icon.png">

	<!-- Google font (font-family: 'Roboto', sans-serif; Poppins ; Satisfy) -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,600,600i,700,700i,800"
		rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/plugins.css">
	<link rel="stylesheet" href="style.css">

	<!-- Cusom css -->
	<link rel="stylesheet" href="css/custom.css">

	<!-- Modernizer js -->
	<script src="js/vendor/modernizr-3.5.0.min.js"></script>
</head>

<body>
	<!--[if lte IE 9]>
		<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
	<![endif]-->

	<!-- Main wrapper -->
	<div class="wrapper" id="wrapper">

		<!-- Header -->
		<jsp:include page="navbar.jsp"></jsp:include>
		<!-- //Header -->
		<!-- Start Search Popup -->
		<div class="box-search-content search_active block-bg close__top">
			<form id="search_mini_form" class="minisearch" action="#">
				<div class="field__search">
					<input type="text" placeholder="Search entire store here...">
					<div class="action">
						<a href="#"><i class="zmdi zmdi-search"></i></a>
					</div>
				</div>
			</form>
			<div class="close__wrap">
				<span>close</span>
			</div>
		</div>
		<!-- End Search Popup -->
		<!-- Start Bradcaump area -->
		<div class="ht__bradcaump__area bg-image--4">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="bradcaump__inner text-center">
							<h2 class="bradcaump-title">Checkout</h2>
							<nav class="bradcaump-content">
								<a class="breadcrumb_item" href="index.html">Home</a>
								<span class="brd-separetor">/</span>
								<span class="breadcrumb_item active">Checkout</span>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Bradcaump area -->
		<!-- Start Checkout Area -->
		<section class="wn__checkout__area section-padding--lg bg__white">
			<div class="container">
				<c:if test="${sessionScope.memId == null }">
				<div class="row">
					<div class="col-lg-12">
						<div class="wn_checkout_wrap">
							<div class="checkout_info">
								<span>개인정보 수집 및 이용 안내 &nbsp;</span>
								<a class="showlogin" href="#">전문 보기</a>
							</div>
							<div class="checkout_login">
								<form class="wn__checkout__form" action="#">
									<div id="agreement1"></div>
								</form>
							</div>
							<div class="checkout_info">
								<span>개인정보 처리위탁 &nbsp;</span>
								<a class="showcoupon" href="#">전문 보기</a>
							</div>
							<div class="checkout_coupon">
								<form action="#">
									<div id="agreement2"></div>
								</form>
							</div>
						</div>
					</div>
				</div>
				</c:if>
				<div class="row">
					<div class="col-lg-6 col-12">
						<!-- 배송지 정보 시작 -->
						<div class="customer_details">
							<h3 style="">배송지 정보 </h3>
							<div id="receiver" class="customar__field">
								<div class="margin_between">
									<div class="input_box space_between">
										<label>받으실 분 성함 <span>*</span></label>
										<input type="text" id="r_name" class="not-null">
									</div>
								</div>
								<div class="margin_between">
									<div class="input_box space_between">
										<label>주소 <span>*</span></label>
										<input id="zonecode" class="not-null" type="text" placeholder="우편번호" readonly>
									</div>
									<div class="input_box space_between">
										<label>&nbsp;<span></span></label>
										<input type="button" id="btn-addr" class="btn" value="주소 찾기">
									</div>
									<div class="input_box space_between">
										<label> <span></span></label>
									</div>
								</div>
								<div class="input_box">
									<input id="address" type="text" placeholder="도로명 주소" readonly>
								</div>
								<div class="input_box">
									<input id="jibunAddress" type="text" placeholder="지번 주소" readonly>
								</div>
								<div class="input_box">
									<input id="detailAddress" type="text" placeholder="상세 주소">
								</div>
								<div class="margin_between">
									<div class="input_box space_between">
										<label>휴대폰 또는 일반전화 <span>*</span></label>
										<input type="text" id="r_tel1" class="not-null" >
									</div>
									<div class="input_box space_between">
										<label>추가 연락처(선택 입력) <span></span></label>
										<input type="text" id="r_tel2">
									</div>
								</div>
								<div class="input_box">
									<label>배송 메시지<span></span></label>
									<input type="text" id="r_message" placeholder="배송 직원에게 남길 메시지">
								</div>
							</div>
						</div>
						<!-- 배송지 정보 끝 -->
						<!-- 주문고객 정보 시작 -->
						<div class="customer_details" style="margin-top: 50px;">
							<h3>주문고객 정보 &nbsp;&nbsp;<span style="font-size: 10pt; height: 20px;display: inline-block;">
								<input type="checkbox" class="input-checkbox" name="chk-same" id="chk-same" style="vertical-align: middle;"/>
								<label for="info_same" style="vertical-align: middle;margin: 0;color: #888888;">
									배송지 정보와 동일
								</label></span>
							</h3>
							<div class="customar__field">
								<div class="margin_between">
									<div class="input_box space_between">
										<label>주문자 성함 <span>*</span></label>
										<input type="text" id="name" class="not-null">
									</div>
								</div>
								<div class="margin_between">
									<div class="input_box space_between">
										<label>휴대폰 또는 일반전화<span></span></label>
										<input type="text" id="tel" >
									</div>
									<div class="input_box space_between">
										<label>이메일 (구매 확인 메일 발송)<span></span></label>
										<input type="text" id="email">
									</div>
								</div>
							</div>
							<div class="input_box">
								<input class="input-checkbox" name="tax" id="tax" type="checkbox">
								<label for="tax">문화비소득공제 현금영수증 신청 (결제 이후 별도 신청은 불가능합니다.)</label>
							</div>
							<div id="tax_info" class="customar__field" style="display: none;">
								<div class="margin_between">
									<div class="input_box space_between">
										<label>휴대폰번호 또는 사업자번호('-' 빼고 입력) <span></span></label>
										<input type="text" id="tax_num" placeholder="">
									</div>
									<div class="input_box space_between">
										<span>&nbsp;</span>
									</div>
								</div>
							</div>
						</div>
						<!-- 주문고객 정보 끝 -->
						
						<div class="customer_details mt--20">
						</div>
					</div>
					<div class="col-lg-6 col-12 md-mt-40 sm-mt-40">
						<c:set var="total_price">0</c:set>
						<div class="wn__order__box">
							<h3 class="onder__title">주문 상품 확인</h3>
							<ul class="order__total">
								<li>상품명</li>
								<li>금액</li>
							</ul>
							<ul class="order_product">
								<c:forEach var="cart" items="${sessionScope.cart_checkout }" varStatus="i">
								<c:set var="price">${cart.qty * cart.d_price}</c:set>
								<c:set var="total_price">${total_price + price}</c:set>
								<li class="bookName">${cart.title } × ${cart.qty }
									<input type="hidden" id="seq_${cart.book_id }" value="${cart.book_id }"/>
									<input type="hidden" id="qty_${cart.book_id }" value="${cart.qty }"/>
									<input type="hidden" id="title_${cart.book_id }" value="${cart.title }"/>
									<input type="hidden" id="d_price_${cart.book_id }" value="${cart.d_price }"/>
									<input type="hidden" id="cate1_${cart.book_id }" value="${cart.cate1 }"/>
									<input type="hidden" id="cate2_${cart.book_id }" value="${cart.cate2 }"/>
									<span><fmt:formatNumber pattern="#,###원">${price}</fmt:formatNumber></span>
								</li>
								</c:forEach>
								<c:if test="${total_price >= 30000}"><c:set var="delivery">0</c:set></c:if>
								<c:if test="${total_price < 30000}"><c:set var="delivery">3000</c:set></c:if>
							</ul>
							<ul class="shipping__method">
								<li>상품 합계 <span><fmt:formatNumber pattern="#,###원">${total_price }</fmt:formatNumber></span></li>
								<li>배송비<span><fmt:formatNumber pattern="#,###원">${delivery}</fmt:formatNumber></span></li>
							</ul>
							<ul class="total__amount">
								<li>최종 결제금액 <span id="order_price"><fmt:formatNumber pattern="#,###원">${total_price + delivery }</fmt:formatNumber></span></li>
							</ul>
							<input type="hidden" id="order_id" value="${sessionScope.order_id }" />
						</div>
						<div id="accordion" class="checkout_accordion mt--30" role="tablist">
							<div id="payment" class="payment">
								<div class="che__header" role="tab" id="headingOne">
									<a class="checkout__title" data-toggle="collapse" href="#collapseOne"
										aria-expanded="true" aria-controls="collapseOne">
										<span>신용카드</span>
									</a>
								</div>
								<div id="collapseOne" class="collapse show" role="tabpanel" aria-labelledby="headingOne"
									data-parent="#accordion">
									<div class="payment-body">
										<label for="chk-pay11"><input type="radio" name="chk-pay" id="chk-pay11" value="11" checked />신용카드</label>
									</div>
								</div>
							</div>
							<div class="payment">
								<div class="che__header" role="tab" id="headingTwo">
									<a class="collapsed checkout__title" data-toggle="collapse" href="#collapseTwo"
										aria-expanded="false" aria-controls="collapseTwo">
										<span>계좌이체</span>
									</a>
								</div>
								<div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo"
									data-parent="#accordion">
									<div class="payment-body">
										<label for="chk-pay21"><input type="radio" name="chk-pay" id="chk-pay21" value="21" />계좌이체</label>
										<label for="chk-pay22"><input type="radio" name="chk-pay" id="chk-pay22" value="22" />무통장 입금</label>
									</div>
								</div>
							</div>
							<div class="payment">
								<div class="che__header" role="tab" id="headingThree">
									<a class="collapsed checkout__title" data-toggle="collapse" href="#collapseThree"
										aria-expanded="false" aria-controls="collapseFour">
										<span>간편결제 </span>
									</a>
								</div>
								<div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree"
									data-parent="#accordion">
									<div class="payment-body">
										<label for="chk-pay31"><input type="radio" name="chk-pay" id="chk-pay31" value="31" />카카오페이</label>
										<label for="chk-pay32"><input type="radio" name="chk-pay" id="chk-pay32" value="32" />네이버페이</label>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="input_box" style="text-align: center; margin-top: 40px;">
							<label>
								<input type="checkbox" name="chk-confirm" id="chk-confirm" class="input-checkbox" />
								<strong>
								<input type="hidden" id="memId" value="${sessionScope.memId}"/>
								<c:if test="${sessionScope.memId == null }">
									구매하실 상품 금액 정보 및 개인정보 처리 방침을 확인하였으며 이에 동의합니다 
								</c:if>
								<c:if test="${sessionScope.memId != null }">
									구매하실 상품 금액 정보를 확인하였으며 이에 동의합니다 
								</c:if>
								</strong>(전자상거래법 제 8조 제2항).
							</label>
						</div>
						<div class="input_box" style="text-align: center;">
							<input type="button" value="결제하기" id="btn-confirm" class="btn btn-success btn-lg"/>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Checkout Area -->
		<!-- Footer Area -->
		<footer id="wn__footer" class="footer__area bg__cat--8 brown--color">
			<div class="footer-static-top">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<div class="footer__widget footer__menu">
								<div class="ft__logo">
									<a href="index.html">
										<img src="images/logo/3.png" alt="logo">
									</a>
									<p>There are many variations of passages of Lorem Ipsum available, but the majority
										have suffered duskam alteration variations of passages</p>
								</div>
								<div class="footer__content">
									<ul class="social__net social__net--2 d-flex justify-content-center">
										<li><a href="#"><i class="bi bi-facebook"></i></a></li>
										<li><a href="#"><i class="bi bi-google"></i></a></li>
										<li><a href="#"><i class="bi bi-twitter"></i></a></li>
										<li><a href="#"><i class="bi bi-linkedin"></i></a></li>
										<li><a href="#"><i class="bi bi-youtube"></i></a></li>
									</ul>
									<ul class="mainmenu d-flex justify-content-center">
										<li><a href="index.html">Trending</a></li>
										<li><a href="index.html">Best Seller</a></li>
										<li><a href="index.html">All Product</a></li>
										<li><a href="index.html">Wishlist</a></li>
										<li><a href="index.html">Blog</a></li>
										<li><a href="index.html">Contact</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="copyright__wrapper">
				<div class="container">
					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-12">
							<div class="copyright">
								<div class="copy__right__inner text-left">
									<p>Copyright <i class="fa fa-copyright"></i> <a href="#">Boighor.</a> All Rights
										Reserved</p>
								</div>
							</div>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-12">
							<div class="payment text-right">
								<img src="images/icons/payment.png" alt="" />
							</div>
						</div>
					</div>
				</div>
			</div>
		</footer>
		<!-- //Footer Area -->

	</div>
	<!-- //Main wrapper -->

	<!-- JS Files -->
	<script src="js/vendor/jquery-3.2.1.min.js"></script>
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="https://cdn.bootpay.co.kr/js/bootpay-3.0.2.min.js" type="application/javascript"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/active.js"></script>
	<script src="js/member.js"></script>
	<script src="js/checkout.js"></script>

	<script type="text/javascript">
		$(function() {
			$('#agreement1').load('main/agreement1.html');
			$('#agreement2').load('main/agreement2.html');
		})
	</script>

</body>

</html>