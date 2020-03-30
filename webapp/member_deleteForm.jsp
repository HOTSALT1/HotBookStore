<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="https://fonts.googleapis.com/css?family=Jua|Nanum+Gothic|Yeon+Sung&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/member_deleteForm.css" >
<style>
#textboxDiv{
	margin: 0 auto;
    height: 440px;
    width: 700px;
    background-color: #f5f5f5;
    margin-top: 40px;
    text-align: left;
    padding: 40px;
    border-radius: 7px;}
#textbox b{display: inline-block; margin-bottom: 10px; font-size:14px; }
#textbox p{display: block; font-size: 13px; }

</style>
<title>Insert title here</title>
</head>
<body>

	<form id="mypage_pwd_chk">
		<div id=deleteForm>
			<div id="buttonDiv">
				<a href="index"> <img src="img/logo-02.png" id="logo"></a>  
				<input type="button" id="member-modify-btn" value="회원수정" onclick="location.href='mypage_pwd_chk.jsp'">
				<input type="button" id="member-out-btn" value="회원탈퇴" onclick="location.href='member_deleteForm.jsp'">
			</div>
			<div id="textboxDiv">
				<div id="textbox">
					<b>회원정보 회원</b><br>
					<p>- 회원탈퇴 즉시 회원정보는 모두 삭제되며, 재가입시에도 복원되지 않습니다.<br>
							- 삭제되는 정보 : 구매내역, 개인정보, 회원탈퇴시  자동으로 삭제됩니다.<br>
							- 회원탈퇴 후 타 ID로 사용 권한을 양도하실 수 없습니다.<br>
							- 탈퇴 후 기존 적립금은 모두 소멸, 삭제된 데이터는 복구되지 않습니다. </p><br>
					<div style="border-bottom: 1px solid #e4e3e3; margin-bottom: 30px;"></div>
					
					<b>1일(24시간)동안 회원 재가입 제한</b><br>
					<p>- 탈퇴 후 하루동안 동일한 아이디로 회원 재가입이 불가능합니다.</p> <br>
						
					<div style="border-bottom: 1px solid #e4e3e3; margin-bottom: 30px;"></div>
					<b>탈퇴 후 정보보관</b><br>
					<p>전자상거래 등에서의 소비자보호에 관한 법률 제6조에 의거 성명, 주소 등 거래의 주체를 식별할 수 있는 정보에 한하여 서비스
					이용에 관한 동의를 철회한 경우에도 이를 보존할 수 있으며, 동법 시행령 제6조에 의거 다음과 같이 거래 기록을 보관합니다.</p>
				</div>
			</div>
			<div id="delete_con">
				<div id="delete_member_id">
					<input type="text" name="id" id="id"
						value="${sessionScope.memId }" readonly="readonly">
				</div>
				<div id="delete_member_pwd">
					<input type="password" name="pwd" id="pwd"> 
					<span id="member_pwd_chk"></span>	
				</div>
				<div>
					<input type="button" id="delete-btn" value="회원탈퇴">
				</div>
			</div>
		</div>
	</form>
</body>
<script src="js/vendor/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
$('#delete-btn').click(function(){
	if(confirm("정말 회원탈퇴 하시겠습니까?") ==true){
		$.ajax({
			type : 'POST',
			data : {'id':$('#id').val(), 'pwd' : $('#pwd').val()},
			url : '/hotSalt/member_delete',
			dataType : 'text',
			success : function(data){
				if(data=="succes"){
						alert("회원탈퇴가 완료되었습니다.")
						location.href = '/hotSalt/index';
				}else {
					alert("비밀번호가 일치하지 않습니다.")
				}
			}
		})
	}
	
})
</script>
</html>