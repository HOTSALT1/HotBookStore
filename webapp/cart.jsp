<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri ="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>장바구니 | Hot Book Store</title>
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
	
	<script src="js/vendor/jquery-3.2.1.min.js"></script>

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
		<div class="ht__bradcaump__area bg-image--3">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="bradcaump__inner text-center">
							<h2 class="bradcaump-title">Shopping Cart</h2>
							<nav class="bradcaump-content">
								<a class="breadcrumb_item" href="index.html">Home</a>
								<span class="brd-separetor">/</span>
								<span class="breadcrumb_item active">Shopping Cart</span>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Bradcaump area -->
		<!-- cart-main-area start -->
		<div class="cart-main-area section-padding--lg bg--white">
			<div class="container">
				<div class="row">
					<div class="col-md-12 col-sm-12 ol-lg-12">
						<div class="table-content wnro__table table-responsive">
							<table>
								<thead>
									<tr class="title-top">
										<th class="product-remove"><input type="checkbox" name="" id="chkAll" checked/></th>
										<th class="product-thumbnail">이미지</th>
										<th class="product-name">상품명</th>
										<th class="product-price">정가</th>
										<th class="product-price">할인가</th>
										<th class="product-quantity">수량</th>
										<th class="product-subtotal">합계</th>
										<th class="product-remove">삭제</th>
									</tr>
								</thead>
								<tbody>
									<c:set var="price">0</c:set>
									<c:set var="d_price">0</c:set>
									<c:if test="${list.size() > 0}">
										<c:forEach var="book" items="${list }" varStatus="i" begin="0">
										<tr>
											<td class="product-remove" style="padding-left: 0px;">
												<input type="checkbox" name="" id="chk_${i.index }" style="width: 13px;" checked/>
												<input type="hidden" id="cart_${i.index }" value="${cart_list[i.index].cart_id }" name="" />
											</td>
											<td class="product-thumbnail">
												<a href="#"><img src="${book.img1 }" alt="product img" style="height: 100px;"></a>
											</td>
											<td class="product-name"><a href="#">${book.title }<br />${book.subTitle }</a></td>
											<td class="product-price"><span class="amount price_${book.seq }"><fmt:formatNumber pattern="#,###원">${book.price }</fmt:formatNumber></span></td>
											<td class="product-price"><span class="amount d_price_${book.seq }"><fmt:formatNumber pattern="#,###원">${book.d_price }</fmt:formatNumber></span></td>
											<td class="product-quantity"><input class="qty_${book.seq }" type="number" min="1" value="${cart_list[i.index].qty }"></td>
											<td class="product-subtotal total_${book.seq }"><fmt:formatNumber pattern="#,###원">${book.d_price * cart_list[i.index].qty }</fmt:formatNumber></td>
											<td class="product-remove"><a class="remove_${book.seq }" href="#none">X</a></td>
										</tr>
										<c:set var="price">${price + book.price * cart_list[i.index].qty}</c:set>
										<c:set var="d_price">${d_price + book.d_price * cart_list[i.index].qty}</c:set>
										</c:forEach>
									</c:if>
									
									<c:if test="${list.size() < 1}">
										<tr>
											<td colspan="7">
											카트에 담긴 상품이 없습니다.
											</td>
										</tr>
									</c:if>
										
								</tbody>
							</table>
						</div>
						<div class="cartbox__btn">
							<ul
								class="cart__btn__list d-flex flex-wrap flex-md-nowrap flex-lg-nowrap justify-content-between">
								<li><a href="#">쇼핑 계속하기</a></li>
								<li>
									<c:if test="${list.size() > 0}">
										<a href="#" id="checkout">주문하기</a>
									</c:if>
									
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6 offset-lg-6">
						<div class="cartbox__total__area">
							<div class="cartbox-total d-flex justify-content-between">
								<ul class="cart__total__list">
									<li>총 상품금액</li>
									<li>총 할인금액</li>
									<li>배송비</li>
								</ul>
								<ul class="cart__total__tk">
									<li id="price_total" style="text-align: right;"><fmt:formatNumber pattern="#,###원">${price }</fmt:formatNumber></li>
									<li id="d_price_total" style="text-align: right;"><fmt:formatNumber pattern="#,###원">${price - d_price }</fmt:formatNumber></li>
									<li id="delivery" style="text-align: right;">
										<c:if test="${d_price < 30000 && list.size() > 1}">
											3,000원
											<c:set var="delivery">3000</c:set>
										</c:if>
										<c:if test="${d_price >= 30000 || list.size() < 1}">
											0원
											<c:set var="delivery">0</c:set>
										</c:if>
									</li>
								</ul>
							</div>
							<div class="cart__total__amount">
								<span>최종 결제금액</span>
								<span id="order_total">
									<fmt:formatNumber pattern="#,###원">${d_price + delivery}</fmt:formatNumber>
								</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- cart-main-area end -->
		<!-- Footer Area -->
		<footer>
			<div style="border-top:1px solid #e6e6e6; width: 100%; margin-top:90px;"></div>	
			<jsp:include page="footer.jsp"></jsp:include>
		</footer>
		<!-- //Footer Area -->

	</div>
	<!-- //Main wrapper -->

	<!-- JS Files -->
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/active.js"></script>
	<script src="js/cart.js"></script>
	<script src="js/member.js"></script>

</body>

</html>