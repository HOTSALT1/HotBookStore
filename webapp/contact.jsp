<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>Contact | Hot Book Store</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- Favicons -->
	<link rel="shortcut icon" href="images/favicon.png">
	<link rel="apple-touch-icon" href="images/icon.png">

	<!-- Google font (font-family: 'Roboto', sans-serif; Poppins ; Satisfy) -->
	<link href="https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,700i,900" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,600,600i,700,700i,800"
		rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Satisfy" rel="stylesheet">

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

	
		<!-- Start Bradcaump area -->
		<div class="ht__bradcaump__area bg-image--6">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="bradcaump__inner text-center">
							<h2 class="bradcaump-title">고객 센터</h2>
							<nav class="bradcaump-content">
								<a class="breadcrumb_item" href="index.html">Home</a>
								<span class="brd-separetor">/</span>
								<span class="breadcrumb_item active">Contact Us</span>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Bradcaump area -->
		<!-- Start Contact Area -->
		<section class="wn_contact_area bg--white pt--80 pb--80">
			<div class="google__map pb--80">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div id="googleMap"></div>
						</div>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-lg-8 col-12">
						<div class="contact-form-wrap">
							<h2 class="contact__title">Get in touch</h2>
							<p>뜨거운 책방에 제안할 의견 또는 불편사항이 있다면 접수해주세요.보내주신 의견은 모두 서비스 개선을 위해 소중히 활용되고 있습니다.</p>
							<form id="contact-form" action="mail.php" method="post">
								<div class="single-contact-form space-between">
									<input type="text" name="lastname" placeholder="성*">
									<input type="text" name="firstname" placeholder="이름*">
								</div>
								<div class="single-contact-form space-between">
									<input type="email" name="email" placeholder="이메일 주소*">
								</div>
								<div class="single-contact-form">
									<input type="text" name="subject" placeholder="제목*">
								</div>
								<div class="single-contact-form message">
									<textarea name="message" placeholder="메세지를 입력해주세요.."></textarea>
								</div>
								<div class="contact-btn">
									<button type="submit">이메일 보내기</button>
								</div>
							</form>
						</div>
						<div class="form-output">
							<p class="form-messege">
						</div>
					</div>
					<div class="col-lg-4 col-12 md-mt-40 sm-mt-40">
						<div class="wn__address">
							<h2 class="contact__title">뜨거운 책방 정보</h2>
							<p>뜨거운 책방과 연락하기 </p>
							<div class="wn__addres__wreapper">

								<div class="single__address">
									<i class="icon-location-pin icons"></i>
									<div class="content">
										<span>주소:</span>
										<p>서울특별시 서초구 서초대로74길33 3층</p>
									</div>
								</div>

								<div class="single__address">
									<i class="icon-phone icons"></i>
									<div class="content">
										<span>핸드폰 번호:</span>
										<p>02-1234-5678</p>
									</div>
								</div>

								<div class="single__address">
									<i class="icon-envelope icons"></i>
									<div class="content">
										<span>이메일 주소:</span>
										<p>hothotbookstore@gmail.com</p>
									</div>
								</div>

								<div class="single__address">
									<i class="icon-globe icons"></i>
									<div class="content">
										<span>뜨거운 책방 웹사이트 주소:</span>
										<p>www.hotBookStore.com</p>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Contact Area -->
		

	</div>
	<!-- //Main wrapper -->

	<!-- JS Files -->
	<script src="js/vendor/jquery-3.2.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/plugins.js"></script>
	<!-- Google Map js -->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBmGmeot5jcjdaJTvfCmQPfzeoG_pABeWo"></script>
	<script>
		// When the window has finished loading create our google map below
		google.maps.event.addDomListener(window, 'load', init);

		function init() {
			var mapOptions = {
				zoom: 12,

				scrollwheel: false,

				center: new google.maps.LatLng(37.503004, 127.024208), 

				styles: [

					{
						"featureType": "administrative",
						"elementType": "labels.text.fill",
						"stylers": [{
							"color": "#444444"
						}]
					},
					{
						"featureType": "landscape",
						"elementType": "all",
						"stylers": [{
							"color": "#f2f2f2"
						}]
					},
					{
						"featureType": "poi",
						"elementType": "all",
						"stylers": [{
							"visibility": "off"
						}]
					},
					{
						"featureType": "road",
						"elementType": "all",
						"stylers": [{
								"saturation": -100
							},
							{
								"lightness": 45
							}
						]
					},
					{
						"featureType": "road.highway",
						"elementType": "all",
						"stylers": [{
							"visibility": "simplified"
						}]
					},
					{
						"featureType": "road.arterial",
						"elementType": "labels.icon",
						"stylers": [{
							"visibility": "off"
						}]
					},
					{
						"featureType": "transit",
						"elementType": "all",
						"stylers": [{
							"visibility": "off"
						}]
					},
					{
						"featureType": "transit.station.bus",
						"elementType": "labels.icon",
						"stylers": [{
							"saturation": "-16"
						}]
					},
					{
						"featureType": "water",
						"elementType": "all",
						"stylers": [{
								"color": "#04b7ff"
							},
							{
								"visibility": "on"
							}
						]
					}
				]
			};

			var mapElement = document.getElementById('googleMap');

			var map = new google.maps.Map(mapElement, mapOptions);

			var marker = new google.maps.Marker({
				position: new google.maps.LatLng(37.503004, 127.024208),
				map: map,
				title: 'Dcare!',
				icon: 'images/icons/map.png',
				animation: google.maps.Animation.BOUNCE

			});
		}
	</script>

	<script src="js/active.js"></script>

</body>

</html>