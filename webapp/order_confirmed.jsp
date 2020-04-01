<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>주문 완료 | Hot BookStore</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Favicons -->
<link rel="shortcut icon" href="/hotSalt/images/favicon.ico">
<link rel="apple-touch-icon" href="/hotSalt/images/icon.png">

<!-- Google font (font-family: 'Roboto', sans-serif; Poppins ; Satisfy) -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,600,600i,700,700i,800"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">

<!-- Stylesheets -->
<link rel="stylesheet" href="/hotSalt/css/bootstrap.min.css">
<link rel="stylesheet" href="/hotSalt/css/plugins.css">
<link rel="stylesheet" href="/hotSalt/css/custom.css">
<link rel="stylesheet" href="/hotSalt/style.css">

<!-- Cusom css -->
<link rel="stylesheet" href="/hotSalt/css/custom.css">

<!-- Modernizer js -->
<script src="/hotSalt/js/vendor/jquery-3.2.1.min.js"></script>
<script src="/hotSalt/js/vendor/modernizr-3.5.0.min.js"></script>

<link href="https://fonts.googleapis.com/css?family=Jua|Nanum+Gothic|Yeon+Sung&display=swap" rel="stylesheet">
<meta charset="utf-8">
<style>
body{
	height:100%;
}
footer{
	height: 190px;
	margin: 0 auto -190px;
}
</style>
</head>
<body>
	<jsp:include page="navbar.jsp" />
	<div style="border-top:1px solid #e6e6e6; width: 100%; margin-top:90px;"></div>
	<div class="container">
		<div class="row" style="margin: 100px 0px;">
			<div class="col col-12"><h5 style="text-align:center;">주문이 완료되었습니다. 주문해주셔서 감사합니다.</h5><br /></div>
			<div class="col col-12"><h6 style="text-align:center;">주문 번호: ${order_id }</h6></div>
		</div>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>
	
	<!-- JS Files -->

	<script src="/hotSalt/js/popper.min.js"></script>
	<script src="/hotSalt/js/bootstrap.min.js"></script>
	<script src="/hotSalt/js/plugins.js"></script>
	<script src="/hotSalt/js/active.js"></script>
	<script src="/hotSalt/js/cart.js"></script>
</body>

</html>