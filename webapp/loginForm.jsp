<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link href="https://fonts.googleapis.com/css?family=Nanum+Pen+Script|Open+Sans&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/loginForm.css" />       
    <title>login</title>
</head>
<body style="margin: 0 auto;">
   <form>
    <div class="login">
        <div style="width:100%;">
            <div class="login-idDiv">
                <input type="text" placeholder="ID" class="login-id" maxlength="20" id="loginId">
            </div>
        </div>
        <div style="width:100%;">
            <div class="login-pwdDiv">
                <input type="password" placeholder="PWD"  class="login-pwd" maxlength="20" id="loginPwd">
            </div>
        </div>
    	<!-- <input type="checkbox" id="idSaveCheck">아이디 기억하기 -->
        <input type="button" class="login-button" id="loginFormBtn" value="로그인">
        <div style="margin-top: 3px;">
        	<span class="login-span" style="display:inline-block; margin-left: 3px;"><a href="signup_agreement">회원가입</a></span>
        	<span class="login-span" style="display:inline-block; float: right; margin-right: 3px;">
        		<a href="member_findId.jsp" id="idfind">아이디</a>
        			<span style="color :gray;">/</span>
				<a href="member_findPwd.jsp">비밀번호 찾기</a>
			</span>
        </div>
        <div class="login-text">
    		<span>뜨거운 책방에 오신걸 환영합니다</span>
    	</div>
    	<!--아이디 비밀번호 유효성  -->
    	<div id="loginIdDiv"></div>
    	<div id="loginPwdDiv"></div>
    </div>   

    </form>
</body>
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="js/loginForm.js"></script>
<!-- <script type="text/javascript">
$('#loginFormBtn').click(function(){
	$("#loginId").val(Cookies.get('key'));      
	if($("#loginId").val() != ""){
	    $("#idSaveCheck").attr("checked", true);
	}
	
	$("#idSaveCheck").change(function(){
	if($("#idSaveCheck").is(":checked")){
	    Cookies.set('key', $("#loginId").val(), { expires: 7 });
	}else{
	      Cookies.remove('key');
	}
	});
	 
	$("#loginId").keyup(function(){
	if($("#idSaveCheck").is(":checked")){
	    Cookies.set('key', $("#loginId").val(), { expires: 7 });
	}
	});
})

</script> -->
</html>