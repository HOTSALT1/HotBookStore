<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>관리자 상품리스트 | Hot Book Store</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

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
<script src="../js/vendor/modernizr-3.5.0.min.js"></script>
</head>

<body>
	<!-- Main wrapper -->
	<input type="hidden" id="pg" value="${pg }">
	<input type="hidden" name="book_id" id="book_id" value="${seq }">
	
	
	<div class="wrapper" id="wrapper">
	
		<!-- Header -->
		<jsp:include page="admin_navbar.jsp"></jsp:include>
		<!-- //Header -->
		
		<!-- Start Bradcaump area -->
		<div class="ht__bradcaump__area bg-image--4">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="bradcaump__inner text-center">
							<h2 class="bradcaump-title">관리자 전용 상품리스트</h2>
							<nav class="bradcaump-content">
								<a class="breadcrumb_item" href="../admin_index.jsp">상품</a> <span
									class="brd-separetor">/</span> <span
									class="breadcrumb_item active">상품리스트</span>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Bradcaump area -->


		<!-- cart-main-area start -->
		<div class="cart-main-area section-padding--lg bg--white">
			<div class="container">
				<div class="row">
					<div class="col-md-12 col-sm-12 ol-lg-12">
						<div class="table-content wnro__table table-responsive">
						<form id="admin_booklistForm" action="">					
							<table>
								<thead>
									<tr class="title-top">
										<th class="product-remove"><input type="checkbox" name=""
											id="chkAll"/></th>
										<th class="product-id">번호</th>
										<th class="product-thumbnail">이미지</th>
										<th class="product-name">상품명</th>									
										<th class="product-price">정가</th>
										<th class="product-price">할인가</th>
										<th class="product-stock">재고</th>
										<th class="product-logtime">등록일/수정일</th>
										<th class="product-modify">수정</th>
										<th class="product-remove">삭제</th>
									</tr>
								</thead>
								<tbody id="admin_booklistTable">
									<c:forEach var="book" items="${list }" varStatus="i" begin="0">
										<tr>
											<td class="product-remove" style="padding-left: 0px;">
											<input type="checkbox" name="" id="chk_${i.index }" style="width: 13px;" /></td>
											<td class="product-id"><a href="">${book.seq }</a></td>

											<td class="product-thumbnail"><a href="#"> <img
													src="${book.img1 }" alt="product img"
													style="height: 100px;"></a></td>

											<td class="product-name"><a href="admin_bookModifyForm?book_id=${book.seq}">${book.title }<br />${book.subTitle }</a></td>
											<!-- 정가  -->
											<td class="product-price"><span
												class="amount price_${book.seq }"> <fmt:formatNumber
														pattern="#,###원">${book.price }</fmt:formatNumber></span></td>

											<!-- 할인가  -->
											<td class="product-price"><span
												class="amount d_price_${book.seq }"> 
												<fmt:formatNumber pattern="#,###원">${book.d_price }</fmt:formatNumber></span></td>
												
											<!-- 재고  -->
											<td class="product-stock"><span
												class="stock_${book.stock }">${book.stock }</span></td>

											<!-- 등록일/수정일  -->
											<td class="product-logtime"><span
												class="logtime_${book.logtime }">${book.logtime }</span></td>


											<!-- 수정 -->
											<td class="product-modify">
											<input type="button" class="modify_${book.seq }" value="수정" onclick="location.href='admin_bookModifyForm?book_id=${book.seq}'"></td>

											<!-- 삭제 -->
											<td class="product-remove">
											<input type="button" class="remove_${book.seq }" id="deleteBtn" value="삭제" onclick="bookDeleteForm()"></td>
										</tr>
										</c:forEach>
								</tbody>
							</table>
							</form>						
						</div>
						<div class="cartbox__btn">
							<ul	class="cart__btn__list d-flex flex-wrap flex-md-nowrap flex-lg-nowrap justify-content-between">
								<li><input type="button" value="선택 삭제" id="choiceDeleteBtn"></li>
							</ul>
						</div>	
					</div>
				</div>
			</div>
				<ul class="wn__pagination">${paging }</ul>
		</div>

		<!-- Footer Area -->
		<div
			style="border-top: 1px solid #e6e6e6; width: 100%; margin-top: 90px;"></div>
		<jsp:include page="footer.jsp"></jsp:include>
		<!-- //Footer Area -->
		
	
	</div>
	<!-- //Main wrapper -->

	<!-- JS Files -->
	<script src="../js/vendor/jquery-3.2.1.min.js"></script>
	<script src="../js/popper.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/plugins.js"></script>
	<script src="../js/active.js"></script>
	<script src="../js/admin_list.js"></script>
	<script src="../js/member.js"></script>
	
	<script>
	function adminBookListPaging(pg){
		location.href="admin_booklist?pg="+pg;
	}
	</script>
	
	<script>
	function bookDeleteForm(){
		document.admin_booklistForm.method = 'post';
		document.admin_booklistForm.action = '/admin/admin_bookDelete';
		document.admin_booklistForm.submit();

	}
	</script>
	

</body>

</html>