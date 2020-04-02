<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
	
    <link href="https://fonts.googleapis.com/css?family=Nanum+Pen+Script|Open+Sans&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/mypage_pwd_chk.css" >

    <!-- <link rel="stylesheet" href="#" /> -->       
    <title>member_modifyForm</title>
</head>
<body style="margin: 0 auto;">
   <form id="mypage_pwd_chk" method="post" action="mypage_pwd_chk">
		<div id="modifyForm">
			<div id="buttonDiv">
			<a href="index">
				<img src="img/logo-02.png" id="logo">
			</a>
	   		<input type="button" id="logout" value="로그아웃"> 
			<input type="button" id="member-modify-btn" value="회원수정" onclick="location.href='mypage_pwd_chk'">
   			<input type="button" id="member-out-btn" value="회원탈퇴" onclick="location.href='member_deleteForm'">
   			</div>
			<div id="modify_con">
				<div id="modify_member_id">
					<input type="text" name="id" id="member_id" value="${sessionScope.memId }" readonly="readonly">
				</div>
				<div id="modify_member_pwd">
					<input type="password" name="pwd" id="member_pwd">
					<span id="member_pwd_chk"></span>
				</div>
				<div>
					<input type="button" id="btn-submit" value="확인">
				</div>
			</div>
		</div>
	</form>
	<input type="hidden" id="result" value="${loginResult }" /> 
	<script src="js/vendor/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="js/member.js"></script>
	
</body>
<script type="text/javascript" src="js/mypage_pwd_chk.js"></script>
</html>