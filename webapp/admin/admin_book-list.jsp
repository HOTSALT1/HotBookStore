<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

    
<!doctype html>
<html class="no-js" lang="zxx">

<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>관리자 상품목록| Hot Book Store</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- Favicons -->
	<link rel="shortcut icon" href="../images/favicon.png">
	<link rel="apple-touch-icon" href="../images/icon.png">

	<!-- Google font (font-family: 'Roboto', sans-serif; Poppins ; Satisfy) -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,600,600i,700,700i,800"
		rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="../css/bootstrap.min.css">
	<link rel="stylesheet" href="../css/plugins.css">
	<link rel="stylesheet" href="../style.css">

	<!-- Cusom css -->
	<link rel="stylesheet" href="../css/custom.css">

	<!-- Modernizer js -->
	<script src="../js/vendor/modernizr-3.5.0.min.js"></script>
</head>

<body>
	<!-- Main wrapper -->
	<div class="wrapper" id="wrapper">
		
		<!-- admin_navbar -->
		<jsp:include page="admin_navbar.jsp"></jsp:include>
		<div style="border-top:1px solid #e6e6e6; width: 100%; margin-top:90px;"></div>
		
		<!-- Start Bradcaump area -->
		<div class="ht__bradcaump__area bg-image--4">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="bradcaump__inner text-center">
							<h2 class="bradcaump-title">관리자 전용 상품리스트 </h2>
							<nav class="bradcaump-content">
								<a class="breadcrumb_item" href="../admin_index.jsp">상품</a>
								<span class="brd-separetor">/</span>
								<span class="breadcrumb_item active">상품리스트</span>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Bradcaump area -->
		
		
		<!-- Start Shop Page -->
		<section class="page-shop-sidebar left--sidebar bg--white section-padding--lg">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="row">
							<div class="col-lg-12">
								<div
									class="shop__list__wrapper d-flex flex-wrap flex-md-nowrap justify-content-between">
									<div class="shop__list nav justify-content-center" role="tablist">
										<a class="nav-item nav-link active" data-toggle="tab" href="#nav-grid"
											role="tab"><i class="fa fa-th"></i></a>
										<a class="nav-item nav-link" data-toggle="tab" href="#nav-list" role="tab"><i
												class="fa fa-list"></i></a>
									</div>
									<p>Showing 1–12 of 40 results</p>
									<div class="orderby__wrapper">
										<span>Sort By</span>
										<select class="shot__byselect">
											<option>Default sorting</option>
											<option>베스트셀러</option>
											<option>신간</option>
											<option>MD's Pick</option>
										</select>
									</div>
								</div>
							</div>
						</div>
						<div class="tab__container">
							<div class="shop-grid tab-pane fade show active" id="nav-grid" role="tabpanel">
								<div class="row">
									<c:forEach var="book" items="${list }">
									<!-- Start Single Product -->
									<div class="product product__style--3 col-lg-4 col-md-4 col-sm-6 col-12">
										<div class="product__thumb">
											<a class="first__img" href="single-product?book_id=${book.seq}" ><img
													src="${book.img1 }" alt="product image"></a>
											<a class="second__img animation1" href="single-product?book_id=${book.seq}"><img
													src="${book.img2 }" alt="product image"></a>http://localhost:8080/hotSalt/admin/admin_book-list#
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
													<ul class="add_to_links">
														<li><a class="cart" href="cart.html"><i	class="bi bi-shopping-bag4"></i></a></li>
														<li><a class="wishlist" href="wishlist.html"><i	class="bi bi-shopping-cart-full"></i></a></li>
														<li><a data-toggle="modal" title="Quick View" class="quickview modal-view detail-link" href="#productmodal"><i class="bi bi-search"></i></a>
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
									</c:forEach>
									<!-- End Single Product -->
													
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
											<a class="first__img" href="single-product.html"><img
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
		</section>
		<!-- End Shop Page -->
		
		<!-- fotter -->
		<div style="border-top:1px solid #e6e6e6; width: 100%; margin-top:90px;"></div>	
		<jsp:include page="footer.jsp"></jsp:include>
		
	</div>
	<!-- //Main wrapper -->

	<!-- JS Files -->
	<script src="../js/vendor/jquery-3.2.1.min.js"></script>
	<script src="../js/popper.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/plugins.js"></script>
	<script src="../js/active.js"></script>

</body>

</html>