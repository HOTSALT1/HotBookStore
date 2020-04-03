<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>Shop-Grid | Books Library eCommerce Store</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- Favicons -->
	<link rel="shortcut icon" href="images/favicon.png">
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
		<input type="hidden" name="pg" id="pg" value="${pg }">
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
		<div class="ht__bradcaump__area bg-image--6">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="bradcaump__inner text-center">
							<h2 class="bradcaump-title">Shop Grid</h2>
							<nav class="bradcaump-content">
								<a class="breadcrumb_item" href="index.html">Home</a>
								<span class="brd-separetor">/</span>
								<span class="breadcrumb_item active">Shop Grid</span>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Bradcaump area -->
		<!-- Start Shop Page -->
		<div class="page-shop-sidebar left--sidebar bg--white section-padding--lg">
			<div class="container">
				<div class="row">
					<jsp:include page="category.jsp"></jsp:include>
					<div class="col-lg-9 col-12 order-1 order-lg-2">
						<div class="row">
							<div class="col-lg-12">
								<div class="col-xs-8 search-div">
									<input type="hidden" id="cate1" value="${cate1 }"/>
									<input type="hidden" id="cate2" value="${cate2 }"/>
									<input type="text" id="titleOrAuthor" class="search-bar" placeholder="제목 또는 저자로 검색어 입력" value="${keyword }">
									<input type="button" id="btn-search" class="search" value="검색">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-12">
								<div class="shop__list__wrapper d-flex flex-wrap flex-md-nowrap justify-content-between">
									<div class="shop__list nav justify-content-center" role="tablist">
										<a id="a-grid" class="nav-item nav-link active" data-toggle="tab" href="#nav-grid"
											role="tab"><i class="fa fa-th"></i></a><input type="hidden" id="grid_list" value="${grid_list }" />
										<a id="a-list" class="nav-item nav-link" data-toggle="tab" href="#nav-list" role="tab"><i
												class="fa fa-list"></i></a>
									</div>
									<p>검색 결과: 총 ${totalA }개 중 <c:if test="${articles > 1}">1–${articles}</c:if><c:if test="${articles <= 1}">${articles }</c:if>개</p>
									<div class="orderby__wrapper">
										<span>정렬 기준</span><input type="hidden" id="orderBy" value="${orderBy }" />
										<select id="order_select" class="shot__byselect">
											<option value="1">상품 등록일</option>
											<option value="2">가격 오름차순</option>
											<option value="3">가격 내림차순</option>
											<option value="4">평점</option>
											<option value="5">출간일</option>
										</select>
									</div>
								</div>
							</div>
						</div>
						<div id="bookContainer" class="tab__container">
							<div class="shop-grid tab-pane fade show active" id="nav-grid" role="tabpanel">
								<div class="row">
								<c:forEach var="book" items="${book_list }">
									<!-- Start Single Product -->
									<div class="product product__style--3 col-lg-4 col-md-4 col-sm-6 col-12">
										<div class="product__thumb">
											<a class="first__img" href="single-product?book_id=${book.seq}" ><img
													src="${book.img1 }" alt="product image" style="min-height: 393px;"></a>
											<c:if test="${book.img2 != null }">
												<a class="second__img animation1" href="single-product?book_id=${book.seq}"><img
													src="${book.img2 }" alt="product image"></a>
											</c:if>
											<c:if test="${book.img2 == null }">
												<a class="second__img animation1" href="single-product?book_id=${book.seq}"><img style="visibility:hidden;" 
													src="${book.img1 }" alt="product image"></a>
											</c:if>
											<%-- <a class="second__img animation1" href="single-product?book_id=${book.seq}"><img
													src="${book.img2 }" alt="product image"></a> --%>
											<c:if test="${book.cate2 eq 'best' }">
												<div class="hot__box">
													<span class="hot-label">BEST SALLER</span>
												</div>
											</c:if>
											<c:if test="${book.cate2 eq 'new' }">
												<div class="hot__box">
													<span class="hot-label">NEW BOOK</span>
												</div>
											</c:if>
										</div>
										<div class="product__content content--center">
											<h4><a href="single-product.html">${book.title }</a></h4>
											<ul class="prize d-flex">
												<li><fmt:formatNumber pattern="#,###원">${book.d_price }</fmt:formatNumber></li>
												<li class="old_prize"><fmt:formatNumber pattern="#,###원">${book.price }</fmt:formatNumber></li>
											</ul>
											<div class="action">
												<div class="actions_inner">
													<input type="hidden" class="info" value="${book.info }"/>
													<input type="hidden" class="review" value="리뷰 개수: ${book.count }"/>
													<input class="seq" type="hidden" value="${book.seq}" />
													<ul class="add_to_links">
														<li><a id="buy2_${book.seq}" class="cart" href="javascript:void(0)"><i
																	class="bi bi-shopping-bag4"></i></a></li>
														<li><a class="addToCart" href="javascript:void(0)"><i
																	class="bi bi-shopping-cart-full"></i></a></li>
														<li><a class="wishlist" href="javascript:void(0)"><i
																	class="bi bi-heart-beat"></i></a></li>
														<li><a data-toggle="modal" title="Quick View"
																class="quickview modal-view detail-link"
																href="#productmodal"><i class="bi bi-search"></i></a>
														</li>
													</ul>
												</div>
											</div>
											<div class="product__hover--content">
												<ul class="rating d-flex">
												<c:forEach var="s" step="1" begin="1" end="5">
													<c:if test="${book.score >= 2*s}">
														<li class="on"><i class="fa fa-star"></i></li>
													</c:if>
													<c:if test="${book.score < 2*s}">
														<li class=""><i class="fa fa-star-o"></i></li>
													</c:if>
												</c:forEach>
												</ul>
											</div>
										</div>
									</div>
									<!-- End Single Product -->
									</c:forEach>
								</div>
								<ul class="wn__pagination">${paging }</ul>
							</div>
							<div class="shop-grid tab-pane fade" id="nav-list" role="tabpanel">
								<div class="list__view__wrapper">
									<c:set var="margin"></c:set>
									<c:forEach var="book" items="${book_list }" varStatus="i">
									<!-- Start Single Product -->
									<c:if test="${i.index > 0}"><c:set var="margin">mt--40</c:set></c:if>
									<div class="list__view ${margin }">
										<div class="thumb">
											<a class="first__img" href="single-product?book_id=${book.seq}"><img
													src="${book.img1 }" alt="${book.title }" style="max-height: 350px;"></a>
											<a class="second__img animation1" href="single-product?book_id=${book.seq}">
												<c:if test="${book.img2 != null}">
												<img src="${book.img2 }" alt="${book.title }" style="max-height: 350px;">
												</c:if>
												<c:if test="${book.img2 == null}">
												<img src="${book.img1 }" alt="${book.title }" style="max-height: 350px;">
												</c:if>
											</a>
										</div>
										<div class="content">
											<h2><a href="single-product?book_id=${book.seq}">${book.title}</a></h2>
											<ul class="rating d-flex">
												<c:forEach var="s" step="1" begin="1" end="5">
													<c:if test="${book.score >= 2*s}">
														<li class="on"><i class="fa fa-star"></i></li>
													</c:if>
													<c:if test="${book.score < 2*s}">
														<li class=""><i class="fa fa-star-o"></i></li>
													</c:if>
												</c:forEach>
											</ul>
											<ul><li>리뷰 평균: <fmt:formatNumber pattern="#.##">${book.score }</fmt:formatNumber>점</li></ul>
											<ul class="prize__box">
												<li><fmt:formatNumber pattern="#,###원">${book.d_price }</fmt:formatNumber></li>
												<li class="old__prize"><fmt:formatNumber pattern="#,###원">${book.price }</fmt:formatNumber></li>
											</ul>
											<input type="hidden" class="info" value="${book.info }"/>
											<input type="hidden" class="review" value="리뷰 개수: ${book.count }"/>
											<p class="info"></p>
											<ul class="cart__action d-flex">
												<li class="cart"><a id="buy1_${book.seq }" class="${book.seq }" href="javascript:void(0)">주문하기</a></li>
												<li class="cart2"><a href="javascript:void(0)"></a></li>
												<li class="wishlist"><a href="javascript:void(0)"></a></li>
											</ul>

										</div>
									</div>
									<!-- End Single Product -->
									</c:forEach>
								</div>
								<ul class="wn__pagination">${paging }</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Shop Page -->
		<!-- Footer Area -->
		<div style="border-top: 1px solid #e6e6e6; width: 100%; margin-top: 90px;"></div>
		<jsp:include page="footer.jsp"></jsp:include>
		<!-- //Footer Area -->
		<!-- QUICKVIEW PRODUCT -->
		<div id="quickview-wrapper">
			<!-- Modal -->
			<div class="modal fade" id="productmodal" tabindex="-1" role="dialog">
				<div class="modal-dialog modal__container" role="document">
					<div class="modal-content">
						<div class="modal-header modal__header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
									aria-hidden="true">&times;</span></button>
						</div>
						<div class="modal-body">
							<div class="modal-product">
								<!-- Start product images -->
								<div class="product-images">
									<div class="main-image images">
										<img id="modal-img" alt="" src="images/product/big-img/1.jpg">
									</div>
								</div>
								<!-- end product images -->
								<input type="hidden" id="book_id" value="" />
								<div class="product-info">
									<h1 id="modal-title">제목</h1>
									<div class="rating__and__review">
										<ul class="rating">
											<li><span class="ti-star"></span></li>
											<li><span class="ti-star"></span></li>
											<li><span class="ti-star"></span></li>
											<li><span class="ti-star"></span></li>
											<li><span class="ti-star"></span></li>
										</ul>
										<div class="review">
											<a href="#">4 customer reviews</a>
										</div>
									</div>
									<div class="price-box-3">
										<div class="s-price-box">
											<span id="modal-d_price" class="new-price">할인가</span>
											<span id="modal-price" class="old-price">정가</span>
										</div>
									</div>
									<div id="modal-info" class="quick-desc">
										책 소개
									</div>
									<!-- <div class="select__color">
										<h2>Select color</h2>
										<ul class="color__list">
											<li class="red"><a title="Red" href="#">Red</a></li>
											<li class="gold"><a title="Gold" href="#">Gold</a></li>
											<li class="orange"><a title="Orange" href="#">Orange</a></li>
											<li class="orange"><a title="Orange" href="#">Orange</a></li>
										</ul>
									</div>
									<div class="select__size">
										<h2>Select size</h2>
										<ul class="color__list">
											<li class="l__size"><a title="L" href="#">L</a></li>
											<li class="m__size"><a title="M" href="#">M</a></li>
											<li class="s__size"><a title="S" href="#">S</a></li>
											<li class="xl__size"><a title="XL" href="#">XL</a></li>
											<li class="xxl__size"><a title="XXL" href="#">XXL</a></li>
										</ul>
									</div> -->
									<!-- <div class="social-sharing">
										<div class="widget widget_socialsharing_widget">
											<h3 class="widget-title-modal">Share this product</h3>
											<ul class="social__net social__net--2 d-flex justify-content-start">
												<li class="facebook"><a href="#" class="rss social-icon"><i
															class="zmdi zmdi-rss"></i></a></li>
												<li class="linkedin"><a href="#" class="linkedin social-icon"><i
															class="zmdi zmdi-linkedin"></i></a></li>
												<li class="pinterest"><a href="#" class="pinterest social-icon"><i
															class="zmdi zmdi-pinterest"></i></a></li>
												<li class="tumblr"><a href="#" class="tumblr social-icon"><i
															class="zmdi zmdi-tumblr"></i></a></li>
											</ul>
										</div>
									</div> -->
									<div class="addtocart-btn">
										<a id="modal-buy" class="modal-buy_" href="javascript:void(0)">장바구니에 추가</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- END QUICKVIEW PRODUCT -->
	</div>
	<!-- //Main wrapper -->

	<!-- JS Files -->
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/active.js"></script>
	<script src="js/shop-grid.js"></script>
	<script src="js/cart.js"></script>
	<script type="text/javascript">
		$(function() {
			$('#order_select').val($('#orderBy').val());
			$('p.info').each(function () {
				$(this).text(removeTag($(this).parent().find('input[type=hidden]').val()).substr(0,200) + '...');
			})
			
			// 가격 검색 슬라이더 세팅 (초기값은 Shop서비스에서 1,000~100,000으로 설정됨)
			$('#slider-range').slider("values", [${min},${max}]);
			$('#amount').val('' + setComma($('#slider-range').slider('values', 0)) +
			        "원 ~ " + setComma($('#slider-range').slider('values', 1)) + '원');
			
			// nav-grid / nav-list 세팅
			if($('#grid_list').val() == 'a-list'){
				$('a#a-list').trigger('click');
			}
			$('a#a-list, a#a-grid').click(function() {
				$('#grid_list').val($(this).attr('id'));
			})
		});
		
		function removeTag(str){
			return str.replace(/(<([^>]+)>)/ig,"");
		}
	
	</script>

</body>

</html>