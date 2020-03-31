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
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,600,600i,700,700i,800"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">

<!-- Stylesheets -->
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="../css/plugins.css">
<link rel="stylesheet" href="../style.css">

<!-- Cusom css -->
<link rel="stylesheet" href="../css/custom.css">

<!-- Modernizer js -->
<script src="../js/vendor/modernizr-3.5.0.min.js"></script>

<link href="https://fonts.googleapis.com/css?family=Jua|Nanum+Gothic|Yeon+Sung&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../css/admin_insert.css" />

<title>관리자 상품수정 | Hot Book Store</title>
</head>
<body>
	<jsp:include page="admin_navbar.jsp" />
	<div style="border-top:1px solid #e6e6e6; width: 100%; margin-top:90px;"></div>
	
	<form name="adminModfiyForm" id="adminModfiyForm" method="post" enctype="multipart/form-data" action="admin_bookModify">
	<input type="hidden" name="book_id" value="${seq }">

		<div class="div1">
			<span class="headTop">상품 정보</span>
			<h6 class="title__be--2"><span class="color--theme">상품 기본정보</span></h6>
			<div><a href="${book.img1 }"><img src="${book.img1}" alt="" width="300" height="450" style="text-align: center;"></a></div>
			<div id="con">
				<div class="divName idx1">
					<label>도서명<span>|</span></label> 
					<input type="text" name="title" id="title" class="required" value="${book.title}">
					<span id="titleDiv"></span>
				</div>
				<div class="div3 border-Tnone idx4">
					<label>부제목<span>|</span></label> 
					<input type="text" name="subTitle" id="subTitle" value="${book.subTitle}"> 
					<span id="subTitleDiv"></span>
				</div>
				<div class="div3 border-Tnone idx4">
					<label>저자명<span>|</span></label> 
					<input type="text" name="author" id="author" class="required" value="${book.author}"> 
					<span id="authorDiv"></span>
				</div>
				<div class="div3 border-Tnone idx5">
					<label>출판사<span>|</span></label> 
					<input type="text" name="pub" id="pub" value="${book.pub}">
					<span id="publisherDiv"></span>
				</div>
				<div class="div3 border-Tnone idx6">
					<label>출간일<span>|</span></label> 
					<input type="text" name="p_date" id="p_date" value="${book.p_date}">
					<span id="publicationDateDiv"></span>
				</div>
				<div class="div3 border-Tnone idx7">
					<label>ISBN10<span>|</span></label> 
					<input type="text" name="isbn10" id="ISBN10" value="${book.isbn10}">
					<span style="font-size: 14px; margin: 0 -8px 0 3px;">ISBN13</span>&nbsp;					
					<input type="text" name="isbn13" id="ISBN13" value="${book.isbn13}">															
					<div id="ISBNDiv"></div>
				</div>				
				<div class="div3 border-Tnone idx7">
					<label>쪽수<span>|</span></label>
					<input type="text" name="page" id="page" value="${book.page}">
					<span id="pagesDiv"></span>													
				</div>				
				<div class="div3 border-Tnone idx7">
					<label>무게<span>|</span></label>
					<input type="text" name="weight" id="weight" value="${book.weight}">
					<span id="weightDiv"></span>
				</div>				
				<div class="div3 border-Tnone idx7">
					<label>크기<span>|</span></label> 
					<input type="text" name="book_size" id="book_size" value="${book.book_size}">				
					<span id=sizeDiv></span>
				</div>				
				<div class="div3 border-Tnone idx7">
					<label>정가<span>|</span></label> 
					<input type="text" name="price" id="price" value="${book.price}">				
					<span id="priceDiv"></span>
				</div>				
				<div class="div3 border-Tnone idx7">
					<label>판매가<span>|</span></label> 
					<input type="text" name="d_price" id="dprice" value="${book.d_price}">			
					<span id="ddpriceDiv"></span>
				</div>
				<div class="div3 border-Tnone idx7">
					<label>재고량<span>|</span></label> 
					<input type="text" name="stock" id="stock" value="${book.stock}">		
					<span id="stockDiv"></span>
				</div>				
				<div class="div3 border-Tnone idx8" style="border-radius: 0 0 7px 7px;">
					<label>적립금<span>|</span></label> 
					<input type="text" name="point" value="${book.point}">		
					<span id="pointDiv"></span>
				</div>
				
			</div>
		</div>
		<br><br>
			<div class="div1">
			<h6 class="title__be--2"><span class="color--theme">상품 설명</span></h6>
			<div id="con">
				<div class="divName info">
					<strong>책소개 : </strong>
					<textarea name="info" cols="150" rows="10" id="info">${book.info}</textarea>
				</div>
				
				<div class="div3 border-Tnone idx4">
					<strong>목차 : </strong> 
					 <textarea name="book_index" cols="150" rows="10" id="book_index">${book.book_index}</textarea>
				</div>
				
				<div id="cate1" class="div3 idx3" style="border-top: none;">
					<label>cate1<span>|</span></label>&nbsp; 
					<select style="width:100px; margin-left: 44px;" name="cate1" id="cate1" > 
						<option value="" selected>책 카테고리</option>
						<option value="국어 외국어 사전">국어 외국어 사전</option>
						<option value="만화/라이트노벨">만화/라이트노벨</option>
						<option value="건강 취미">건강 취미</option>
						<option value="예술">예술</option>
						<option value="수험서 자격증">수험서 자격증</option>
						<option value="자기계발">자기계발</option>
						<option value="자연과학">자연과학</option>
						<option value="에세이">에세이</option>
						<option value="종교">종교</option>
						<option value="인문">인문</option>
						<option value="경제 경영">경제 경영</option>
						<option value="가정 살림">가정 살림</option>
						<option value="대학교재">대학교재</option>
						<option value="어린이">어린이</option>
						<option value="소설/시/희곡">소설/시/희곡</option>
						<option value="사회 정치">사회 정치</option>
						<option value="청소년">청소년</option>
					</select>
				</div>
				
				<div id="cate2" class="div3 idx3" style="border-top: none;">
					<label>cate2<span>|</span></label>&nbsp;  
					<select style="width:100px; margin-left: 44px;" name="cate2" id="cate2" > 
						<option value="" selected>신간/베스트 분류</option>
						<option value="new">New</option>
						<option value="best">Best Seller</option>  
					</select>
				</div>
													
				<div class="div3 border-Tnone idx7">
					<label>상세이미지<span>|</span></label> 
					<input type="file" name="img" id="detail" size="50">
					<span id="size"></span>
				</div>				
				<div class="div3 border-Tnone idx8" style="border-radius: 0 0 10px 10px;">
					<label>책 이미지<span>|</span></label>
					<div class="img1-7">
					<input type="file" name="img" id="img1" size="50">
					<input type="file" name="img" id="img2" size="50">
					<input type="file" name="img" id="img3" size="50">
					<input type="file" name="img" id="img4" size="50">
					<input type="file" name="img" id="img5" size="50">
					<input type="file" name="img" id="img6" size="50">
					<input type="file" name="img" id="img7" size="50">
					</div>
				</div>
				
				<div class="signup-btn" style="text-align: center;">
					<input type="button" class="cancel-button"  id="btn-admin_insert" onclick="checkadminModfiyForm()" value="상품수정">&nbsp;
					<input type="button" class="cancel-button" value="상품목록">&nbsp; 							 					
					<input type="reset" class="reset-button" value="다시 작성">
				</div>
		</div>
		</div>
	</form>
		
	<footer>
	<div style="border-top:1px solid #e6e6e6; width: 100%; margin-top:90px;"></div>	
	<jsp:include page="footer.jsp"></jsp:include>
	</footer>
	
	<!-- JS Files -->
	<script src="../js/vendor/jquery-3.2.1.min.js"></script>
	<script src="../js/popper.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/plugins.js"></script>
	<script src="../js/active.js"></script>
	<script src="../js/cart.js"></script>

</body>
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="../js/admin_insert.js"></script>
<script type="text/javascript">
function checkadminModfiyForm() {
	document.adminModfiyForm.submit();
}
</script>

</html>