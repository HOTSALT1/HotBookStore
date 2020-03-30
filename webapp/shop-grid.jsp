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
		<input type="hidden" name="book_id" id="book_id" value="${seq }">
		
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
									<input type="text" id="titleOrAuthor" class="search-bar" placeholder="제목 또는 저자로 검색어 입력" value="${keyword }">
									<input type="button" id="btn-search" class="search" value="검색">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-12">
								<div class="shop__list__wrapper d-flex flex-wrap flex-md-nowrap justify-content-between">
									<div class="shop__list nav justify-content-center" role="tablist">
										<a class="nav-item nav-link active" data-toggle="tab" href="#nav-grid"
											role="tab"><i class="fa fa-th"></i></a>
										<a class="nav-item nav-link" data-toggle="tab" href="#nav-list" role="tab"><i
												class="fa fa-list"></i></a>
									</div>
									<p>검색 결과: 총 ${totalA }개 중 <c:if test="${articles > 1}">1–${articles}</c:if><c:if test="${articles <= 1}">${articles }</c:if>개</p>
									<div class="orderby__wrapper">
										<span>정렬 기준</span>
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
													src="${book.img1 }" alt="product image"></a>
											<a class="second__img animation1" href="single-product?book_id=${book.seq}"><img
													src="${book.img2 }" alt="product image"></a>
											<div class="hot__box">
												<span class="hot-label">BEST SALLER</span>
											</div>
										</div>
										<div class="product__content content--center">
											<h4><a href="single-product.html">${book.title }</a></h4>
											<ul class="prize d-flex">
												<li><fmt:formatNumber pattern="#,###원">${book.d_price }</fmt:formatNumber></li>
												<li class="old_prize"><fmt:formatNumber pattern="#,###원">${book.price }</fmt:formatNumber></li>
											</ul>
											<div class="action">
												<div class="actions_inner">
													<input type="hidden" value="${book.seq}" />
													<ul class="add_to_links">
														<li><a class="cart" href="#none"><i
																	class="bi bi-shopping-bag4"></i></a></li>
														<li><a class="wishlist addToCart" href="#none"><i
																	class="bi bi-shopping-cart-full"></i></a></li>
														<li><a class="compare" href="#none"><i
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
													<li class="on"><i class="fa fa-star-o"></i></li>
													<li class="on"><i class="fa fa-star-o"></i></li>
													<li class="on"><i class="fa fa-star-o"></i></li>
													<li><i class="fa fa-star-o"></i></li>
													<li><i class="fa fa-star-o"></i></li>
												</ul>
											</div>
										</div>
									</div>
									<!-- End Single Product -->
									</c:forEach>
								</div>
								<ul class="wn__pagination">
									<li class="active"><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#"><i class="zmdi zmdi-chevron-right"></i></a></li>
								</ul>
							</div>
							<div class="shop-grid tab-pane fade" id="nav-list" role="tabpanel">
								<div class="list__view__wrapper">
									<!-- Start Single Product -->
									<div class="list__view">
										<div class="thumb">
											<a class="first__img" href="single-product?book_id=${book.seq}"><img
													src="images/product/1.jpg" alt="product images"></a>
											<a class="second__img animation1" href="single-product.html"><img
													src="images/product/2.jpg" alt="product images"></a>
										</div>
										<div class="content">
											<h2><a href="single-product.html">Ali Smith</a></h2>
											<ul class="rating d-flex">
												<li class="on"><i class="fa fa-star-o"></i></li>
												<li class="on"><i class="fa fa-star-o"></i></li>
												<li class="on"><i class="fa fa-star-o"></i></li>
												<li class="on"><i class="fa fa-star-o"></i></li>	
												<li><i class="fa fa-star-o"></i></li>
												<li><i class="fa fa-star-o"></i></li>
											</ul>
											<ul class="prize__box">
												<li>$111.00</li>
												<li class="old__prize">$220.00</li>
											</ul>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla
												augue nec est tristique auctor. Donec non est at libero vulputate
												rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi,
												vulputate adipiscing cursus eu, suscipit id nulla.</p>
											<ul class="cart__action d-flex">
												<li class="cart"><a href="cart.html">Add to cart</a></li>
												<li class="wishlist"><a href="cart.html"></a></li>
												<li class="compare"><a href="cart.html"></a></li>
											</ul>

										</div>
									</div>
									<!-- End Single Product -->
									<!-- Start Single Product -->
									<div class="list__view mt--40">
										<div class="thumb">
											<a class="first__img" href="single-product.html"><img
													src="images/product/2.jpg" alt="product images"></a>
											<a class="second__img animation1" href="single-product.html"><img
													src="images/product/4.jpg" alt="product images"></a>
										</div>
										<div class="content">
											<h2><a href="single-product.html">Blood In Water</a></h2>
											<ul class="rating d-flex">
												<li class="on"><i class="fa fa-star-o"></i></li>
												<li class="on"><i class="fa fa-star-o"></i></li>
												<li class="on"><i class="fa fa-star-o"></i></li>
												<li class="on"><i class="fa fa-star-o"></i></li>
												<li><i class="fa fa-star-o"></i></li>
												<li><i class="fa fa-star-o"></i></li>
											</ul>
											<ul class="prize__box">
												<li>$111.00</li>
												<li class="old__prize">$220.00</li>
											</ul>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla
												augue nec est tristique auctor. Donec non est at libero vulputate
												rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi,
												vulputate adipiscing cursus eu, suscipit id nulla.</p>
											<ul class="cart__action d-flex">
												<li class="cart"><a href="cart.html">Add to cart</a></li>
												<li class="wishlist"><a href="cart.html"></a></li>
												<li class="compare"><a href="cart.html"></a></li>
											</ul>

										</div>
									</div>
									<!-- End Single Product -->
									<!-- Start Single Product -->
									<div class="list__view mt--40">
										<div class="thumb">
											<a class="first__img" href="single-product.html"><img
													src="images/product/3.jpg" alt="product images"></a>
											<a class="second__img animation1" href="single-product.html"><img
													src="images/product/6.jpg" alt="product images"></a>
										</div>
										<div class="content">
											<h2><a href="single-product.html">Madeness Overated</a></h2>
											<ul class="rating d-flex">
												<li class="on"><i class="fa fa-star-o"></i></li>
												<li class="on"><i class="fa fa-star-o"></i></li>
												<li class="on"><i class="fa fa-star-o"></i></li>
												<li class="on"><i class="fa fa-star-o"></i></li>
												<li><i class="fa fa-star-o"></i></li>
												<li><i class="fa fa-star-o"></i></li>
											</ul>
											<ul class="prize__box">
												<li>$111.00</li>
												<li class="old__prize">$220.00</li>
											</ul>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla
												augue nec est tristique auctor. Donec non est at libero vulputate
												rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi,
												vulputate adipiscing cursus eu, suscipit id nulla.</p>
											<ul class="cart__action d-flex">
												<li class="cart"><a href="cart.html">Add to cart</a></li>
												<li class="wishlist"><a href="cart.html"></a></li>
												<li class="compare"><a href="cart.html"></a></li>
											</ul>

										</div>
									</div>
									<!-- End Single Product -->
									<!-- Start Single Product -->
									<div class="list__view mt--40">
										<div class="thumb">
											<a class="first__img" href="single-product.html"><img
													src="images/product/4.jpg" alt="product images"></a>
											<a class="second__img animation1" href="single-product.html"><img
													src="images/product/6.jpg" alt="product images"></a>
										</div>
										<div class="content">
											<h2><a href="single-product.html">Watching You</a></h2>
											<ul class="rating d-flex">
												<li class="on"><i class="fa fa-star-o"></i></li>
												<li class="on"><i class="fa fa-star-o"></i></li>
												<li class="on"><i class="fa fa-star-o"></i></li>
												<li class="on"><i class="fa fa-star-o"></i></li>
												<li><i class="fa fa-star-o"></i></li>
												<li><i class="fa fa-star-o"></i></li>
											</ul>
											<ul class="prize__box">
												<li>$111.00</li>
												<li class="old__prize">$220.00</li>
											</ul>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla
												augue nec est tristique auctor. Donec non est at libero vulputate
												rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi,
												vulputate adipiscing cursus eu, suscipit id nulla.</p>
											<ul class="cart__action d-flex">
												<li class="cart"><a href="cart.html">Add to cart</a></li>
												<li class="wishlist"><a href="cart.html"></a></li>
												<li class="compare"><a href="cart.html"></a></li>
											</ul>

										</div>
									</div>
									<!-- End Single Product -->
									<!-- Start Single Product -->
									<div class="list__view mt--40">
										<div class="thumb">
											<a class="first__img" href="single-product.html"><img
													src="images/product/5.jpg" alt="product images"></a>
											<a class="second__img animation1" href="single-product.html"><img
													src="images/product/9.jpg" alt="product images"></a>
										</div>
										<div class="content">
											<h2><a href="single-product.html">Court Wings Run</a></h2>
											<ul class="rating d-flex">
												<li class="on"><i class="fa fa-star-o"></i></li>
												<li class="on"><i class="fa fa-star-o"></i></li>
												<li class="on"><i class="fa fa-star-o"></i></li>
												<li class="on"><i class="fa fa-star-o"></i></li>
												<li><i class="fa fa-star-o"></i></li>
												<li><i class="fa fa-star-o"></i></li>
											</ul>
											<ul class="prize__box">
												<li>$111.00</li>
												<li class="old__prize">$220.00</li>
											</ul>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla
												augue nec est tristique auctor. Donec non est at libero vulputate
												rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi,
												vulputate adipiscing cursus eu, suscipit id nulla.</p>
											<ul class="cart__action d-flex">
												<li class="cart"><a href="cart.html">Add to cart</a></li>
												<li class="wishlist"><a href="cart.html"></a></li>
												<li class="compare"><a href="cart.html"></a></li>
											</ul>
										</div>
									</div>
									<!-- End Single Product -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Shop Page -->
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
									<p>Copyright <i class="fa fa-copyright"></i> <a href="#">hotBookStore.</a> All Rights
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
										<img alt="big images" src="images/product/big-img/1.jpg">
									</div>
								</div>
								<!-- end product images -->
								<div class="product-info">
									<h1>Simple Fabric Bags</h1>
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
											<span class="new-price">$17.20</span>
											<span class="old-price">$45.00</span>
										</div>
									</div>
									<div class="quick-desc">
										Designed for simplicity and made from high quality materials. Its sleek geometry
										and material combinations creates a modern look.
									</div>
									<div class="select__color">
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
									</div>
									<div class="social-sharing">
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
									</div>
									<div class="addtocart-btn">
										<a href="#">Add to cart</a>
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

</body>

</html>