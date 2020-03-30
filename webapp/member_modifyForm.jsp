<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="https://fonts.googleapis.com/css?family=Jua|Nanum+Gothic|Yeon+Sung&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/member_modifyForm.css" >
<link rel="stylesheet" href="css/mypage_pwd_chk.css" >
<style>
#modifyForm{height: 875px !important;}
html{overflow-y: visible !important;}
#member_modifyForm{margin-top: -2px !important;}
</style>
<title>Insert title here</title>
</head>
<body>
	<div id="modifyForm">
		<div id="buttonDiv">
		<a href="index">
			<img src="img/logo-02.png" id="logo">
		</a>
		<input type="button" id="member-modify-btn" value="회원수정" onclick="location.href='mypage_pwd_chk.jsp'">
  			<input type="button" id="member-out-btn" value="회원탈퇴" onclick="location.href='member_deleteForm.jsp'">
  		</div>
  		
  		<form id="member_modifyForm" method="post">
		<input type="hidden" name="birth" id="birth">
		<input type="hidden" name="email" id="email"> 
		<table id="modifyForm_table">
		<tr>
			<td class="format">이름<span>|</span></td>
			<td><label>${memberDTO.name }</label></td>
		</tr>
		<tr>
			<td class="format">생년월일<span>|</span></td>
			<td><label><fmt:formatDate value="${memberDTO.birth }" pattern="yyyy년 MM월 dd일" /></label></td>
		</tr>
		<tr>
			<td class="format">성별<span>|</span></td>
			<td><label>
				<!-- 문자는 '' -->
				<c:if test="${memberDTO.gender == 'male'}" >남</c:if>
				<c:if test="${memberDTO.gender == 'female'}" >여</c:if>
			</label></td>
		</tr>
		<tr>
			<td class="format">아이디<span>|</span></td>
			<td><input type="text" name="id" id="id" value="${memberDTO.id}" readonly="readonly"></td>
		</tr>
		<tr>
			<td class="format">비밀번호<span>|</span></td>
			<td>
				<input type="password" name="pwd" id="pwd" class="pwd" placeholder="수정할 비밀번호를  입력해주세요.">
				<div id="pwd-chk"></div>
			</td>
		</tr>
		<tr>
			<td class="format">비밀번호 확인<span>|</span></td>
			<td>
				<input type="password" name="repwd" id="repwd" class="pwd" placeholder="수정할 비밀번호를  입력해주세요.">
				<div id="repwd-chk"></div>
			</td>
		</tr>
		<tr>
			<td class="format">이메일<span>|</span></td>
			<td><label>${memberDTO.email}</label></td>
		</tr>
		<tr>
			<td class="format">핸드폰번호<span>|</span></td>
			<td><label>${memberDTO.tel}</label></td>
		</tr>
		<tr>
			<td class="format">주소<span>|</span></td>
			<td>
				<input type="text" name="zipcode" id="zipcode" placeholder="우편번호" value="${memberDTO.zipcode }" style="width: 110px; margin-bottom:5px; margin-right: 30px; border: 1px solid #bdbdbd!important;">
				<input type="button" onclick="post()" value="주소찾기" style="width: 80px; margin-bottom:5px; border: 1px solid #bdbdbd!important; font-size: 12px;">
				<input type="text" name="addr1" id="addr1" placeholder="지번주소" style="width: 350px; margin-bottom:5px; border: 1px solid #bdbdbd; !important;">
				<input type="text" name="addr2" id="addr2" placeholder="도로명주소" style="width: 350px; margin-bottom:5px; border: 1px solid #bdbdbd!important;">
				<input type="text" name="addr3" id="addr3" placeholder="상세주소" style="width: 350px; border: 1px solid #bdbdbd !important;">
			</td>
		</tr>
	</table>
	<div id="modifyBtnDiv">
		<input type="button" id="modify-btn" value="회원정보 수정">
	</div>
		
</form>
</div>



</body>
<script src="js/vendor/jquery-3.2.1.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="js/post.js"></script>
<!-- <script type="text/javascript" src="js/mypage_pwd_chk.js"></script> -->
<script src="js/member_modifyForm.js"></script>

</html>