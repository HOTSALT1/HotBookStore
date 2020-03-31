<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${book.title }- Hot Book Store</title>


</head>
<!-- Favicons -->
<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/favicon.png">
<link rel="apple-touch-icon" href="${pageContext.request.contextPath}/images/icon.png">

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
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/plugins.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">

<!-- Cusom css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css">

<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>

<!-- Modernizer js -->
<script src="js/vendor/modernizr-3.5.0.min.js"></script>
</head>

<body>
	<jsp:include page="navbar.jsp"></jsp:include>
	<div style="border-top:1px solid #e6e6e6; width: 100%; margin-top:90px;"></div>
	
	<input type="hidden" name="book_id" id="book_id" value="${book.seq }">
	
	<div name="product_single" class="wrapper" id="wrapper">

	<!-- Start main Content -->
	<div class="maincontent bg--white pt--80 pb--55">
		<div class="container">
			<div class="row">
				<div class="col-lg-9 col-12">
					<div class="wn__single__product">
						<div class="row">
							<div class="col-lg-6 col-12">
								<div class="wn__fotorama__wrapper">
									<div class="fotorama wn__fotorama__action" data-nav="thumbs">										
										<a href="${book.img1 }"><img src="${book.img1 }" alt=""></a>
										<a href="${book.img2 }"><img src="${book.img2 }" alt=""></a>
										<a href="${book.img3 }"><img src="${book.img3 }" alt=""></a>
										<a href="${book.img4 }"><img src="${book.img4 }" alt=""></a>
										<a href="${book.img5 }"><img src="${book.img5 }" alt=""></a>
										<a href="${book.img6 }"><img src="${book.img6 }" alt=""></a>
										<a href="${book.img7 }"><img src="${book.img7 }" alt=""></a>
									</div>
								</div>
							</div>
							<div class="col-lg-6 col-12">
								<div class="product__info__main">
									<h1>${book.title }</h1> 
									<h6>${book.subTitle }</h6><br> 
									<p>${book.author } |  ${book.pub }  |  ${book.p_date }  </p>										
									
									<div class="product-reviews-summary d-flex">
										<ul id="star" class="rating-summary d-flex">
											<li><i class="zmdi zmdi-star-outline"></i></li>
											<li><i class="zmdi zmdi-star-outline"></i></li>
											<li><i class="zmdi zmdi-star-outline"></i></li>
											<li class="on"><i class="zmdi zmdi-star-outline"></i></li>
											<li class="on"><i class="zmdi zmdi-star-outline"></i></li>
										</ul>
									</div>
									<div class="price-box">
										<del><fmt:formatNumber pattern="#,###원">${book.price }</fmt:formatNumber></del>
										<span><fmt:formatNumber pattern="#,###원">${book.d_price }</fmt:formatNumber></span>
									
									</div>
									
									<div class="product__overview">
										<h6 class="title__be--2"><span class="color--theme">${book.cate2 }</span></h6>
										<ul>
											<li>• 쪽수 : ${book.page}</li>
											<li>• 크기  : ${book.book_size}</li>
											<li>• 무게  : ${book.weight}</li>
											<li>• ISBN : ${book.isbn13} (${book.isbn10})</li> 
										</ul>									</div>
									<div class="box-tocart d-flex">
										<span>수량</span> <input id="qty" class="input-text qty" name="qty" min="1" value="1" title="Qty" type="number">
										<div class="addtocart__actions">
											<button class="tocart" type="submit" title="Add to Cart">카트에 넣기</button>
										</div>
										<div class="product-addto-links clearfix">
											<a class="wishlist" href="#"></a> <a class="wishlist" href="#"></a>
										</div>
									</div>
									<div class="product_meta">
										<span class="posted_in">카테고리 분류 : <a href="#">${book.cate1 }</a>
										</span>
									</div>
									<div class="product-share">
										<ul>
											<li class="categories-title">공유하기 :</li>
											<li><a href="#"> <i
													class="icon-social-twitter icons"></i>
											</a></li>
											<li><a href="#"> <i class="icon-social-tumblr icons"></i>
											</a></li>
											<li><a href="#"> <i
													class="icon-social-facebook icons"></i>
											</a></li>
											<li><a href="#"> <i
													class="icon-social-linkedin icons"></i>
											</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="product__info__detailed">
						<div class="pro_details_nav nav justify-content-start" role="tablist">
								<a class="nav-item nav-link active" data-toggle="tab" href="#nav-info" role="tab">책소개 </a> 
								<a class="nav-item nav-link" data-toggle="tab" href="#nav-details" role="tab">상세이미지</a> 
								<a class="nav-item nav-link" data-toggle="tab" href="#nav-book_index" role="tab">목차</a> 
								<!-- <a class="nav-item nav-link" data-toggle="tab" href="#nav-details" role="tab">저자소개</a> 
								<a class="nav-item nav-link" data-toggle="tab" href="#nav-details" role="tab">같은 저자의 다른 책</a> -->								
								<a class="nav-item nav-link" data-toggle="tab" href="#nav-review" role="tab">리뷰 작성하기</a> 
								<a class="nav-item nav-link" data-toggle="tab" href="#nav-review" role="tab">해당 책 리뷰 목록</a>
						</div>
						<div class="tab__container">
							<!-- Start 책소개 Tab Content -->
							<div class="pro__tab_label tab-pane fade show active" id="nav-info" role="tabpanel">
								<div class="description__attribute">
									<p>${book.info}</p>
								</div>
							</div>
							<!-- End 책소개 Tab Content -->
							
							<!-- Start 상세이미지 Tab Content -->
							<div class="pro__tab_label tab-pane fade show" id="nav-details" role="tabpanel">
								<div class="description__attribute">
									<a><img src="${book.detail}" alt=""></a>
								</div>
							</div>
							<!-- End 상세이미지 Tab Content -->
							
							<!-- Start 목차 Tab Content -->
							<div class="pro__tab_label tab-pane fade show" id="nav-book_index" role="tabpanel">
								<div class="description__attribute">
									<p>${book.book_index}</p>
								</div>
							</div>
							<!-- End 목차 Tab Content -->
						
							<!-- Start 리뷰작성 Tab Content -->
							<form id="review_WriteForm" name="review_WriteForm">
							<input type="hidden" id="review_book_id" value="${book.seq }">
							<input type="hidden" id="review_member_id" value="${memId }">
							<div class="pro__tab_label tab-pane fade" id="nav-review"
								role="tabpanel">
								<div class="review__attribute">
									<h1>리뷰 작성하기</h1>
									<h2>멤버 아이디 띄우기</h2>
									<div class="review__ratings__type d-flex">
										<div class="review-ratings">
											<div class="rating-summary d-flex">
												<span>Quality</span><input type="hidden" id="score" value="${score }">
												<ul class="rating d-flex">
													<li><i class="zmdi zmdi-star"></i></li>
													<li><i class="zmdi zmdi-star"></i></li>
													<li><i class="zmdi zmdi-star"></i></li>
													<li class="off"><i class="zmdi zmdi-star"></i></li>
													<li class="off"><i class="zmdi zmdi-star"></i></li>
												</ul>
											</div>

											<div class="rating-summary d-flex">
												<span>Price</span>
												<ul class="rating d-flex">
													<li><i class="zmdi zmdi-star"></i></li>
													<li><i class="zmdi zmdi-star"></i></li>
													<li><i class="zmdi zmdi-star"></i></li>
													<li class="off"><i class="zmdi zmdi-star"></i></li>
													<li class="off"><i class="zmdi zmdi-star"></i></li>
												</ul>
											</div>
											<div class="rating-summary d-flex">
												<span>value</span>
												<ul class="rating d-flex">
													<li><i class="zmdi zmdi-star"></i></li>
													<li><i class="zmdi zmdi-star"></i></li>
													<li><i class="zmdi zmdi-star"></i></li>
													<li class="off"><i class="zmdi zmdi-star"></i></li>
													<li class="off"><i class="zmdi zmdi-star"></i></li>
												</ul>
											</div>
										</div>
										<div class="review-content">
											<p>멤버아이디</p>
											<p>Review by 멤버아이디</p>
											<p>Posted on 오늘날짜</p>
										</div>
									</div>
								</div>
								<div class="review-fieldset">
									<h2>You're reviewing:</h2>
									<h3>${book.title }</h3>
									<div class="review-field-ratings">
										<div class="product-review-table">
											<!-- <div class="review-field-rating d-flex">
												<span>Quality</span>
												<ul class="rating d-flex">
													<li class="off"><i class="zmdi zmdi-star"></i></li>
													<li class="off"><i class="zmdi zmdi-star"></i></li>
													<li class="off"><i class="zmdi zmdi-star"></i></li>
													<li class="off"><i class="zmdi zmdi-star"></i></li>
													<li class="off"><i class="zmdi zmdi-star"></i></li>
												</ul>
											</div>
											<div class="review-field-rating d-flex">
												<span>Price</span>
												<ul class="rating d-flex">
													<li class="off"><i class="zmdi zmdi-star"></i></li>
													<li class="off"><i class="zmdi zmdi-star"></i></li>
													<li class="off"><i class="zmdi zmdi-star"></i></li>
													<li class="off"><i class="zmdi zmdi-star"></i></li>
													<li class="off"><i class="zmdi zmdi-star"></i></li>
												</ul>
											</div> -->
											<div class="review-field-rating d-flex">
												<span>평점</span><input type="hidden" id="writeScore" value="0">
												<ul id="writeStar" class="rating d-flex">
													<li id="1" class="on "><i class="zmdi zmdi-star"></i></li>
													<li id="2" class="on"><i class="zmdi zmdi-star"></i></li>
													<li id="3" class="on "><i class="zmdi zmdi-star"></i></li>
													<li id="4" class="off "><i class="zmdi zmdi-star"></i></li>
													<li id="5" class="off "><i class="zmdi zmdi-star"></i></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="review_form_field">
										<div class="input__box">
											<span>작성자 아이디</span> <input id="nickname_field" type="text"
												name="nickname" value="${memId}">
										</div>
										<div class="input__box">
											<span>review title</span>
											<div id="review_title_div"></div>
											<input id="title_field" type="text"
												name="title_field">
										</div>
										<div class="input__box">
											<span>review quote</span>
											<div id="review_quote_div"></div>
											<textarea name="quote_field" id="quote_field"></textarea>
										</div>
										<div class="input__box">
											<span>review content</span>
											<div id="review_content_div"></div>
											<textarea name="content_field" id="content_field"></textarea>
										</div>
										<div class="review-form-actions">
											<input id="review_writeBtn" type="button" title="submit review" value="Submit Review">
											<!-- <button id="review_writeBtn" type="submit" title="submit review">Submit Review</button> -->
										</div>
									</div>
								</div>
							</div>
							</form>
							<!-- End 리뷰작성 Tab Content -->
						</div>
					</div>
					<div class="wn__related__product pt--80 pb--50">
						
<!-- ------------------------책 소개 끝--관련상품 시작------------------------------------------------------------------------------------------------------- -->
						<div class="section__title text-center">
							<h2 class="title__be--2">Related Products</h2>
						</div>
						<div class="row mt--60">
							<div
								class="productcategory__slide--2 arrows_style owl-carousel owl-theme">
								<!-- Start Single Product -->
								<div
									class="product product__style--3 col-lg-4 col-md-4 col-sm-6 col-12">
									<div class="product__thumb">
										<a class="first__img" href="single-product.html"><img
											src="images/books/1.jpg" alt="product image"></a> <a
											class="second__img animation1" href="single-product.html"><img
											src="images/books/2.jpg" alt="product image"></a>
										<div class="hot__box">
											<span class="hot-label">베스트 셀러</span>
										</div>
									</div>
									<div class="product__content content--center">
										<h4>
											<a href="single-product.html">페스트</a>
										</h4>
										<ul class="prize d-flex">
											<li>11700원</li>
											<li class="old_prize">10200원</li>
										</ul>
										<div class="action">
											<div class="actions_inner">
												<ul class="add_to_links">
													<li><a class="cart" href="cart.html"><i
															class="bi bi-shopping-bag4"></i></a></li>
													<li><a class="wishlist" href="wishlist.html"><i
															class="bi bi-shopping-cart-full"></i></a></li>
													<li><a class="compare" href="#"><i
															class="bi bi-heart-beat"></i></a></li>
													<li><a data-toggle="modal" title="Quick View"
														class="quickview modal-view detail-link"
														href="#productmodal"><i class="bi bi-search"></i></a></li>
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
								<!-- Start Single Product -->
								<!-- Start Single Product -->
								<div
									class="product product__style--3 col-lg-4 col-md-4 col-sm-6 col-12">
									<div class="product__thumb">
										<a class="first__img" href="single-product.html"><img
											src="images/books/3.jpg" alt="product image"></a> <a
											class="second__img animation1" href="single-product.html"><img
											src="images/books/4.jpg" alt="product image"></a>
										<div class="hot__box color--2">
											<span class="hot-label">HOT</span>
										</div>
									</div>
									<div class="product__content content--center">
										<h4>
											<a href="single-product.html">더 해빙 The Having</a>
										</h4>
										<ul class="prize d-flex">
											<li>14,400원</li>
											<li class="old_prize">16,000원</li>
										</ul>
										<div class="action">
											<div class="actions_inner">
												<ul class="add_to_links">
													<li><a class="cart" href="cart.html"><i
															class="bi bi-shopping-bag4"></i></a></li>
													<li><a class="wishlist" href="wishlist.html"><i
															class="bi bi-shopping-cart-full"></i></a></li>
													<li><a class="compare" href="#"><i
															class="bi bi-heart-beat"></i></a></li>
													<li><a data-toggle="modal" title="Quick View"
														class="quickview modal-view detail-link"
														href="#productmodal"><i class="bi bi-search"></i></a></li>
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
								<!-- Start Single Product -->
								<!-- Start Single Product -->
								<div
									class="product product__style--3 col-lg-4 col-md-4 col-sm-6 col-12">
									<div class="product__thumb">
										<a class="first__img" href="single-product.html"><img
											src="images/books/7.jpg" alt="product image"></a> <a
											class="second__img animation1" href="single-product.html"><img
											src="images/books/8.jpg" alt="product image"></a>
										<div class="hot__box">
											<span class="hot-label">HOT</span>
										</div>
									</div>
									<div class="product__content content--center">
										<h4>
											<a href="single-product.html">Lando</a>
										</h4>
										<ul class="prize d-flex">
											<li>$35.00</li>
											<li class="old_prize">$50.00</li>
										</ul>
										<div class="action">
											<div class="actions_inner">
												<ul class="add_to_links">
													<li><a class="cart" href="cart.html"><i
															class="bi bi-shopping-bag4"></i></a></li>
													<li><a class="wishlist" href="wishlist.html"><i
															class="bi bi-shopping-cart-full"></i></a></li>
													<li><a class="compare" href="#"><i
															class="bi bi-heart-beat"></i></a></li>
													<li><a data-toggle="modal" title="Quick View"
														class="quickview modal-view detail-link"
														href="#productmodal"><i class="bi bi-search"></i></a></li>
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
								<!-- Start Single Product -->
								<!-- Start Single Product -->
								<div
									class="product product__style--3 col-lg-4 col-md-4 col-sm-6 col-12">
									<div class="product__thumb">
										<a class="first__img" href="single-product.html"><img
											src="images/books/9.jpg" alt="product image"></a> <a
											class="second__img animation1" href="single-product.html"><img
											src="images/books/10.jpg" alt="product image"></a>
										<div class="hot__box">
											<span class="hot-label">HOT</span>
										</div>
									</div>
									<div class="product__content content--center">
										<h4>
											<a href="single-product.html">Doctor Wldo</a>
										</h4>
										<ul class="prize d-flex">
											<li>$35.00</li>
											<li class="old_prize">$35.00</li>
										</ul>
										<div class="action">
											<div class="actions_inner">
												<ul class="add_to_links">
													<li><a class="cart" href="cart.html"><i
															class="bi bi-shopping-bag4"></i></a></li>
													<li><a class="wishlist" href="wishlist.html"><i
															class="bi bi-shopping-cart-full"></i></a></li>
													<li><a class="compare" href="#"><i
															class="bi bi-heart-beat"></i></a></li>
													<li><a data-toggle="modal" title="Quick View"
														class="quickview modal-view detail-link"
														href="#productmodal"><i class="bi bi-search"></i></a></li>
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
								<!-- Start Single Product -->
								<!-- Start Single Product -->
								<div
									class="product product__style--3 col-lg-4 col-md-4 col-sm-6 col-12">
									<div class="product__thumb">
										<a class="first__img" href="single-product.html"><img
											src="images/books/11.jpg" alt="product image"></a> <a
											class="second__img animation1" href="single-product.html"><img
											src="images/books/2.jpg" alt="product image"></a>
										<div class="hot__box">
											<span class="hot-label">베스트셀러</span>
										</div>
									</div>
									<div class="product__content content--center content--center">
										<h4>
											<a href="single-product.html">Animals Life</a>
										</h4>
										<ul class="prize d-flex">
											<li>$50.00</li>
											<li class="old_prize">$35.00</li>
										</ul>
										<div class="action">
											<div class="actions_inner">
												<ul class="add_to_links">
													<li><a class="cart" href="cart.html"><i
															class="bi bi-shopping-bag4"></i></a></li>
													<li><a class="wishlist" href="wishlist.html"><i
															class="bi bi-shopping-cart-full"></i></a></li>
													<li><a class="compare" href="#"><i
															class="bi bi-heart-beat"></i></a></li>
													<li><a data-toggle="modal" title="Quick View"
														class="quickview modal-view detail-link"
														href="#productmodal"><i class="bi bi-search"></i></a></li>
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
								<!-- Start Single Product -->
								<!-- Start Single Product -->
								<div
									class="product product__style--3 col-lg-4 col-md-4 col-sm-6 col-12">
									<div class="product__thumb">
										<a class="first__img" href="single-product.html"><img
											src="images/books/1.jpg" alt="product image"></a> <a
											class="second__img animation1" href="single-product.html"><img
											src="images/books/6.jpg" alt="product image"></a>
										<div class="hot__box">
											<span class="hot-label">BEST SALER</span>
										</div>
									</div>
									<div class="product__content content--center content--center">
										<h4>
											<a href="single-product.html">Olio Madu</a>
										</h4>
										<ul class="prize d-flex">
											<li>$50.00</li>
											<li class="old_prize">$35.00</li>
										</ul>
										<div class="action">
											<div class="actions_inner">
												<ul class="add_to_links">
													<li><a class="cart" href="cart.html"><i
															class="bi bi-shopping-bag4"></i></a></li>
													<li><a class="wishlist" href="wishlist.html"><i
															class="bi bi-shopping-cart-full"></i></a></li>
													<li><a class="compare" href="#"><i
															class="bi bi-heart-beat"></i></a></li>
													<li><a data-toggle="modal" title="Quick View"
														class="quickview modal-view detail-link"
														href="#productmodal"><i class="bi bi-search"></i></a></li>
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
								<!-- Start Single Product -->
							</div>
						</div>
					</div>
					<div class="wn__related__product">
						<div class="section__title text-center">
							<h2 class="title__be--2">upsell products</h2>
						</div>
						<div class="row mt--60">
							<div
								class="productcategory__slide--2 arrows_style owl-carousel owl-theme">
								<!-- Start Single Product -->
								<div
									class="product product__style--3 col-lg-4 col-md-4 col-sm-6 col-12">
									<div class="product__thumb">
										<a class="first__img" href="single-product.html"><img
											src="images/books/1.jpg" alt="product image"></a> <a
											class="second__img animation1" href="single-product.html"><img
											src="images/books/2.jpg" alt="product image"></a>
										<div class="hot__box">
											<span class="hot-label">BEST SALLER</span>
										</div>
									</div>
									<div class="product__content content--center">
										<h4>
											<a href="single-product.html">robin parrish</a>
										</h4>
										<ul class="prize d-flex">
											<li>$35.00</li>
											<li class="old_prize">$35.00</li>
										</ul>
										<div class="action">
											<div class="actions_inner">
												<ul class="add_to_links">
													<li><a class="cart" href="cart.html"><i
															class="bi bi-shopping-bag4"></i></a></li>
													<li><a class="wishlist" href="wishlist.html"><i
															class="bi bi-shopping-cart-full"></i></a></li>
													<li><a class="compare" href="#"><i
															class="bi bi-heart-beat"></i></a></li>
													<li><a data-toggle="modal" title="Quick View"
														class="quickview modal-view detail-link"
														href="#productmodal"><i class="bi bi-search"></i></a></li>
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
								<!-- Start Single Product -->
								<!-- Start Single Product -->
								<div
									class="product product__style--3 col-lg-4 col-md-4 col-sm-6 col-12">
									<div class="product__thumb">
										<a class="first__img" href="single-product.html"><img
											src="images/books/3.jpg" alt="product image"></a> <a
											class="second__img animation1" href="single-product.html"><img
											src="images/books/4.jpg" alt="product image"></a>
										<div class="hot__box color--2">
											<span class="hot-label">HOT</span>
										</div>
									</div>
									<div class="product__content content--center">
										<h4>
											<a href="single-product.html">The Remainng</a>
										</h4>
										<ul class="prize d-flex">
											<li>$35.00</li>
											<li class="old_prize">$35.00</li>
										</ul>
										<div class="action">
											<div class="actions_inner">
												<ul class="add_to_links">
													<li><a class="cart" href="cart.html"><i
															class="bi bi-shopping-bag4"></i></a></li>
													<li><a class="wishlist" href="wishlist.html"><i
															class="bi bi-shopping-cart-full"></i></a></li>
													<li><a class="compare" href="#"><i
															class="bi bi-heart-beat"></i></a></li>
													<li><a data-toggle="modal" title="Quick View"
														class="quickview modal-view detail-link"
														href="#productmodal"><i class="bi bi-search"></i></a></li>
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
								<!-- Start Single Product -->
								<!-- Start Single Product -->
								<div
									class="product product__style--3 col-lg-4 col-md-4 col-sm-6 col-12">
									<div class="product__thumb">
										<a class="first__img" href="single-product.html"><img
											src="images/books/7.jpg" alt="product image"></a> <a
											class="second__img animation1" href="single-product.html"><img
											src="images/books/8.jpg" alt="product image"></a>
										<div class="hot__box">
											<span class="hot-label">HOT</span>
										</div>
									</div>
									<div class="product__content content--center">
										<h4>
											<a href="single-product.html">Lando</a>
										</h4>
										<ul class="prize d-flex">
											<li>$35.00</li>
											<li class="old_prize">$50.00</li>
										</ul>
										<div class="action">
											<div class="actions_inner">
												<ul class="add_to_links">
													<li><a class="cart" href="cart.html"><i
															class="bi bi-shopping-bag4"></i></a></li>
													<li><a class="wishlist" href="wishlist.html"><i
															class="bi bi-shopping-cart-full"></i></a></li>
													<li><a class="compare" href="#"><i
															class="bi bi-heart-beat"></i></a></li>
													<li><a data-toggle="modal" title="Quick View"
														class="quickview modal-view detail-link"
														href="#productmodal"><i class="bi bi-search"></i></a></li>
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
								<!-- Start Single Product -->
								<!-- Start Single Product -->
								<div
									class="product product__style--3 col-lg-4 col-md-4 col-sm-6 col-12">
									<div class="product__thumb">
										<a class="first__img" href="single-product.html"><img
											src="images/books/9.jpg" alt="product image"></a> <a
											class="second__img animation1" href="single-product.html"><img
											src="images/books/10.jpg" alt="product image"></a>
										<div class="hot__box">
											<span class="hot-label">HOT</span>
										</div>
									</div>
									<div class="product__content content--center">
										<h4>
											<a href="single-product.html">Doctor Wldo</a>
										</h4>
										<ul class="prize d-flex">
											<li>$35.00</li>
											<li class="old_prize">$35.00</li>
										</ul>
										<div class="action">
											<div class="actions_inner">
												<ul class="add_to_links">
													<li><a class="cart" href="cart.html"><i
															class="bi bi-shopping-bag4"></i></a></li>
													<li><a class="wishlist" href="wishlist.html"><i
															class="bi bi-shopping-cart-full"></i></a></li>
													<li><a class="compare" href="#"><i
															class="bi bi-heart-beat"></i></a></li>
													<li><a data-toggle="modal" title="Quick View"
														class="quickview modal-view detail-link"
														href="#productmodal"><i class="bi bi-search"></i></a></li>
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
								<!-- Start Single Product -->
								<!-- Start Single Product -->
								<div
									class="product product__style--3 col-lg-4 col-md-4 col-sm-6 col-12">
									<div class="product__thumb">
										<a class="first__img" href="single-product.html"><img
											src="images/books/11.jpg" alt="product image"></a> <a
											class="second__img animation1" href="single-product.html"><img
											src="images/books/2.jpg" alt="product image"></a>
										<div class="hot__box">
											<span class="hot-label">BEST SALER</span>
										</div>
									</div>
									<div class="product__content content--center content--center">
										<h4>
											<a href="single-product.html">Animals Life</a>
										</h4>
										<ul class="prize d-flex">
											<li>$50.00</li>
											<li class="old_prize">$35.00</li>
										</ul>
										<div class="action">
											<div class="actions_inner">
												<ul class="add_to_links">
													<li><a class="cart" href="cart.html"><i
															class="bi bi-shopping-bag4"></i></a></li>
													<li><a class="wishlist" href="wishlist.html"><i
															class="bi bi-shopping-cart-full"></i></a></li>
													<li><a class="compare" href="#"><i
															class="bi bi-heart-beat"></i></a></li>
													<li><a data-toggle="modal" title="Quick View"
														class="quickview modal-view detail-link"
														href="#productmodal"><i class="bi bi-search"></i></a></li>
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
								<!-- Start Single Product -->
								<!-- Start Single Product -->
								<div
									class="product product__style--3 col-lg-4 col-md-4 col-sm-6 col-12">
									<div class="product__thumb">
										<a class="first__img" href="single-product.html"><img
											src="images/books/1.jpg" alt="product image"></a> <a
											class="second__img animation1" href="single-product.html"><img
											src="images/books/6.jpg" alt="product image"></a>
										<div class="hot__box">
											<span class="hot-label">BEST SALER</span>
										</div>
									</div>
									<div class="product__content content--center content--center">
										<h4>
											<a href="single-product.html">Olio Madu</a>
										</h4>
										<ul class="prize d-flex">
											<li>$50.00</li>
											<li class="old_prize">$35.00</li>
										</ul>
										<div class="action">
											<div class="actions_inner">
												<ul class="add_to_links">
													<li><a class="cart" href="cart.html"><i
															class="bi bi-shopping-bag4"></i></a></li>
													<li><a class="wishlist" href="wishlist.html"><i
															class="bi bi-shopping-cart-full"></i></a></li>
													<li><a class="compare" href="#"><i
															class="bi bi-heart-beat"></i></a></li>
													<li><a data-toggle="modal" title="Quick View"
														class="quickview modal-view detail-link"
														href="#productmodal"><i class="bi bi-search"></i></a></li>
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
								<!-- Start Single Product -->
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-12 md-mt-40 sm-mt-40">
					<div class="shop__sidebar">
						<aside class="wedget__categories poroduct--cat">
							<h3 class="wedget__title">분야보기</h3>
							<ul>
								<li><a href="#">국어 외국어 사전</a></li>
								<li><a href="#">만화/라이트노벨 </a></li>
								<li><a href="#">건강 취미 </a></li>
								<li><a href="#">예술 </a></li>
								<li><a href="#">수험서 자격증 </a></li>
								<li><a href="#">자기계발 </a></li>
								<li><a href="#">자연과학 </a></li>
								<li><a href="#">에세이 </a></li>
								<li><a href="#">종교 </a></li>
								<li><a href="#">인문 </a></li>
								<li><a href="#">경제 경영 </a></li>
								<li><a href="#">가정 살림 </a></li>
								<li><a href="#">대학교재 </a></li>
								<li><a href="#">어린이 </a></li>
								<li><a href="#">소설/시/희곡 </a></li>
								<li><a href="#">사회 정치</a></li>
								<li><a href="#">청소년</a></li>
							</ul>
						</aside>
						<!-- <aside class="wedget__categories pro--range">
							<h3 class="wedget__title">가격 검색</h3>
							<div class="content-shopby">
								<div class="price_filter s-filter clear">
									<form action="#" method="GET">
										<div id="slider-range"></div>
										<div class="slider__range--output">
											<div class="price__output--wrap">
												<div class="price--output">
													<span>가격 :</span><input type="text" id="amount" readonly="">
												</div>
												<div class="price--filter">
													<a href="#">필터 검색</a>
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
							</aside> -->
						<!-- </aside> 비교
						<aside class="wedget__categories poroduct--compare">
							<h3 class="wedget__title">Compare</h3>
							<ul>
								<li><a href="#">x</a><a href="#">Condimentum posuere</a></li>
								<li><a href="#">x</a><a href="#">Condimentum posuere</a></li>
								<li><a href="#">x</a><a href="#">Dignissim venenatis</a></li>
							</ul>
						</aside> -->
						<br><br>
						<aside class="wedget__categories poroduct--tag">
							<h3 class="wedget__title">책 태그</h3>
							<ul>
								<li><a href="#">국어 외국어 사전</a></li>
								<li><a href="#">만화/라이트노벨</a></li>
								<li><a href="#">건강 취미</a></li>
								<li><a href="#">예술</a></li>
								<li><a href="#">수험서 자격증</a></li>
								<li><a href="#">자기계발</a></li>
								<li><a href="#">자연과학</a></li>
								<li><a href="#">에세이</a></li>
								<li><a href="#">종교</a></li>
								<li><a href="#">인문</a></li>
								<li><a href="#">경제 경영</a></li>
								<li><a href="#">가정 살림</a></li>
								<li><a href="#">대학교재</a></li>
								<li><a href="#">어린이</a></li>
								<li><a href="#">소설/시/희곡</a></li>
								<li><a href="#">사회 정치</a></li>
								<li><a href="#">청소년</a></li>
							</ul>
						</aside>
						<aside class="wedget__categories sidebar--banner">
							<img src="images/others/banner_left.jpg" alt="banner images">
							<div class="text">
								<h2>MD 추천</h2>
								<h6>
									4월 <br> <strong>기대</strong>신간
								</h6>
							</div>
						</aside>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End main Content -->
	<!-- Start Search Popup -->
	<div class="box-search-content search_active block-bg close__top">
		<form id="search_mini_form--2" class="minisearch" action="#">
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
								<p>“We all just took the bookstore at its word, </p>
								<p>because if you couldn't trust a bookstore, what could you trust?”</p>
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
									<li><a href="index.html">신간</a></li>
									<li><a href="index.html">베스트</a></li>
									<li><a href="index.html">스테디</a></li>
									<li><a href="index.html">리뷰 게시판</a></li>
									<li><a href="index.html">장바구니</a></li>
									<li><a href="index.html">고객센터</a></li>
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
									Copyright <i class="fa fa-copyright"></i> <a href="#">HotBookStore.</a>
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
										<span class="new-price">$17.20</span> <span class="old-price">$45.00</span>
									</div>
								</div>
								<div class="quick-desc">Designed for simplicity and made
									from high quality materials. Its sleek geometry and material
									combinations creates a modern look.</div>
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
										<ul
											class="social__net social__net--2 d-flex justify-content-start">
											<li class="facebook"><a href="#" class="rss social-icon"><i
													class="zmdi zmdi-rss"></i></a></li>
											<li class="linkedin"><a href="#"
												class="linkedin social-icon"><i
													class="zmdi zmdi-linkedin"></i></a></li>
											<li class="pinterest"><a href="#"
												class="pinterest social-icon"><i
													class="zmdi zmdi-pinterest"></i></a></li>
											<li class="tumblr"><a href="#"
												class="tumblr social-icon"><i class="zmdi zmdi-tumblr"></i></a></li>
										</ul>
									</div>
								</div>
								<div class="addtocart-btn">
									<a href="#">Add to cart</a>
								</div>
							</div>
							<!-- .product-info -->
						</div>
						<!-- .modal-product -->
					</div>
					<!-- .modal-body -->
				</div>
				<!-- .modal-content -->
			</div>
			<!-- .modal-dialog -->
		</div>
		<!-- END Modal -->
	</div>
	<!-- END QUICKVIEW PRODUCT -->

	</div>
	<!-- //Main wrapper -->



	<!-- JS Files -->
	<script src="js/vendor/jquery-3.2.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/active.js"></script>
	
	<!-- <script type="text/javascript" src="js/single-product.js"></script> -->
	<script type="text/javascript" src="js/member.js"></script>
	<script type="text/javascript" src="js/cart.js"></script>
	<script type="text/javascript" src="js/review.js"></script>
	<script type="text/javascript" src="js/score.js"></script>

</body>
</html>