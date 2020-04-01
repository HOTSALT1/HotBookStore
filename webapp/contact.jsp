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

	<!-- Main wrapper -->
	<div class="wrapper" id="wrapper">
	
	<!-- Start navbar area -->
	<nav>
		<jsp:include page="navbar.jsp"></jsp:include>
		<div style="border-top: 1px solid #e6e6e6; width: 100%; margin-top: 90px;"></div>
	</nav>
	<!-- End navbar area -->
	
	
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
							<div id="map" style="width:1170px;height:500px;"></div>
						</div>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-lg-8 col-12">
						<div class="contact-form-wrap">
							<h2 class="contact__title">Get in touch</h2>
							<p>뜨거운 책방에 제안할 의견 또는 불편사항이 있다면 접수해주세요.<br>보내주신 의견은 모두 서비스 개선을 위해 소중히 활용되고 있습니다.</p>
							 <form id="contact-form" class="gform pure-form pure-form-stacked" method="POST" data-email="hothotbookstore@gmail.com"
  action="https://script.google.com/macros/s/AKfycbzzC3GdKWzIK-41UP7000qr6hKLqJF3kFaCU9vu/exec">
							
								<div class="single-contact-form space-between">
									<input type="text" name="name" id="name" placeholder="이름*">
								</div>
								<div class="single-contact-form space-between">
									<input type="email" name="email" placeholder="이메일 주소*">
								</div>
								<div class="single-contact-form">
									<input type="text" id="subject" name="subject" placeholder="제목*">
								</div>
								<div class="single-contact-form message">
									<textarea  id="message" name="message" placeholder="메세지를 입력해주세요.."></textarea>
								</div>
								<div class="contact-btn">
									<button id="sendEmail">이메일 보내기</button>
								</div>
							</form>
						</div>
						<div style="display:none" class="thankyou_message">
							 <h2><em>이메일 보내기 완료</em>  소중한 의견 감사합니다
							 </h2>
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
									<i class="icon-envelope icons"></i>
									<div class="content">
										<span>카카오 채널추가 :</span>
										<p id="kakao-add-channel-button"></p>
									</div>
								</div>
								
								<div class="single__address">
									<i class="icon-envelope icons"></i>
									<div class="content">
										<span>카카오 채팅하기 :</span>
										<p id="kakao-talk-channel-chat-button"></p>
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

	<script src="js/vendor/jquery-3.2.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/active.js"></script>
	<script src="js/contact.js"></script>
	
	
		<!--  카카오맵 js -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d4035841e96f1ae2fa8311573900f322"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(37.502989, 127.024195),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
	</script>
	
	<!-- 카카오 채팅 js -->
	<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
	
	<script type='text/javascript'>
	    Kakao.init('d4035841e96f1ae2fa8311573900f322');
	
	    Kakao.Channel.createAddChannelButton({
	      container: '#kakao-add-channel-button',
	      channelPublicId: '_xlLWxnxb' 
	    });
	    
	    Kakao.Channel.createChatButton({
	    	  container: '#kakao-talk-channel-chat-button',
	    	  channelPublicId: '_xlLWxnxb' 
	    	});
	</script>
	<script data-cfasync="false" type="text/javascript"
src="https://cdn.rawgit.com/dwyl/html-form-send-email-via-google-script-without-server/master/form-submission-handler.js"></script>
	<script type="text/javascript">
	$('#sendEmail').click(function(){
		
		$('#name').empty();
		$('#email').empty();
		$('#subject').empty();
		$('#message').empty();
		
		if($('#name').val()==''||$('#email').val()==''||$('#subject').val()==''||$('#message').val()==''){
			alert('모든 항목을 입력해주세요');
		}else{
			alert('이메일 보내기 완료! 소중한 의견 감사합니다');			
		}
	});
	
	</script> 


</body>
</html>