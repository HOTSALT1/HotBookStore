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
			<!-- ȸ������ ���� �̹��� -->
			<img src="img/writeJoin1.png">
		</div>
		<!-- �������� ���� �̿� ���� / �������� ��Ź ���� -->
		<h3 class="order-title">���� ���� �� �̿� ����</h3>
		<div class="radioBtn"
			style="border-bottom: 1px solid #f1f1f1; height: 40px; margin-bottom: 30px;">
			<img src="img/radiobutton_gray.png" class="radioImgAll"> <span>�߰ſ�å��
				���� �̿� ���, �������� ���� �� �̿뿡 ��� �����մϴ�.<span style="font-size: 14px;">(��ü����)</span>
			</span>
		</div>
		<div class="radioBtn">
			<img src="img/radiobutton_gray.png" class="radioImgCheck1">
			<span style="font-size: 13px;">�������� ���� �� �̿� ����</span>
		</div>
		<div id="agreementWrap1" class="agreement">
			<span class="span-agreement">�������� ���� �̿� ����</span>
			<div id="agreementUnit1" class="agreementUnit"></div>
		</div>
		<div class="radioBtn" style="margin-top: 20px;">
			<img src="img/radiobutton_gray.png" class="radioImgCheck2">
			<span style="font-size: 13px;">���� �̿� ��� ����</span>
		</div>
		<div id="agreementWrap2" class="agreement">
			<span class="span-agreement">�������� ó�� ��Ź ����</span>
			<div id="agreementUnit2" class="agreementUnit"></div>
		</div>
		<div style="text-align: center;">
			<input type="button" class="back-button" value="�ڷ�">&nbsp; <input
				type="button" class="next-button" value="����">
		</div>
		<!-- �������� ���� �̿� ���� / �������� ��Ź ���� �� -->
	</div>
	
	<div id="card-signup_writeForm" style="display: none;">
		<div class="top-div">
		<img src="img/writeJoin2.png">
		</div>
	<form name="writeForm" id="writeForm" method="post">
		<input type="hidden" name="birth" id="birth">
		<input type="hidden" name="email" id="email"> 
		<div class="div1">
			<span class="headTop">ȸ������ �Է�</span>
			<div id="con">
				<div class="divName idx1">
					<label>�̸�(*)<span>|</span></label> 
					<input type="text" name="name" id="name" class="chk" placeholder="�̸��� �Է��� �ּ���">
						<span id="check-name"></span>
				</div>
				<div class="divBirth border-Tnone idx2">
					<label>�������<span>|</span></label> 
						<input type="text" id="birthYear" class="birth chk" placeholder="YYYY" maxlength="4">
						<span style="font-size: 14px; margin: 0 -30px 0 1px;">��</span> 
						<input type="text" id="birthMonth" class="birth chk" placeholder="MM" maxlength="2">
						<span style="font-size: 14px; margin: 0 -30px 0 1px;">��</span>
						<input type="text" id="birthDay" class="birth chk" placeholder="DD"	maxlength="2">
						<span style="font-size: 14px; margin: 0 3px 0 1px;">��</span> 
						<span id="check-birth"></span>
				</div>
				<div id="dv3" class="div3 idx3" style="border-top: none;">
					<label>����(*)<span>|</span></label> 
					<select name="gender" id="gender" class="chk"> 
						<option value="����" selected>����</option>
						<option value="male">����</option>
						<option value="female">����</option>  
					</select>
					<span id="check-gender"></span>
				</div>
				<div class="div3 border-Tnone idx4">
					<label>���̵�(*)<span>|</span></label> 
					<input type="text" name="id" id="id" class="chk" placeholder="���̵� �Է�"> 
					<span id="check-id"></span>
				</div>
				<div class="div3 border-Tnone idx5">
					<label>��й�ȣ(*)<span>|</span></label> 
					<input type="password" name="pwd" id="pwd" class="chk" placeholder="��й�ȣ �Է�">
					<span id="check-pwd"></span>
				</div>
				<div class="div3 border-Tnone idx6">
					<label>��й�ȣ Ȯ��(*)<span>|</span></label> 
					<input type="password" name="repwd" id="repwd" class="chk" placeholder="��й�ȣ �Է�"> 
					<span id="check-repwd"></span>
				</div>
				<div class="div3 border-Tnone idx7">
					<label>�̸���(*)<span>|</span></label> 
					<input type="text"  id="mail1" class="chk" maxlength="20" placeholder="�̸��� �Է�">
					<span style="font-size: 14px; margin: 0 -8px 0 3px;">@</span>
					
					<input type="text" id="mail2" list="selectEmail" class="chk" placeholder="�����ϼ���" style="margin-left: 10px !important; width: 120px;">
					<datalist id="selectEmail">
						<option value="naver.com">naver.com</option> 
						<option value="hanmail.net">hanmail.net</option> 
						<option value="nate.com">nate.com</option> 
						<option value="gmail.com">gmail.com</option>
					</datalist>|
					<input type="text" id="e_verify" name="key" placeholder="������ȣ �Է�">
					<input type="button" id="e_verifyBtn" value="������ȣ �ޱ�">
					<span id="check-mail"></span>
				</div>
				<div class="div3 border-Tnone idx8"
					style="border-radius: 0 0 7px 7px;">
					<label>�ڵ�����ȣ<span>|</span></label>
					<input type="text" size="40" name="tel" id="tel" class="chk" placeholder="��(-)���� ��ȣ�� �Է����ּ���">
					<span id="check-tel"></span>
				</div>
				<div class="signup-btn" style="text-align: center;">
					<input type="button" class="write-button" id="write-button" value="ȸ������">&nbsp; 
					<input type="button" class="cancel-button" value="���">
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