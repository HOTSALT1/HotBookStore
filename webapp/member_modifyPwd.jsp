<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<head>
<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>Home | Books Library eCommerce Store</title>
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
<title>Insert title here</title>
    <style>
        #h4title{margin: 0 auto; width:830px;}
        #titleB{border-top: 2px solid black; width: 832px; margin: 0 auto; margin-top: 30px;}
        .findW{margin: 0 auto; width:830px; margin-top: 50px; border: 2px solid #e6e6e6; padding: 20px 20px 20px 30px; border-radius: 7px;}        
        #pwd,#repwd,#id,#email{width: 350px; height: 25px; border: none; font-size: 16px;}
        #pwd:focus{outline: none;}
        #id,#email,#repwd:focus{outline: none;}
        ::placeholder {
          color: gray;
          font-size: 14px;
        }
        #modifyPwdBtn{
            display: inherit;
            width: 140px; height: 40px; 
            text-align: center;
	        margin: 0 auto;
            background-color: #f56a6a;
            margin-top: 45px;
            border-radius: 7px;
            color: white;
            font-size: 15px;
            font-weight: bold;
            border: none;
            padding: 10px;
            cursor: pointer;}
		#findW2{
          	display:none; 
          	border-top:2px solid #e6e6e6; 
          	width: 826px;height: 80px;
          	margin: 20px 0 0 -30px;
         	padding:33px 20px 20px 30px;
         	font-size:16px;
         }
        
         
    </style>
</head>
<body style="margin: 0 auto;">
<jsp:include page="navbar.jsp"></jsp:include>
	<div style="margin-bottom:230px;">
	<div style="border-top:1px solid #e6e6e6; width: 100%; margin-top:90px; margin-bottom:100px;"></div>
    <h4 id="h4title">비밀번호 변경</h4>
    <div id="titleB"></div>
    <div class="findW">
   		<input type="text" id="id" name="id" value="${param.id }" readonly="readonly">
        <div style="border: 0.5px solid lightgray; margin: 15px 0 15px 0;"></div>
        <input type="text" id="email" name="email" value="${param.email }" readonly="readonly">
        <div style="border: 0.5px solid lightgray; margin: 15px 0 15px 0;"></div>
        <input type="password" id="pwd" placeholder="새 비밀번호를 입력해주세요">
        <div style="border: 0.5px solid lightgray; margin: 15px 0 15px 0;"></div>
        <input type="password" id="repwd" placeholder="새 비밀번호를 입력해주세요">
        <div id="pwdchk"></div>
    	<div id="findW2"></div>
    </div>
    <input type="button" id="modifyPwdBtn" value="비밀번호 변경">
    </div>
    <jsp:include page="footer.jsp"></jsp:include>
        
	<!-- JS Files -->
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/active.js"></script>
	<script src="js/member.js"></script>

</body>
<script type="text/javascript">
let chk;
$('#pwd').keyup(function(){
	chk=true;
	var v = /[!@#$%^&*]/;
	var v2 = /[!A-Z]/;
	
	$('#pwdchk').empty();
	
	if($('#pwd').val()==''){
			$('#pwdchk').text('비밀번호를 입력해주세요.')
			chk=false;
		}else if($('#pwd').val().length<8 ||!v.test($('#pwd').val()) || !v2.test($('#pwd').val())){
			$('#pwdchk').text('비밀번호는 특수문자 포함 8자 이상 입력해 주세요.').css('color','#f56a6a')
			.css('font-size','9pt')
			.css('font-weight','bold');
			chk=false;
			
		}else{
			$('#pwdchk').text('')
	}
})

$('#repwd').keyup(function(){
	if($('#pwd').val()!=$('#repwd').val()){
		$('#pwdchk').text('비밀번호가 일치하지 않습니다.').css('color','#f56a6a')
		.css('font-size','9pt')
		.css('font-weight','bold');
	}else{
		$('#pwdchk').text('')
	}
})


$('#modifyPwdBtn').click(function(){
	if(chk==true){
		$.ajax({
			type : 'post',
			data : 	{'id':$('#id').val(),'email':$('#email').val(), 'pwd' : $('#pwd').val() },
			url : '/hotSalt/member_modifyPwd',
			dataType : 'text',
			success : function(data){
				if(data=="succes"){
					alert("비밀번호가 수정되었습니다.")
					location.href = '/hotSalt/index';
				}else {
					alert("비밀번호 수정 실패 ")
				}
			}
		})
	}else{
		alert("비밀번호는 필수 입력입니다.")
	}
})

</script>
</html>