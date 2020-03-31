<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>리뷰게시판 | Books Library eCommerce Store</title>
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
		<div class="ht__bradcaump__area bg-image--5">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="bradcaump__inner text-center">
							<h2 class="bradcaump-title">Book Review Page</h2>
							<nav class="bradcaump-content">
								<a class="breadcrumb_item" href="index.jsp">Home</a>
								<span class="brd-separetor">/</span>
								<span class="breadcrumb_item active">Book Review</span>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Bradcaump area -->
		<!-- Start Book Review Area -->
		<div class="page-blog bg--white section-padding--lg blog-sidebar right-sidebar">
			<div class="container">
				<div class="row">
					<div class="col-lg-9 col-12">
						<div class="blog-page">
							<div class="page__header">
								<h2>Review page</h2>
							</div>
							<!-- Start Single Post -->
							<c:forEach var="list" items="${reviewDTO }">
							<article class="blog__post d-flex flex-wrap">
								<div class="thumb">
									<a  href="review-details?review_seq=${list.review_seq}">
										<img src="${list.IMG1}" alt="blog images">
									</a>
								</div>
								<div class="content">
									<h4><a href="review-details?review_seq=${list.review_seq}">${list.review_title}</a></h4>
									<ul class="post__meta">
										<li>Posts by : <a href="#">아이디 : ${list.memId}</a></li>
										<li class="post_separator">/</li>
										<li>${list.review_regdate}</li>
									</ul>
									<p>${list.review_content}</p>
									<div class="blog__btn">
										<a href="review-details.jsp">read more</a>
									</div>
								</div>
							</article>
							</c:forEach>
							<!-- End Single Post -->
<!-- 							Start Single Post
							<article class="blog__post d-flex flex-wrap">
								<div class="thumb">
									<a href="review-details.jsp">
										<img src="images/blog/blog-3/2.jpg" alt="blog images">
									</a>
								</div>
								<div class="content">
									<h4><a href="review-details.jsp">Post with Gallery</a></h4>
									<ul class="post__meta">
										<li>Posts by : <a href="#">road theme</a></li>
										<li class="post_separator">/</li>
										<li>Mar 10 2018</li>
									</ul>
									<p>Donec vitae hendrerit arcu, sit amet faucibus nisl. Crastoup pretium arcu ex.
										Aenean posuere libero eu augue rhoncus Praesent ornare tortor amet.</p>
									<div class="blog__btn">
										<a href="review-details.jsp">read more</a>
									</div>
								</div>
							</article>
							End Single Post
							Start Single Post
							<article class="blog__post d-flex flex-wrap">
								<div class="thumb">
									<a href="review-details.jsp">
										<img src="images/blog/blog-3/3.jpg" alt="blog images">
									</a>
								</div>
								<div class="content">
									<h4><a href="review-details.jsp">Post with Gallery</a></h4>
									<ul class="post__meta">
										<li>Posts by : <a href="#">road theme</a></li>
										<li class="post_separator">/</li>
										<li>Mar 10 2018</li>
									</ul>
									<p>Donec vitae hendrerit arcu, sit amet faucibus nisl. Crastoup pretium arcu ex.
										Aenean posuere libero eu augue rhoncus Praesent ornare tortor amet.</p>
									<div class="blog__btn">
										<a href="review-details.jsp">read more</a>
									</div>
								</div>
							</article>
							End Single Post
							Start Single Post
							<article class="blog__post d-flex flex-wrap">
								<div class="thumb">
									<a href="review-details.jsp">
										<img src="images/blog/blog-3/4.jpg" alt="blog images">
									</a>
								</div>
								<div class="content">
									<h4><a href="review-details.jsp">Book Review image post</a></h4>
									<ul class="post__meta">
										<li>Posts by : <a href="#">road theme</a></li>
										<li class="post_separator">/</li>
										<li>Mar 10 2018</li>
									</ul>
									<p>Donec vitae hendrerit arcu, sit amet faucibus nisl. Crastoup pretium arcu ex.
										Aenean posuere libero eu augue rhoncus Praesent ornare tortor amet.</p>
									<div class="blog__btn">
										<a href="review-details.jsp">read more</a>
									</div>
								</div>
							</article>
							End Single Post
							Start Single Post
							<article class="blog__post d-flex flex-wrap">
								<div class="thumb">
									<a href="review-details.jsp">
										<img src="images/blog/blog-3/5.jpg" alt="blog images">
									</a>
								</div>
								<div class="content">
									<h4><a href="review-details.jsp">Book Review image post</a></h4>
									<ul class="post__meta">
										<li>Posts by : <a href="#">road theme</a></li>
										<li class="post_separator">/</li>
										<li>Mar 10 2018</li>
									</ul>
									<p>Donec vitae hendrerit arcu, sit amet faucibus nisl. Crastoup pretium arcu ex.
										Aenean posuere libero eu augue rhoncus Praesent ornare tortor amet.</p>
									<div class="blog__btn">
										<a href="review-details.jsp">read more</a>
									</div>
								</div>
							</article>
							End Single Post
							Start Single Post
							<article class="blog__post text--post">
								<div class="content">
									<h4><a href="review-details.jsp">Book Review image post</a></h4>
									<ul class="post__meta">
										<li>Posts by : <a href="#">road theme</a></li>
										<li class="post_separator">/</li>
										<li>Mar 10 2018</li>
									</ul>
									<p>Donec vitae hendrerit arcu, sit amet faucibus nisl. Crastoup pretium arcu ex.
										Aenean posuere libero eu augue rhoncus Praesent ornare tortor amet.</p>
									<div class="blog__btn">
										<a href="review-details.jsp">read more</a>
									</div>
								</div>
							</article>
							End Single Post -->
						</div>
						<c:if test="${reviewDTO.size() gt 0}">
						<div id="reviewPagingDiv" style="float: left; width: 650px; text-align: center;" class="wn__pagination">
						</div>
						</c:if>
<!-- 						<ul class="wn__pagination">
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#"><i class="zmdi zmdi-chevron-right"></i></a></li>
						</ul> -->
					</div>
					<div class="col-lg-3 col-12 md-mt-40 sm-mt-40">
						<div class="wn__sidebar">
							<!-- Start Single Widget -->
							<aside class="widget search_widget">
								<h3 class="widget-title">Search</h3>
								<form action="#">
									<div class="form-input">
										<input type="text" placeholder="Search...">
										<button><i class="fa fa-search"></i></button>
									</div>
								</form>
							</aside>
							<!-- End Single Widget -->
							<!-- Start Single Widget -->
							<aside class="widget recent_widget">
								<h3 class="widget-title">Recent</h3>
								<div class="recent-posts">
									<ul>
										<li>
											<div class="post-wrapper d-flex">
												<div class="thumb">
													<a href="review-details.jsp"><img src="images/blog/sm-img/1.jpg"
															alt="blog images"></a>
												</div>
												<div class="content">
													<h4><a href="review-details.jsp">Book Review image post</a></h4>
													<p> March 10, 2015</p>
												</div>
											</div>
										</li>
										<li>
											<div class="post-wrapper d-flex">
												<div class="thumb">
													<a href="review-details.jsp"><img src="images/blog/sm-img/2.jpg"
															alt="blog images"></a>
												</div>
												<div class="content">
													<h4><a href="review-details.jsp">Post with Gallery</a></h4>
													<p> March 10, 2015</p>
												</div>
											</div>
										</li>
										<li>
											<div class="post-wrapper d-flex">
												<div class="thumb">
													<a href="review-details.jsp"><img src="images/blog/sm-img/3.jpg"
															alt="blog images"></a>
												</div>
												<div class="content">
													<h4><a href="review-details.jsp">Post with Video</a></h4>
													<p> March 10, 2015</p>
												</div>
											</div>
										</li>
										<li>
											<div class="post-wrapper d-flex">
												<div class="thumb">
													<a href="review-details.jsp"><img src="images/blog/sm-img/4.jpg"
															alt="blog images"></a>
												</div>
												<div class="content">
													<h4><a href="review-details.jsp">Maecenas ultricies</a></h4>
													<p> March 10, 2015</p>
												</div>
											</div>
										</li>
										<li>
											<div class="post-wrapper d-flex">
												<div class="thumb">
													<a href="review-details.jsp"><img src="images/blog/sm-img/5.jpg"
															alt="blog images"></a>
												</div>
												<div class="content">
													<h4><a href="review-details.jsp">Book Review image post</a></h4>
													<p> March 10, 2015</p>
												</div>
											</div>
										</li>
									</ul>
								</div>
							</aside>
							<!-- End Single Widget -->
							<!-- Start Single Widget -->
							<aside class="widget comment_widget">
								<h3 class="widget-title">Comments</h3>
								<ul>
									<li>
										<div class="post-wrapper">
											<div class="thumb">
												<img src="images/blog/comment/1.jpeg" alt="Comment images">
											</div>
											<div class="content">
												<p>demo says:</p>
												<a href="#">Quisque semper nunc vitae...</a>
											</div>
										</div>
									</li>
									<li>
										<div class="post-wrapper">
											<div class="thumb">
												<img src="images/blog/comment/1.jpeg" alt="Comment images">
											</div>
											<div class="content">
												<p>Admin says:</p>
												<a href="#">Curabitur aliquet pulvinar...</a>
											</div>
										</div>
									</li>
									<li>
										<div class="post-wrapper">
											<div class="thumb">
												<img src="images/blog/comment/1.jpeg" alt="Comment images">
											</div>
											<div class="content">
												<p>Irin says:</p>
												<a href="#">Quisque semper nunc vitae...</a>
											</div>
										</div>
									</li>
									<li>
										<div class="post-wrapper">
											<div class="thumb">
												<img src="images/blog/comment/1.jpeg" alt="Comment images">
											</div>
											<div class="content">
												<p>Boighor says:</p>
												<a href="#">Quisque semper nunc vitae...</a>
											</div>
										</div>
									</li>
									<li>
										<div class="post-wrapper">
											<div class="thumb">
												<img src="images/blog/comment/1.jpeg" alt="Comment images">
											</div>
											<div class="content">
												<p>demo says:</p>
												<a href="#">Quisque semper nunc vitae...</a>
											</div>
										</div>
									</li>
								</ul>
							</aside>
							<!-- End Single Widget -->
							<!-- Start Single Widget -->
							<aside class="widget category_widget">
								<h3 class="widget-title">Categories</h3>
								<ul>
									<li><a href="#">Fashion</a></li>
									<li><a href="#">Creative</a></li>
									<li><a href="#">Electronics</a></li>
									<li><a href="#">Kids</a></li>
									<li><a href="#">Flower</a></li>
									<li><a href="#">Books</a></li>
									<li><a href="#">Jewelle</a></li>
								</ul>
							</aside>
							<!-- End Single Widget -->
							<!-- Start Single Widget -->
							<aside class="widget archives_widget">
								<h3 class="widget-title">Archives</h3>
								<ul>
									<li><a href="#">March 2015</a></li>
									<li><a href="#">December 2014</a></li>
									<li><a href="#">November 2014</a></li>
									<li><a href="#">September 2014</a></li>
									<li><a href="#">August 2014</a></li>
								</ul>
							</aside>
							<!-- End Single Widget -->
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Book Review Area -->

		<!-- Footer Area -->
		<footer id="wn__footer" class="footer__area bg__cat--8 brown--color">
			<div class="footer-static-top">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<div class="footer__widget footer__menu">
								<div class="ft__logo">
									<a href="index.jsp">
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
										<li><a href="index.jsp">Trending</a></li>
										<li><a href="index.jsp">Best Seller</a></li>
										<li><a href="index.jsp">All Product</a></li>
										<li><a href="index.jsp">Wishlist</a></li>
										<li><a href="index.jsp">Book Review</a></li>
										<li><a href="index.jsp">Contact</a></li>
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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="js/vendor/jquery-3.2.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/active.js"></script>

</body>
<script type="text/javascript">
$(document).ready(function(){
	var paging = ${reviewPaging};
	alert(paging);
	//$('#reviewPagingDiv').html(data.reviewPaging.pagingHTML);
});

//전체 선택/해제
$('#all').click(function(){
	if($('#all').prop('checked'))
		$('input[name=check]').prop('checked', true);
	else
		$('input[name=check]').prop('checked', false);
});

//선택 삭제
$('#choiceDeleteBtn').click(function(){
	let count = $('input[name=check]:checked').length;

	if(count==0)
		alert("삭제할 항목을 선택하세요");
	else{
		if(confirm("정말로 삭제하시겠습니까")){
			$('#imageboardListForm').submit();
		}
	}
});
</script>

</html>