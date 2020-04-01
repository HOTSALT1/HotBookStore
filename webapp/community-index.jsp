<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html class="no-js" lang="zxx">

<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>독서모임 | Hot Book Store</title>
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
	
	<script src="js/vendor/jquery-3.2.1.min.js"></script>
	
</head>

<body>

	<!-- Main wrapper -->
	<div class="wrapper" id="wrapper">
	
	<!-- navbar  -->
	<jsp:include page="navbar.jsp"></jsp:include>
	<div style="border-top:1px solid #e6e6e6; width: 100%; margin-top:90px;"></div>
	
		
		<!-- Start Bradcaump area -->
		<div class="ht__bradcaump__area bg-image--6">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="bradcaump__inner text-center">
							<h2 class="bradcaump-title">책방 커뮤니티</h2>
							<nav class="bradcaump-content">
								<a class="breadcrumb_item" href="index">Home</a>
								<span class="brd-separetor">/</span>
								<span class="breadcrumb_item active">뜨거운 책방</span>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Bradcaump area -->
		<!-- Start Portfolio Area -->
		<section class="wn__portfolio__area gallery__masonry__activation bg--white mt--40 pb--100">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<div class="gallery__menu">
							<button data-filter="*" class="is-checked">전체 글 보기</button>
							<button data-filter=".cat--1" >공지사항 </button>
							<button data-filter=".cat--2" >리뷰게시판</button>
							<button data-filter=".cat--4">북칼럼</button>
							<button data-filter=".cat--5">책 뉴스</button>
							<button data-filter=".cat--6">행사 안내</button>
							<button data-filter=".cat--7">서비스 홍보</button>
							<button onclick=>자유로운 글 작성</button>
						</div>
					</div>
				</div>
				<div class="row masonry__wrap">
					
					<!-- Start 공지사항 -->
					<jsp:include page="community_notice.jsp"></jsp:include>
					<!-- End 공지사항 -->
					
					<!-- Start 리뷰게시판  -->
					<jsp:include page="community_reviewboard.jsp"></jsp:include>
					<!-- End Single Portfolio -->
					<!-- Start Single Portfolio -->
					<div class="col-lg-4 col-xl-3 col-md-6 col-sm-6 col-12 gallery__item cat--3">
						<div class="portfolio">
							<div class="thumb">
								<a href="portfolio-details.html">
									<img src="images/portfolio/md-img/3.jpg" alt="portfolio images">
								</a>
								<div class="search">
									<a href="images/portfolio/big-2/3.jpg" data-lightbox="grportimg"
										data-title="My caption"><i class="zmdi zmdi-search"></i></a>
								</div>
								<div class="link">
									<a href="portfolio-details.html"><i class="fa fa-link"></i></a>
								</div>
							</div>
							<div class="content">
								<h6><a href="portfolio-details.html">Coffee & Cookie Time</a></h6>
								<p>road theme</p>
							</div>
						</div>
					</div>
					<!-- End Single Portfolio -->
					<!-- Start Single Portfolio -->
					<div class="col-lg-4 col-xl-3 col-md-6 col-sm-6 col-12 gallery__item cat--4">
						<div class="portfolio">
							<div class="thumb">
								<a href="portfolio-details.html">
									<img src="images/portfolio/md-img/4.jpg" alt="portfolio images">
								</a>
								<div class="search">
									<a href="images/portfolio/big-2/1.jpg" data-lightbox="grportimg"
										data-title="My caption"><i class="zmdi zmdi-search"></i></a>
								</div>
								<div class="link">
									<a href="portfolio-details.html"><i class="fa fa-link"></i></a>
								</div>
							</div>
							<div class="content">
								<h6><a href="portfolio-details.html">Coffee & Cookie Time</a></h6>
								<p>road theme</p>
							</div>
						</div>
					</div>
					<!-- End Single Portfolio -->
					<!-- Start Single Portfolio -->
					<div class="col-lg-4 col-xl-3 col-md-6 col-sm-6 col-12 gallery__item cat--5">
						<div class="portfolio">
							<div class="thumb">
								<a href="portfolio-details.html">
									<img src="images/portfolio/md-img/5.jpg" alt="portfolio images">
								</a>
								<div class="search">
									<a href="images/portfolio/big-2/1.jpg" data-lightbox="grportimg"
										data-title="My caption"><i class="zmdi zmdi-search"></i></a>
								</div>
								<div class="link">
									<a href="portfolio-details.html"><i class="fa fa-link"></i></a>
								</div>
							</div>
							<div class="content">
								<h6><a href="portfolio-details.html">Coffee & Cookie Time</a></h6>
								<p>road theme</p>
							</div>
						</div>
					</div>
					<!-- End Single Portfolio -->
					<!-- Start Single Portfolio -->
					<div class="col-lg-4 col-xl-3 col-md-6 col-sm-6 col-12 gallery__item cat--2">
						<div class="portfolio">
							<div class="thumb">
								<a href="portfolio-details.html">
									<img src="images/portfolio/md-img/6.jpg" alt="portfolio images">
								</a>
								<div class="search">
									<a href="images/portfolio/big-2/2.jpg" data-lightbox="grportimg"
										data-title="My caption"><i class="zmdi zmdi-search"></i></a>
								</div>
								<div class="link">
									<a href="portfolio-details.html"><i class="fa fa-link"></i></a>
								</div>
							</div>
							<div class="content">
								<h6><a href="portfolio-details.html">Coffee & Cookie Time</a></h6>
								<p>road theme</p>
							</div>
						</div>
					</div>
					<!-- End Single Portfolio -->
					<!-- Start Single Portfolio -->
					<div class="col-lg-4 col-xl-3 col-md-6 col-sm-6 col-12 gallery__item cat--3">
						<div class="portfolio">
							<div class="thumb">
								<a href="portfolio-details.html">
									<img src="images/portfolio/md-img/7.jpg" alt="portfolio images">
								</a>
								<div class="search">
									<a href="images/portfolio/big-2/1.jpg" data-lightbox="grportimg"
										data-title="My caption"><i class="zmdi zmdi-search"></i></a>
								</div>
								<div class="link">
									<a href="portfolio-details.html"><i class="fa fa-link"></i></a>
								</div>
							</div>
							<div class="content">
								<h6><a href="portfolio-details.html">Coffee & Cookie Time</a></h6>
								<p>road theme</p>
							</div>
						</div>
					</div>
					<!-- End Single Portfolio -->
					<!-- Start Single Portfolio -->
					<div class="col-lg-4 col-xl-3 col-md-6 col-sm-6 col-12 gallery__item cat--4">
						<div class="portfolio">
							<div class="thumb">
								<a href="portfolio-details.html">
									<img src="images/portfolio/md-img/8.jpg" alt="portfolio images">
								</a>
								<div class="search">
									<a href="images/portfolio/big-2/3.jpg" data-lightbox="grportimg"
										data-title="My caption"><i class="zmdi zmdi-search"></i></a>
								</div>
								<div class="link">
									<a href="portfolio-details.html"><i class="fa fa-link"></i></a>
								</div>
							</div>
							<div class="content">
								<h6><a href="portfolio-details.html">Coffee & Cookie Time</a></h6>
								<p>road theme</p>
							</div>
						</div>
					</div>
					<!-- End Single Portfolio -->
					<!-- Start Single Portfolio -->
					<div class="col-lg-4 col-xl-3 col-md-6 col-sm-6 col-12 gallery__item cat--5">
						<div class="portfolio">
							<div class="thumb">
								<a href="portfolio-details.html">
									<img src="images/portfolio/md-img/9.jpg" alt="portfolio images">
								</a>
								<div class="search">
									<a href="images/portfolio/big-2/2.jpg" data-lightbox="grportimg"
										data-title="My caption"><i class="zmdi zmdi-search"></i></a>
								</div>
								<div class="link">
									<a href="portfolio-details.html"><i class="fa fa-link"></i></a>
								</div>
							</div>
							<div class="content">
								<h6><a href="portfolio-details.html">Coffee & Cookie Time</a></h6>
								<p>road theme</p>
							</div>
						</div>
					</div>
					<!-- End Single Portfolio -->
					<!-- Start Single Portfolio -->
					<div class="col-lg-4 col-xl-3 col-md-6 col-sm-6 col-12 gallery__item cat--2">
						<div class="portfolio">
							<div class="thumb">
								<a href="portfolio-details.html">
									<img src="images/portfolio/md-img/10.jpg" alt="portfolio images">
								</a>
								<div class="search">
									<a href="images/portfolio/big-2/1.jpg" data-lightbox="grportimg"
										data-title="My caption"><i class="zmdi zmdi-search"></i></a>
								</div>
								<div class="link">
									<a href="portfolio-details.html"><i class="fa fa-link"></i></a>
								</div>
							</div>
							<div class="content">
								<h6><a href="portfolio-details.html">Coffee & Cookie Time</a></h6>
								<p>road theme</p>
							</div>
						</div>
					</div>
					<!-- End Single Portfolio -->
					<!-- Start Single Portfolio -->
					<div class="col-lg-4 col-xl-3 col-md-6 col-sm-6 col-12 gallery__item cat--3">
						<div class="portfolio">
							<div class="thumb">
								<a href="portfolio-details.html">
									<img src="images/portfolio/md-img/5.jpg" alt="portfolio images">
								</a>
								<div class="search">
									<a href="images/portfolio/big-2/1.jpg" data-lightbox="grportimg"
										data-title="My caption"><i class="zmdi zmdi-search"></i></a>
								</div>
								<div class="link">
									<a href="portfolio-details.html"><i class="fa fa-link"></i></a>
								</div>
							</div>
							<div class="content">
								<h6><a href="portfolio-details.html">Coffee & Cookie Time</a></h6>
								<p>road theme</p>
							</div>
						</div>
					</div>
					<!-- End Single Portfolio -->
					<!-- Start Single Portfolio -->
					<div class="col-lg-4 col-xl-3 col-md-6 col-sm-6 col-12 gallery__item cat--4">
						<div class="portfolio">
							<div class="thumb">
								<a href="portfolio-details.html">
									<img src="images/portfolio/md-img/7.jpg" alt="portfolio images">
								</a>
								<div class="search">
									<a href="images/portfolio/big-2/2.jpg" data-lightbox="grportimg"
										data-title="My caption"><i class="zmdi zmdi-search"></i></a>
								</div>
								<div class="link">
									<a href="portfolio-details.html"><i class="fa fa-link"></i></a>
								</div>
							</div>
							<div class="content">
								<h6><a href="portfolio-details.html">Coffee & Cookie Time</a></h6>
								<p>road theme</p>
							</div>
						</div>
					</div>
					<!-- End Single Portfolio -->
				</div>
			</div>
		</section>
		<!-- End Portfolio Area -->
		
		<!-- Footer Area -->
		<div style="border-top: 1px solid #e6e6e6; width: 100%; margin-top: 90px;"></div>
		<jsp:include page="footer.jsp"></jsp:include>
		<!-- //Footer Area -->
		

	</div>
	<!-- //Main wrapper -->


	<!-- JS Files -->
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/active.js"></script>

</body>

</html>