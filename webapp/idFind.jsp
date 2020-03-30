<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
	<script src="js/vendor/modernizr-3.5.0.min.js"></script>
<title>Insert title here</title>
    <style>
        #h4title{margin: 0 auto; width:830px;}
        #titleB{border-top: 2px solid black; width: 832px; margin: 0 auto; margin-top: 30px;}
        .findW{margin: 0 auto; width:830px; margin-top: 50px; border: 2px solid #e6e6e6; padding: 20px 20px 20px 30px; border-radius: 7px;}        
        #findEmail{width: 550px; height: 25px; border: none; font-size: 16px;}
        #findEmail:focus{outline: none;}
        ::placeholder {
          color: gray;
          font-size: 14px;
        }
        #findOkBtn{
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
    <h4 id="h4title">아이디 찾기</h4>
    <div id="titleB"></div>
    <div class="findW">
        <input type="text" id="findEmail" placeholder="이메일을 입력해주세요">
        <div id="findEmailChk"></div>
    	<div id="findW2"><label>eee</label></div>
    </div>
    <input type="button" id="findOkBtn" value="확인">
    </div>
    <jsp:include page="footer.jsp"></jsp:include>
        
	<!-- JS Files -->
	<script src="js/vendor/jquery-3.2.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/active.js"></script>
	<script src="js/member.js"></script>

</body>
<script type="text/javascript">
$('#findOkBtn').click(function() {
	if($('#findEmail').val()==''){
		$('#findEmailChk').text('이메일을 정확하게 입력해주세요 ');

	}else {			
		$.ajax({
			type : 'post',
			url : '/hotSalt/checkEmail',
			data : 'email='+$('#findEmail').val(),
			dataType : 'text',
			success : function(data){
				if(data=='false'){
					$('#findEmailChk').text('입력하신 이메일로는 아이디를 찾지 못했습니다.');
				}else{
					$('#findEmailChk').text('');
					$('#findW2').css("display","block").text(data)
					
				}
			}
		})
	}
	$('#findW2').css("display","none")
})
/* function writeCheckAll(){
	$('#write-button').css("background-color", "#f56a6a")
	chk = true;
		
	$('.chk').each(function(){
		if($(this).val()==''){
			$('#write-button').css("background-color", "#a7a4a4");
			chk=false;
			return false
		}
	})
} */
</script>
</html>