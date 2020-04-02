<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Shopping Cart | Books Library eCommerce Store</title>
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
<link rel="stylesheet" href="css/custom.css">
<link rel="stylesheet" href="style.css">

<!-- Cusom css -->
<link rel="stylesheet" href="css/custom.css">

<!-- Modernizer js -->
<script src="js/vendor/jquery-3.2.1.min.js"></script>
<script src="js/vendor/modernizr-3.5.0.min.js"></script>

<link href="https://fonts.googleapis.com/css?family=Jua|Nanum+Gothic|Yeon+Sung&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/writeJoin.css" />
<link rel="stylesheet" href="css/signup_agreement.css" />
<meta charset="utf-8">
<style>
#card-signup_agreement,#card-signup_writeForm{
	margin-bottom:80px;
	
}
</style>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="navbar.jsp" />
	<div style="border-top:1px solid #e6e6e6; width: 100%; margin-top:90px;"></div>
	<div id="card-signup_agreement">
		<div class="top-div">
			<!-- 회원가입 진행 이미지 -->
			<img src="img/writeJoin1.png">
		</div>
		<!-- 개인정보 수집 이용 동의 / 개인정보 위탁 동의 -->
		<h3 class="order-title">정보 수집 및 이용 동의</h3>
		<div class="radioBtn"
			style="border-bottom: 1px solid #f1f1f1; height: 40px; margin-bottom: 30px;">
			<img src="img/radiobutton_gray.png" class="radioImgAll"> <span>뜨거운책방
				서비스 이용 약관, 개인정보 수집 및 이용에 모두 동의합니다.<span style="font-size: 14px;">(전체동의)</span>
			</span>
		</div>
		<div class="radioBtn">
			<img src="img/radiobutton_gray.png" class="radioImgCheck1">
			<span style="font-size: 13px;">개인정보 수집 및 이용 동의</span>
		</div>
		<div id="agreementWrap1" class="agreement">
			<span class="span-agreement">개인정보 수집 이용 동의</span>
			<div id="agreementUnit1" class="agreementUnit"></div>
		</div>
		<div class="radioBtn" style="margin-top: 20px;">
			<img src="img/radiobutton_gray.png" class="radioImgCheck2">
			<span style="font-size: 13px;">서비스 이용 약관 동의</span>
		</div>
		<div id="agreementWrap2" class="agreement">
			<span class="span-agreement">개인정보 처리 위탁 동의</span>
			<div id="agreementUnit2" class="agreementUnit"></div>
		</div>
		<div style="text-align: center;">
			<input type="button" class="back-button" value="뒤로">&nbsp; <input
				type="button" class="next-button" value="다음">
		</div>
		<!-- 개인정보 수집 이용 동의 / 개인정보 위탁 동의 끝 -->
	</div>
	
	<div id="card-signup_writeForm" style="display: none;">
		<div class="top-div">
		<img src="img/writeJoin2.png">
		</div>
	<form name="writeForm" id="writeForm" method="post">
		<input type="hidden" name="birth" id="birth">
		<input type="hidden" name="email" id="email"> 
		<div class="div1">
			<span class="headTop">회원정보 입력</span>
			<div id="con">
				<div class="divName idx1">
					<label>이름(*)<span>|</span></label> 
					<input type="text" name="name" id="name" class="chk" placeholder="이름을 입력해 주세요">
						<span id="check-name"></span>
				</div>
				<div class="divBirth border-Tnone idx2">
					<label>생년월일<span>|</span></label> 
						<input type="text" id="birthYear" class="birth chk" placeholder="YYYY" maxlength="4">
						<span style="font-size: 14px; margin: 0 -30px 0 1px;">년</span> 
						<input type="text" id="birthMonth" class="birth chk" placeholder="MM" maxlength="2">
						<span style="font-size: 14px; margin: 0 -30px 0 1px;">월</span>
						<input type="text" id="birthDay" class="birth chk" placeholder="DD"	maxlength="2">
						<span style="font-size: 14px; margin: 0 3px 0 1px;">일</span> 
						<span id="check-birth"></span>
				</div>
				<div id="dv3" class="div3 idx3" style="border-top: none;">
					<label>성별(*)<span>|</span></label> 
					<select name="gender" id="gender" class="chk"> 
						<option value="성별" selected>성별</option>
						<option value="male">남자</option>
						<option value="female">여자</option>  
					</select>
					<span id="check-gender"></span>
				</div>
				<div class="div3 border-Tnone idx4">
					<label>아이디(*)<span>|</span></label> 
					<input type="text" name="id" id="id" class="chk" placeholder="아이디 입력"> 
					<span id="check-id"></span>
				</div>
				<div class="div3 border-Tnone idx5">
					<label>비밀번호(*)<span>|</span></label> 
					<input type="password" name="pwd" id="pwd" class="chk" placeholder="비밀번호 입력">
					<span id="check-pwd"></span>
				</div>
				<div class="div3 border-Tnone idx6">
					<label>비밀번호 확인(*)<span>|</span></label> 
					<input type="password" name="repwd" id="repwd" class="chk" placeholder="비밀번호 입력"> 
					<span id="check-repwd"></span>
				</div>
				<div class="div3 border-Tnone idx7">
					<label>이메일(*)<span>|</span></label> 
					<input type="text"  id="mail1" class="chk" maxlength="20" placeholder="이메일 입력">
					<span style="font-size: 14px; margin: 0 -8px 0 3px;">@</span>
					
					<input type="text" id="mail2" list="selectEmail" class="chk" placeholder="선택하세요" style="margin-left: 10px !important; width: 120px;">
					<datalist id="selectEmail">
						<option value="naver.com">naver.com</option> 
						<option value="hanmail.net">hanmail.net</option> 
						<option value="nate.com">nate.com</option> 
						<option value="gmail.com">gmail.com</option>
					</datalist>|
					<input type="text" id="e_verify" name="key" placeholder="인증번호 입력">
					<input type="button" id="e_verifyBtn" value="인증번호 받기">
					<span id="check-mail"></span>
				</div>
				<div class="div3 border-Tnone idx8"
					style="border-radius: 0 0 7px 7px;">
					<label>핸드폰번호<span>|</span></label>
					<input type="text" size="40" name="tel" id="tel" class="chk" placeholder="ㄴ(-)없이 번호만 입력해주세요">
					<span id="check-tel"></span>
				</div>
				<div class="signup-btn" style="text-align: center;">
					<input type="button" class="write-button" id="write-button" value="회원가입">&nbsp; 
					<input type="button" class="cancel-button" value="취소">
				</div>
			</div>
		</div>
	</form>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	
	<!-- JS Files -->

	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/active.js"></script>
	<script src="js/cart.js"></script>
	<script type="text/javascript" src="js/signup_agreement.js"></script>
	<script type="text/javascript" src="js/signup_writeform.js"></script>
</body>

</html>