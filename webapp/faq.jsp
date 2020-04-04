<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>Faq | Hot Book Store</title>
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
	<script src="js/vendor/jquery-3.2.1.min.js"></script>
	<script src="js/vendor/modernizr-3.5.0.min.js"></script>
</head>

<body>

	<!-- Main wrapper -->
	<div class="wrapper" id="wrapper">
		<!-- Start navbar area -->
		<jsp:include page="navbar.jsp"></jsp:include>
		<div style="border-top: 1px solid #e6e6e6; width: 100%; margin-top: 90px;"></div>
	<!-- End navbar area -->
	
		
		

		<!-- Start Faq Area -->
		<section class="wn__faq__area bg--white pt--80 pb--60">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="wn__accordeion__content">
							<h2>뜨거운 책방 고객센터입니다.</h2>
							<p>더 궁금하신 사항은 뜨거운 책방 고객센터(hothotbookstore@gmail.com)으로 문의주세요 :)<br>성함/휴대전화번호 함께 알려주시면 더 빠르게 확인 가능합니다!</p>
						</div>
						<div id="accordion" class="wn_accordion" role="tablist">
							<div class="card">
								<div class="acc-header" role="tab" id="headingOne">
									<h5>
										<a data-toggle="collapse" href="#collapseOne" role="button" aria-expanded="true"
											aria-controls="collapseOne">[로그인] 비밀번호 변경은 어떻게 하나요 ?</a>
									</h5>
								</div>
								<div id="collapseOne" class="collapse show" role="tabpanel" aria-labelledby="headingOne"
									data-parent="#accordion">
									<div class="card-body">마이페이지 > 회원정보관리 > 비밀번호 입력 후 기본 입력 사항 화면에서 숨은 정보 보기 해지 후 비밀번호 변경이 가능합니다.※ 숨은 정보 보기는 "생년월일" 또는 "이메일"로 인증 후 해지가 가능합니다.

보안정책 강화로 인하여 영문 대/소문자가 구분되며,
영문 대/소문자, 숫자, 특수문자 조합 중 2가지 이상으로 조합 후 변경이 가능합니다.
비밀번호 변경 시 로그인되어있던 모든 기기에서 자동 로그아웃됩니다.
 
※유의사항※
아이디 및 아이디를 포함한 문자 /숫자는 비밀번호로 사용 불가
특수문자는 !@#$%^&*()-_사용 가능
동일한 문자(숫자), 연속적인 숫자 4자 이상 사용 불가 예)1234,1111, aaaa
생년월일, 전화번호와 동일한 번호는 사용 자제

</div>
								</div>
							</div>
							<div class="card">
								<div class="acc-header" role="tab" id="headingTwo">
									<h5>
										<a class="collapsed" data-toggle="collapse" href="#collapseTwo" role="button"
											aria-expanded="false" aria-controls="collapseTwo">
											[배송] 주문한 상품은 언제 받을 수 있을까요?
										</a>
									</h5>
								</div>
								<div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo"
									data-parent="#accordion">
									<div class="card-body">주문 전

각 상품 상세페이지에서 배송지를 입력하시면 배송예상일정과 도착예상일을 알 수 있습니다.

 

고객님께서 주문하신 상품을 실제 받으시는 날은 "출고예상일+배송일"입니다.

 

출고예상일은 주문하신 상품을 확인, 포장하여 발송하는 날을 의미합니다.

(출고예상일은 상품에 따라 준비기간이 다르며 업체의 재고가 원활한 경우 안내된 일정보다 단축될 수 있습니다. )

 

배송일은 택배나 우편을 통해 고객님께 실제 배달이 이루어지는 기간을 말합니다.

 

주문 후

[마이페이지] > [주문내역/배송조회]에서 주문번호를 클릭하면, 도착예상일 확인이 가능합니다.

 

※참고사항

도서산간지역은 근무일 기준 3일 이내입니다.

연휴/공휴일이 있을 경우 해당기간 제외 후 배송 기간을 산정합니다.

택배사 사정이나 기상악화의 경우는 배송일이 다소 변경될 수 있습니다.

</div>
								</div>
							</div>
							<div class="card">
								<div class="acc-header" role="tab" id="headingThree">
									<h5>
										<a class="collapsed" data-toggle="collapse" href="#collapseThree" role="button"
											aria-expanded="false" aria-controls="collapseThree">
											[커뮤니티]뜨거운 책방 멤버가 된다는 건?</a>
									</h5>
								</div>
								<div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree"
									data-parent="#accordion">
									<div class="card-body">﻿책을 재료로 펼치는 지적 대화, 뜨거운책방 독서모임 📚

 독서모임은 책을 재료로 지적인 대화를 나누는 토론의 장입니다. 책을 읽고, 독후감을 쓰며 그 감상을 나눕니다. 그리고는 한 달에 한 번 만나서 서로의 의견을 발전시키고 때로는 서로의 의견에 반대하면서 친해지기도 하고요. 금융위기에 대해, 인공지능에 대해, 연애와 사랑의 기술에 대해, 성 평등 의식에 대해, 또 지구 환경 성장의 한계에 대해! 여러 시간 이야기를 나누고도 모자라, 밤새도록 남아 술잔을 기울이기도 합니다. 어디 요즘 세상에, 최소 한 달에 한 번은 꼬박꼬박 모여 이런 이야기를 나누는 친구들이 흔한가요?

</div>
								</div>
							</div>
							<div class="card">
								<div class="acc-header" role="tab" id="headingFour">
									<h5>
										<a class="collapsed" data-toggle="collapse" href="#collapseFour" role="button"
											aria-expanded="false" aria-controls="collapseFour">
											[주문]꼭 회원으로 가입해야만 주문이 가능한가요? </a>
									</h5>
								</div>
								<div id="collapseFour" class="collapse" role="tabpanel" aria-labelledby="headingFour"
									data-parent="#accordion">
									<div class="card-body">회원이 아니어도 비회원으로도 주문이 가능합니다.

 

비회원 주문

* 주문하려는 상품이 단권일 경우

 

상품 선택 후 [구매하기] 누르면 회원/비회원 주문의 선택창이 뜹니다.

이 중 [비회원 주문]을 선택 후 다음 단계로 진행하면 회원 가입 없이도 주문이 가능합니다.

 

*주문하려는 상품이 여러권일 경우

 

상품 검색 후 카트에 담아 카트 화면 하단에 [비회원 주문] 선택 후 다음 단계로 진행하면 회원 가입 없이도 주문이 가능합니다.단, 연령 제한이 있는 상품은 비회원 주문이 불가능합니다

 

비회원 주문확인

비회원 주문에 대한 확인은 로그인 화면 하단 [비회원 주문확인]에서 주문번호와 주문시 지정한 비밀번호를 입력하시면 확인이 가능합니다.</div>
								</div>
							</div>
							<div class="card">
								<div class="acc-header" role="tab" id="headingFive">
									<h5>
										<a class="collapsed" data-toggle="collapse" href="#collapseFive" role="button"
											aria-expanded="false" aria-controls="collapseFive">
											[로그인]아이디랑 비밀번호를 찾을 수 없으면 어떡하나요?</a>
									</h5>
								</div>
								<div id="collapseFive" class="collapse" role="tabpanel" aria-labelledby="headingFive"
									data-parent="#accordion">
									<div class="card-body">고객센터를 통해 이메일을 보내주시거나, 카카오톡 채팅상담을 이용해주시면 됩니다</div>
								</div>
							</div>
							<div class="card">
								<div class="acc-header" role="tab" id="headingSix">
									<h5>
										<a class="collapsed" data-toggle="collapse" href="#collapseSix" role="button"
											aria-expanded="false" aria-controls="collapseSix">
											[회원] 회원탈퇴는 어떻게 하나요?</a>
									</h5>
								</div>
								<div id="collapseSix" class="collapse" role="tabpanel" aria-labelledby="headingSix"
									data-parent="#accordion">
									<div class="card-body"> 회원탈퇴

[마이페이지] 접속 후  정보내역 -> 회원탈퇴에서 정보 확인, 탈퇴사유와 비밀번호를 입력 후 회원 탈퇴가 가능합니다.

 

< 회원정보 및 계좌 내역 삭제 >

회원탈퇴 즉시 회원정보는 모두 삭제되며, 재가입시에도 복원되지 않습니다.

- 삭제되는 정보 : 개인정보

 

※ 탈퇴 후 블로그 및 블로그와 연결된 이용기록(ex.상품리뷰)은 모두 삭제되며, 삭제된 데이터는 복구되지 않습니다.

단, 게시판형 서비스에 등록한 게시물은 삭제되지 않고 유지됩니다.

- 회원탈퇴 시 중고샵 판매계정 및 판매자회원 자격이 자동으로 상실됩니다.(주문/정산 중에는 탈퇴불가)

- 회원탈퇴 시 중고매장에서 회원으로 서비스 이용이 불가합니다.

 

< 1개월간 회원 재 가입 제한 >

회원탈퇴 후, 1개월간은 회원 재가입이 불가능합니다.

 

< 탈퇴 후 정보보관 >

전자상거래 등에서의 소비자 보호에 관한 법률 제6조에 의거 성명, 주소 등 거래의 주체를 식별할 수 있는 정보에 한하여 서비스 이용에 관한 동의를 철회한 경우에도 이를 보존할 수 있으며, 동법 시행령 제6조에 의거 다음과 같이 거래기록을 보관합니다.

① 표시, 광고에 관한 기록 : 6개월

② 계약 또는 청약철회 등에 관한 기록 : 5년

③ 대금결제 및 재화 등의 공급에 관한 기록 : 5년

④ 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년

 

< 탈퇴 후 이용제한 >

회원탈퇴 후, 온라인 및 중고매장에서 이벤트 참여, 이용 내역 조회, 상담 및 제반 서비스(반품, 환불, 교환)등이 제한될 수 있으니 이점 양지해주시기 바랍니다.

</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Faq Area -->
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
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/active.js"></script>

</body>

</html>