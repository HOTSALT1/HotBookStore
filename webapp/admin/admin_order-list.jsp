<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>관리자 주문통합리스트 | Hot Book Store</title>
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

<script src="../js/vendor/jquery-3.2.1.min.js"></script>

<!-- Modernizer js -->
<script src="../js/vendor/modernizr-3.5.0.min.js"></script>
</head>

<body>
	<!-- Main wrapper -->
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
							<h2 class="bradcaump-title">관리자 전용 주문통합리스트</h2>
							<nav class="bradcaump-content">
								<a class="breadcrumb_item" href="../admin_index.jsp">주문&배송</a> <span
									class="brd-separetor">/</span> <span
									class="breadcrumb_item active">주문통합리스트 </span>
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
							<table>
								<thead>
									<tr class="title-top">
										<th class="product-remove"><input type="checkbox" name=""
											id="chkAll" checked /></th>
										<th class="">번호</th>
										<th class="">주문일시</th>
										<th class="">주문자</th>
										<th class="">주문상품</th>
										<th class="">총 상품금액</th>
										<th class="">총 배송비</th>
										<th class="">총 주문금액</th>
										<th class="">결제상태</th>
										<th class="">미배송</th>
										<th class="">배송중</th>
										<th class="">배송완료</th>
									</tr>
								</thead>
								<tbody id="">
									<c:forEach items="order_list" var="order">
										<tr>
											<td class="product-remove" style="padding-left: 0px;"><input
												type="checkbox" name="" id="chk_"
												style="width: 13px;" /></td>
											<td></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						
						</div>
						<div class="cartbox__btn">
							<ul	class="cart__btn__list d-flex flex-wrap flex-md-nowrap flex-lg-nowrap justify-content-between">
								<li><a href="">선택 삭제</a></li>
							</ul>
						</div>	
					</div>
				</div>
			</div>
						<ul class="wn__pagination">
									<li class="active"><a href="#">1</a></li>
									<li><a href="">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#"><i class="zmdi zmdi-chevron-right"></i></a></li>
						</ul>
		</div>

		<!-- Footer Area -->
		<div
			style="border-top: 1px solid #e6e6e6; width: 100%; margin-top: 90px;"></div>
		<jsp:include page="footer.jsp"></jsp:include>
		<!-- //Footer Area -->

	</div>
	<!-- //Main wrapper -->

	<!-- JS Files -->
	<script src="../js/popper.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/plugins.js"></script>
	<script src="../js/active.js"></script>
	<script src="../js/cart.js"></script>
	<script src="../js/member.js"></script>
			

</body>

</html>