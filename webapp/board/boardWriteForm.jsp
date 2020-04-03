<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Favicons -->
<link rel="shortcut icon" href="../images/favicon.png">
<link rel="apple-touch-icon" href="../images/icon.png">

<!-- Google font (font-family: 'Roboto', sans-serif; Poppins ; Satisfy) -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,600,600i,700,700i,800"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900"
	rel="stylesheet">

<!-- Stylesheets -->
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="../css/plugins.css">
<link rel="stylesheet" href="../style.css">

<!-- Cusom css -->
<link rel="stylesheet" href="../css/custom.css">

<!-- Modernizer js -->
<script src="../js/vendor/jquery-3.2.1.min.js"></script>
<script src="../js/vendor/modernizr-3.5.0.min.js"></script>

<link
	href="https://fonts.googleapis.com/css?family=Jua|Nanum+Gothic|Yeon+Sung&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="../css/admin_insert.css" />
<script type="text/javascript"
	src="/hotSalt/demo/js/service/HuskyEZCreator.js" charset="utf-8"></script>
<title>게시판 write | Hot Book Store</title>
</head>
<body>
	<!-- Header -->
	<jsp:include page="../navbar.jsp"></jsp:include>
	<!-- //Header -->
	<div
		style="border-top: 1px solid #e6e6e6; width: 100%; margin-top: 90px;"></div>
	<div class="div1">
		<br>
		<h2 class="title__be--2" style="text-align: 'center';">
			<span class="color--theme">게시판 글쓰기</span>
		</h2>
		<br>
		<div id="con">
			<form name="board_writeForm" id="board_writeForm" method="post"
				enctype="multipart/form-data">
				<input type="hidden" value="${memId}" id="memId" name="memId">
				<div class="divName info">

					<!-- <textarea name="info" cols="150" rows="10" id="info"></textarea> -->
					<input type="text" id="board_title" name="board_title"
						style="text-align: left; width: 100%; height: 28px; margin: 0 auto;"
						placeholder="제목">
				</div>
				<div class="div3 border-Tnone idx4">

					<textarea name="board_content" cols="150" rows="10"
						id="board_content"></textarea>
				</div>
				<div id="board_category" class="div3 idx3" style="border-top: none;">
					<label>카테고리<span>|</span></label>&nbsp; <select
						style="width: 100px; margin-left: 44px;" name="board_category"
						id="board_category">
						<option value="" selected>책 카테고리</option>
						<option value="공지사항">공지사항</option>
						<option value="북칼럼">북칼럼</option>
						<option value="자유게시판">자유게시판</option>
					</select>
				</div>

				<!-- 	<div id="cate2" class="div3 idx3" style="border-top: none;">
					<label>cate2<span>|</span></label>&nbsp; <select
						style="width: 100px; margin-left: 44px;" name="cate2" id="cate2">
						<option value="" selected>신간/베스트 분류</option>
						<option value="new">New</option>
						<option value="best">Best Seller</option>
					</select>
				</div> -->
				<div class="div3 border-Tnone idx8" style="border-radius: 0 0 10px 10px;">
					<label>책 이미지<span>|</span></label>
					<div class="img1-7">
					<input type="file" name="img" id="board_image1" size="50">
					<input type="file" name="img" id="board_image2" size="50">
					<input type="file" name="img" id="board_image3" size="50">
					</div>
				</div>
				<div class="signup-btn" style="text-align: center;">
					<input type="button" class="cancel-button" id="board_writeBtn"
						value="등록">&nbsp; <input type="button"
						class="cancel-button" value="목록">&nbsp; <input
						type="reset" class="reset-button" value="다시 작성">
				</div>
			</form>
		</div>
	</div>

	<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
	<script type="text/javascript"
		src="/hotSalt/demo/js/service/HuskyEZCreator.js" charset="utf-8"></script>
	<script type="text/javascript">
		var oEditors = [];
		nhn.husky.EZCreator.createInIFrame({
			oAppRef : oEditors,
			elPlaceHolder : "board_content",
			sSkinURI : "/hotSalt/demo/SmartEditor2Skin.html",
			fCreator : "createSEditor2",
			htParams : {
				// 툴바 사용 여부 (true:사용/ false:사용하지 않음)
				bUseToolbar : true,
				// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
				bUseVerticalResizer : true,
				// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
				bUseModeChanger : true,
			}
		});
		$("#board_writeBtn").click(
				function() {
					//id가 smarteditor인 textarea에 에디터에서 대입
					oEditors.getById["board_content"].exec(
							"UPDATE_CONTENTS_FIELD", []);

					let formData = new FormData($('#board_writeForm')[0]);

/* 					document.board_writeForm.submit();
					alert('성공'); */
 					$.ajax({
						type : 'post',
						enctype : 'multipart/form-data',
						processData : false, //데이터를 컨텐트 타입에 맞게 변환 여부
						contentType : false, //요청 컨텐트 타입 
						url : '/hotSalt/board/boardWrite',
						data : formData,
						success : function() {
							alert("등록 완료");
							location.href = '/hotSalt/index';
						}
					}); 

				});
	</script>

	<footer>
		<div
			style="border-top: 1px solid #e6e6e6; width: 100%; margin-top: 90px;"></div>
		<jsp:include page="../admin/footer.jsp"></jsp:include>
	</footer>

	<!-- JS Files -->
	<script src="../js/vendor/jquery-3.2.1.min.js"></script>
	<script src="../js/popper.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/plugins.js"></script>
	<script src="../js/active.js"></script>
	<script src="../js/cart.js"></script>
	<script src="../js/member.js"></script>

</body>
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="../js/admin_insert.js"></script>




</html>