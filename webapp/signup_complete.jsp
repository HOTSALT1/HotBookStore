<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Favicons -->
<link rel="shortcut icon" href="images/favicon.ico">
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

<meta charset="UTF-8">
<link rel="stylesheet" href="css/signup_complete.css" />
<title>Insert title here</title>
</head>
<body style="margin: auto 0;overflow-x:visible;">
<jsp:include page="navbar.jsp"></jsp:include>
<div class="top-div">
	
	<img src="img/writeJoin3.png">

</div>
<div id="card-signup_complete" class="complete-msg">
	<img src="img/welcome.png">
	<table class="complete-table">
		<tr >
			<td class="f-td" width="120px;" style="border-top: 1px solid #c5c5c5; text-align: center;">이름</td>
			<td class="f-td" width="250px;" style="border-top: 1px solid #c5c5c5; padding-left: 20px;">${name} </td>
		</tr>
		<tr>
			<td align="center" width="120px;"style="text-align: center;">아이디</td>
			<td width="250px;" style="padding-left: 20px;">${id }</td>
		</tr>
	</table>
		<input type="button" class="login-button" onclick="location.href='loginForm'" value="로그인으로">&nbsp;&nbsp;
		<input type="button" class="main-button" onclick="location.href='index'" value="메인페이지">
</div>
<jsp:include page="footer.jsp"></jsp:include>

<!-- JS Files -->

	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/active.js"></script>
	<script src="js/cart.js"></script>


</body>
</html>

