<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Home | Books Library eCommerce Store</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Favicons -->
<link rel="shortcut icon" href="images/favicon.png">
<link rel="apple-touch-icon" href="images/icon.png">

<!-- Google font (font-family: 'Roboto', sans-serif; Poppins ; Satisfy) -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,600,600i,700,700i,800"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900"
	rel="stylesheet">

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
		<div
			class="brown--color box-search-content search_active block-bg close__top">
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
		<!-- Start Slider area -->
		<div
			class="slider-area brown__nav slider--15 slide__activation slide__arrow01 owl-carousel owl-theme">
			<!-- Start Single Slide -->
			<div class="slide animation__style10 bg-image--1 fullscreen align__center--left">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<div class="slider__content">
								<div class="contentbox">
									
									<a class="shopbtn" href="#">shop now</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- End Single Slide -->
			<!-- Start Single Slide -->
			<div
				class="slide animation__style10 bg-image--7 fullscreen align__center--left">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<div class="slider__content">
								<div class="contentbox">
									<h2>
										Buy <span>your </span>
									</h2>
									<h2>
										favourite <span>Book </span>
									</h2>
									<h2>
										from <span>Here </span>
									</h2>
									<a class="shopbtn" href="#">shop now</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- End Single Slide -->
		</div>
		<!-- End Slider area -->
		<!-- 화제의 신간 Start -->
		<section class="wn__product__area brown--color pt--80  pb--30">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="section__title text-center">
							<h2 class="title__be--2">
								이번 주의 <span class="color--theme">HOT</span>한 신간
							</h2>
							<p>매주마다 새로운 책들을 만나보세요.</p>
						</div>
					</div>
				</div>
				<!-- Start Single Tab Content -->
				<div
					class="furniture--4 border--round arrows_style owl-carousel owl-theme mt--50">
					<c:forEach var="book" items="${new_book_list }">
						<!-- Start Single Product -->
						<div class="product product__style--3">
							<div class="product__thumb">
								<a class="first__img" href="single-product?book_id=${book.seq }"><img
									src="${book.img1 }" alt="${book.title }"></a> <a
									class="second__img animation1"
									href="single-product?book_id=${book.seq }"><img
									src="${book.img1 }" alt="${book.title }"></a>
								<div class="hot__box">
									<span class="hot-label">NEW</span>
								</div>
							</div>
						</div>
						<div class="product__content content--center">
							<h4><a href="single-product?book_id=${book.seq }">${book.title }</a></h4>
							<input type="hidden" class="info" value="${book.info }" />
							<input type="hidden" class="review" value="리뷰 개수: ${book.count }"/>
							<ul class="prize d-flex">
								<li><fmt:formatNumber pattern="#,###,###원">${book.d_price }</fmt:formatNumber></li>
								<li class="old_prize"><fmt:formatNumber pattern="#,###,###원">${book.price }</fmt:formatNumber></li>
							</ul>
							<div class="action">
								<div class="actions_inner">
									<input type="hidden" class="seq" value="${book.seq }" />
									<ul class="add_to_links">
										<li><a id="buy3_${book.seq }" class="cart " href="javascript:void(0)"><i class="bi bi-shopping-bag4"></i></a>
										</li>
										<li><a class="addToCart" href="javascript:void(0)"><i
													class="bi bi-shopping-cart-full"></i></a></li>
										<li><a class="wishlist" href="javascript:void(0)"><i class="bi bi-heart-beat"></i></a></li>
										<li><a data-toggle="modal" title="Quick View"
												class="quickview modal-view detail-link" href="#productmodal"><i
													class="bi bi-search"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="product__hover--content">
								<input type="hidden" id="score_${book.seq }" value="${book.score }" />
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
						<!-- End Single Product -->
					</c:forEach>
				</div>
				<!-- End Single Tab Content -->
			</div>
		</section>
		<!-- 화제의 신간 End -->

		<!-- Start Best Seller Area -->
		<section class="wn__bestseller__area bg--white pt--80  pb--30">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="section__title text-center">
							<h2 class="title__be--2">
								우리 책방의 가장 <span class="color--theme">HOT</span>한 책들
							</h2>
							<p>리뷰 평점이 가장 높은 순으로 MD가 여러분들께 적극 추천하는 책입니다.</p>
						</div>
					</div>
				</div>
				<div class="row mt--50">
					<div class="col-md-12 col-lg-12 col-sm-12">
						<div class="product__nav nav justify-content-center" role="tablist">
							<a class="nav-item nav-link active" data-toggle="tab" href="#nav-all" role="tab">전체</a>
							<a class="nav-item nav-link" data-toggle="tab" href="#nav-biographic" role="tab">인문</a>
							<a class="nav-item nav-link" data-toggle="tab" href="#nav-adventure" role="tab">자기계발</a>
							<a class="nav-item nav-link" data-toggle="tab" href="#nav-children" role="tab">소설/시/희곡</a>
							<a class="nav-item nav-link" data-toggle="tab" href="#nav-cook" role="tab">경제 경영</a>
						</div>
					</div>
				</div>
				<div class="tab__container mt--60">
					<!-- Start Single Tab Content -->
					<div class="row single__tab tab-pane fade show active" id="nav-all" role="tabpanel">
						<div class="product__indicator--4 arrows_style owl-carousel owl-theme">
							<c:forEach var="book" items="${list_DP_all }" varStatus="i" begin="1">
								<!-- Start Single Product -->
								<div class="col-lg-3 col-md-4 col-sm-6 col-12">
									<div class="product product__style--3">
										<div class="product__thumb">
											<a class="first__img" href="single-product?book_id=${book.seq }"><img src="${book.img1 }"
													alt="${book.title }" style="width:370px;"></a>
											<a class="second__img animation1" href="single-product?book_id=${book.seq }"><img
													src="${book.img1 }" alt="${book.title }" style="width:370px;"></a>
											<div class="hot__box">
												<span class="hot-label">NEW</span>
											</div>
										</div>
										<div class="product__content content--center">
											<h4><a href="single-product?book_id=${book.seq }">${book.title }</a></h4>
											<input type="hidden" class="info" value="${book.info }" />
											<input type="hidden" class="review" value="리뷰 개수: ${book.count }"/>
											<ul class="prize d-flex">
												<li><fmt:formatNumber pattern="#,###,###원">${book.d_price }</fmt:formatNumber></li>
												<li class="old_prize"><fmt:formatNumber pattern="#,###,###원">${book.price }</fmt:formatNumber></li>
											</ul>
											<div class="action">
												<div class="actions_inner">
													<input type="hidden" class="seq" value="${book.seq }" />
													<ul class="add_to_links">
														<li><a id="buy3_${book.seq }" class="cart " href="javascript:void(0)"><i class="bi bi-shopping-bag4"></i></a>
														</li>
														<li><a class="addToCart" href="javascript:void(0)"><i
																	class="bi bi-shopping-cart-full"></i></a></li>
														<li><a class="wishlist" href="javascript:void(0)"><i class="bi bi-heart-beat"></i></a></li>
														<li><a data-toggle="modal" title="Quick View"
																class="quickview modal-view detail-link" href="#productmodal"><i
																	class="bi bi-search"></i></a></li>
													</ul>
												</div>
											</div>
											<div class="product__hover--content">
												<input type="hidden" id="score_${book.seq }" value="${book.score }" />
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
								</div>
								<!-- Start Single Product -->
							</c:forEach>
						</div>
					</div>	
					<!-- Start Single Tab Content -->
					<div class="row single__tab tab-pane fade" id="nav-biographic" role="tabpanel">
						<div class="product__indicator--4 arrows_style owl-carousel owl-theme">
							<c:forEach var="book" items="${list_DP_01 }" varStatus="i" begin="1">
								<!-- Start Single Product -->
								<div class="col-lg-3 col-md-4 col-sm-6 col-12">
									<div class="product product__style--3">
										<div class="product__thumb">
											<a class="first__img" href="single-product?book_id=${book.seq }"><img src="${book.img1 }"
													alt="${book.title }" style="width:370px;"></a>
											<a class="second__img animation1" href="single-product?book_id=${book.seq }"><img
													src="${book.img1 }" alt="${book.title }" style="width:370px;"></a>
											<div class="hot__box">
												<span class="hot-label">NEW</span>
											</div>
										</div>
										<div class="product__content content--center">
											<h4><a href="single-product?book_id=${book.seq }">${book.title }</a></h4>
											<input type="hidden" class="info" value="${book.info }" />
											<input type="hidden" class="review" value="리뷰 개수: ${book.count }"/>
											<ul class="prize d-flex">
												<li><fmt:formatNumber pattern="#,###,###원">${book.d_price }</fmt:formatNumber></li>
												<li class="old_prize"><fmt:formatNumber pattern="#,###,###원">${book.price }</fmt:formatNumber></li>
											</ul>
											<div class="action">
												<div class="actions_inner">
													<input type="hidden" class="seq" value="${book.seq }" />
													<ul class="add_to_links">
														<li><a id="buy3_${book.seq }" class="cart " href="javascript:void(0)"><i class="bi bi-shopping-bag4"></i></a>
														</li>
														<li><a class="addToCart" href="javascript:void(0)"><i
																	class="bi bi-shopping-cart-full"></i></a></li>
														<li><a class="wishlist" href="javascript:void(0)"><i class="bi bi-heart-beat"></i></a></li>
														<li><a data-toggle="modal" title="Quick View"
																class="quickview modal-view detail-link" href="#productmodal"><i
																	class="bi bi-search"></i></a></li>
													</ul>
												</div>
											</div>
											<div class="product__hover--content">
												<input type="hidden" id="score_${book.seq }" value="${book.score }" />
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
								</div>
								<!-- Start Single Product -->
							</c:forEach>
						</div>
					</div>
					<!-- End Single Tab Content -->
					<!-- Start Single Tab Content -->
					<div class="row single__tab tab-pane fade" id="nav-adventure" role="tabpanel">
						<div class="product__indicator--4 arrows_style owl-carousel owl-theme">
							<c:forEach var="book" items="${list_DP_02 }" varStatus="i" begin="1">
								<!-- Start Single Product -->
								<div class="col-lg-3 col-md-4 col-sm-6 col-12">
									<div class="product product__style--3">
										<div class="product__thumb">
											<a class="first__img" href="single-product?book_id=${book.seq }"><img src="${book.img1 }"
													alt="${book.title }" style="width:370px;"></a>
											<a class="second__img animation1" href="single-product?book_id=${book.seq }"><img
													src="${book.img1 }" alt="${book.title }" style="width:370px;"></a>
											<div class="hot__box">
												<span class="hot-label">NEW</span>
											</div>
										</div>
										<div class="product__content content--center">
											<h4><a href="single-product?book_id=${book.seq }">${book.title }</a></h4>
											<input type="hidden" class="info" value="${book.info }" />
											<input type="hidden" class="review" value="리뷰 개수: ${book.count }"/>
											<ul class="prize d-flex">
												<li><fmt:formatNumber pattern="#,###,###원">${book.d_price }</fmt:formatNumber></li>
												<li class="old_prize"><fmt:formatNumber pattern="#,###,###원">${book.price }</fmt:formatNumber></li>
											</ul>
											<div class="action">
												<div class="actions_inner">
													<input type="hidden" class="seq" value="${book.seq }" />
													<ul class="add_to_links">
														<li><a id="buy3_${book.seq }" class="cart " href="javascript:void(0)"><i class="bi bi-shopping-bag4"></i></a>
														</li>
														<li><a class="addToCart" href="javascript:void(0)"><i
																	class="bi bi-shopping-cart-full"></i></a></li>
														<li><a class="wishlist" href="javascript:void(0)"><i class="bi bi-heart-beat"></i></a></li>
														<li><a data-toggle="modal" title="Quick View"
																class="quickview modal-view detail-link" href="#productmodal"><i
																	class="bi bi-search"></i></a></li>
													</ul>
												</div>
											</div>
											<div class="product__hover--content">
												<input type="hidden" id="score_${book.seq }" value="${book.score }" />
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
								</div>
								<!-- Start Single Product -->
							</c:forEach>
						</div>
					</div>
					<!-- End Single Tab Content -->
					<!-- Start Single Tab Content -->
					<div class="row single__tab tab-pane fade" id="nav-children" role="tabpanel">
						<div class="product__indicator--4 arrows_style owl-carousel owl-theme">
							<c:forEach var="book" items="${list_DP_03 }" varStatus="i" begin="1">
								<!-- Start Single Product -->
								<div class="col-lg-3 col-md-4 col-sm-6 col-12">
									<div class="product product__style--3">
										<div class="product__thumb">
											<a class="first__img" href="single-product?book_id=${book.seq }"><img src="${book.img1 }"
													alt="${book.title }" style="width:370px;"></a>
											<a class="second__img animation1" href="single-product?book_id=${book.seq }"><img
													src="${book.img1 }" alt="${book.title }" style="width:370px;"></a>
											<div class="hot__box">
												<span class="hot-label">NEW</span>
											</div>
										</div>
										<div class="product__content content--center">
											<h4><a href="single-product?book_id=${book.seq }">${book.title }</a></h4>
											<input type="hidden" class="info" value="${book.info }" />
											<input type="hidden" class="review" value="리뷰 개수: ${book.count }"/>
											<ul class="prize d-flex">
												<li><fmt:formatNumber pattern="#,###,###원">${book.d_price }</fmt:formatNumber></li>
												<li class="old_prize"><fmt:formatNumber pattern="#,###,###원">${book.price }</fmt:formatNumber></li>
											</ul>
											<div class="action">
												<div class="actions_inner">
													<input type="hidden" class="seq" value="${book.seq }" />
													<ul class="add_to_links">
														<li><a id="buy3_${book.seq }" class="cart " href="javascript:void(0)"><i class="bi bi-shopping-bag4"></i></a>
														</li>
														<li><a class="addToCart" href="javascript:void(0)"><i
																	class="bi bi-shopping-cart-full"></i></a></li>
														<li><a class="wishlist" href="javascript:void(0)"><i class="bi bi-heart-beat"></i></a></li>
														<li><a data-toggle="modal" title="Quick View"
																class="quickview modal-view detail-link" href="#productmodal"><i
																	class="bi bi-search"></i></a></li>
													</ul>
												</div>
											</div>
											<div class="product__hover--content">
												<input type="hidden" id="score_${book.seq }" value="${book.score }" />
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
								</div>
								<!-- Start Single Product -->
							</c:forEach>
						</div>
					</div>
					<!-- End Single Tab Content -->
					<!-- Start Single Tab Content -->
					<div class="row single__tab tab-pane fade" id="nav-cook" role="tabpanel">
						<div class="product__indicator--4 arrows_style owl-carousel owl-theme">
							<c:forEach var="book" items="${list_DP_04 }" varStatus="i" begin="1">
								<!-- Start Single Product -->
								<div class="col-lg-3 col-md-4 col-sm-6 col-12">
									<div class="product product__style--3">
										<div class="product__thumb">
											<a class="first__img" href="single-product?book_id=${book.seq }"><img src="${book.img1 }"
													alt="${book.title }" style="width:370px;"></a>
											<a class="second__img animation1" href="single-product?book_id=${book.seq }"><img
													src="${book.img1 }" alt="${book.title }" style="width:370px;"></a>
											<div class="hot__box">
												<span class="hot-label">NEW</span>
											</div>
										</div>
										<div class="product__content content--center">
											<h4><a href="single-product?book_id=${book.seq }">${book.title }</a></h4>
											<input type="hidden" class="info" value="${book.info }" />
											<input type="hidden" class="review" value="리뷰 개수: ${book.count }"/>
											<ul class="prize d-flex">
												<li><fmt:formatNumber pattern="#,###,###원">${book.d_price }</fmt:formatNumber></li>
												<li class="old_prize"><fmt:formatNumber pattern="#,###,###원">${book.price }</fmt:formatNumber></li>
											</ul>
											<div class="action">
												<div class="actions_inner">
													<input type="hidden" class="seq" value="${book.seq }" />
													<ul class="add_to_links">
														<li><a id="buy3_${book.seq }" class="cart " href="javascript:void(0)"><i class="bi bi-shopping-bag4"></i></a>
														</li>
														<li><a class="addToCart" href="javascript:void(0)"><i
																	class="bi bi-shopping-cart-full"></i></a></li>
														<li><a class="wishlist" href="javascript:void(0)"><i class="bi bi-heart-beat"></i></a></li>
														<li><a data-toggle="modal" title="Quick View"
																class="quickview modal-view detail-link" href="#productmodal"><i
																	class="bi bi-search"></i></a></li>
													</ul>
												</div>
											</div>
											<div class="product__hover--content">
												<input type="hidden" id="score_${book.seq }" value="${book.score }" />
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
								</div>
								<!-- Start Single Product -->
							</c:forEach>
						</div>
					</div>
					<!-- End Single Tab Content -->
				</div>
			</div>
		</section>
		<!-- Start BEst Seller Area -->
		<!-- Start Recent Post Area -->
		<section class="wn__recent__post bg--gray ptb--80">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="section__title text-center">
							<h2 class="title__be--2">
								Latest <span class="color--theme">Review</span>
							</h2>
							<p>There are many variations of passages of Lorem Ipsum
								available, but the majority have suffered lebmid alteration in
								some ledmid form</p>
						</div>
					</div>
				</div>
				<div class="row mt--50">
					<c:forEach var="review_list" items="${reviewDTO }">
						<div class="col-md-6 col-lg-4 col-sm-12">
							<div class="post__itam"
								style="height: 450px; text-overflow: ellipsis;">
								<div class="content"
									style="height: 450px; text-overflow: ellipsis;">
									<div class="review_content_div">
										<h3>
											<a href="review-details?review_seq=${review_list.review_seq}">${review_list.review_title}</a>
										</h3>
									</div>
									<div class="review_content_div">
										<a href="review-details?review_seq=${review_list.review_seq}">${review_list.review_content}</a>
									</div>
									<div class="post__time">
										<span class="day">${review_list.review_regdate}</span>
										<div class="post-meta">
											<ul>
												<li><a href="#"><i class="bi bi-love"></i>72</a></li>
												<li><a href="#"><i class="bi bi-chat-bubble"></i>27</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!--End class="col-md-6 col-lg-4 col-sm-12" -->
					</c:forEach>

					<!-- 	<div class="col-md-6 col-lg-4 col-sm-12">
						<div class="post__itam">
							<div class="content">
								<h3><a href="blog-details.html">Reading has a signficant info number of benefits</a>
								</h3>
								<p>Find all the information you need to ensure your experience.Find all the information
									you need to ensure your experience . Find all the information you of.</p>
								<div class="post__time">
									<span class="day">Mar 08, 18</span>
									<div class="post-meta">
										<ul>
											<li><a href="#"><i class="bi bi-love"></i>72</a></li>
											<li><a href="#"><i class="bi bi-chat-bubble"></i>27</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-4 col-sm-12">
						<div class="post__itam">
							<div class="content">
								<h3><a href="blog-details.html">The London Book Fair is to be packed with exciting </a>
								</h3>
								<p>The London Book Fair is the global area inon marketplace for rights negotiation.The
									year London Book Fair is the global area inon forg marketplace for rights.</p>
								<div class="post__time">
									<span class="day">Nov 11, 18</span>
									<div class="post-meta">
										<ul>
											<li><a href="#"><i class="bi bi-love"></i>72</a></li>
											<li><a href="#"><i class="bi bi-chat-bubble"></i>27</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div> -->
				</div>
				<!--  class="row mt--50" -->
			</div>
			<!-- class="container" -->
		</section>
		<!-- End Recent Post Area -->
		<!-- Best Sale Area -->
		<section class="best-seel-area pt--80 pb--60">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="section__title text-center pb--50">
							<h2 class="title__be--2">
								Best <span class="color--theme">Seller </span>
							</h2>
							<p>There are many variations of passages of Lorem Ipsum
								available, but the majority have suffered lebmid alteration in
								some ledmid form</p>
						</div>
					</div>
				</div>
			</div>
			<div class="slider center">
				<c:forEach var="book" items="${best_book_list }">
					<!-- Single product start -->
					<div class="product product__style--3">
						<div class="product__thumb">
							<a class="first__img" href="single-product?book_id=${book.seq }"><img
								src="${book.img1 }" alt="${book.title }"></a>
						</div>
						<div class="product__content content--center">
							<div class="action">
								<div class="actions_inner">
									<input type="hidden" id="seq_${book.seq }" value="${book.seq }" />
									<ul class="add_to_links">
										<li><a class="cart addToCart" href="javascript:void(0)"><i
												class="bi bi-shopping-bag4"></i></a></li>
										<li><a class="wishlist" href="wishlist.html"><i
												class="bi bi-shopping-cart-full"></i></a></li>
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
					<!-- Single product end -->
				</c:forEach>
			</div>
		</section>
		<!-- Best Sale Area Area -->
		<!-- Footer Area -->
		<footer id="wn__footer" class="footer__area bg__cat--8 brown--color">
			<div class="footer-static-top">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<div class="footer__widget footer__menu">
								<div class="ft__logo">
									<a href="index.html"> <img src="images/logo/3.png"
										alt="logo">
									</a>
									<p>There are many variations of passages of Lorem Ipsum
										available, but the majority have suffered duskam alteration
										variations of passages</p>
								</div>
								<div class="footer__content">
									<ul
										class="social__net social__net--2 d-flex justify-content-center">
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
									<p>
										Copyright <i class="fa fa-copyright"></i> <a href="#">Boighor.</a>
										All Rights Reserved
									</p>
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
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
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
									<h1 id="modal-title">Simple Fabric Bags</h1>
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
											<span id="modal-d_price" class="new-price">$17.20</span> <span
												id="modal-price" class="old-price">$45.00</span>
										</div>
									</div>
									<div id="modal-info" class="quick-desc">Designed for
										simplicity and made from high quality materials. Its sleek
										geometry and material combinations creates a modern look.</div>
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
	<script src="js/member.js"></script>
	<script src="js/cart.js"></script>
	<script src="js/shop-grid.js"></script>

	<script type="text/javascript">
		
	</script>
</body>

</html>