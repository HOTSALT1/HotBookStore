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
<style>
	.admin-order table td{
		padding: 0px 5px;
	}
</style>

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
								<a class="breadcrumb_item" href="/hotSalt/admin_order-list">주문&배송</a> <span
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
						<form id="admin_order-list" action="/hotSalt/admin/admin_order-list" class="form-inline">
							<div class="form-group">
								<input type="text" name="order_id" placeholder="주문번호" class="form-control" value="${data.order_id }"/>
							</div>
							<div class="form-group">
								<input type="text" name="user_id" placeholder="주문자" class="form-control" value="${data.user_id }"/>
							</div>
							<div class="form-group">
								<select name="order_status" id="status" class="form-control">
									<option value="">주문 상태</option>
									<option value="결제대기">결제대기</option>
									<option value="결제완료">결제완료</option>
									<option value="결제취소">결제취소</option>
									<option value="상품준비중">상품준비중</option>
									<option value="배송중">배송중</option>
									<option value="배송완료">배송완료</option>
								</select>
								<input type="hidden" id="hidden-status" value="${data.status }"/>
								<input type="hidden" name="pg" id="hidden-pg" value="${data.pg }"/>
							</div>
							<div class="form-group">
								<input type="submit" value="검색" class="btn" />
							</div>
						</form>
						<div class="table-content wnro__table table-responsive admin-order">
							<table>
								<thead>
									<tr class="title-top">
										<th class="product-remove"><input type="checkbox" name="" id="chkAll" /></th>
										<th class="">주문번호</th>
										<th class="">주문일시</th>
										<th class="">주문자</th>
										<th class="">주문상품</th>
										<th class="">총 상품금액</th>
										<th class="">총 배송비</th>
										<th class="">적립금 사용</th>
										<th class="">총 주문금액</th>
										<th class="">주문상태</th>
									</tr>
								</thead>
								<tbody id="">
									<c:forEach items="${order_list }" var="order">
										<tr>
											<td class="product-remove" style="padding-left: 0px; height:${height};"><input
												type="checkbox" name="" id="chk_"
												style="width: 13px;" /></td>
											<td>${order.order_id }</td>
											<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${order.logtime }"/></td>
											<td>${order.user_id }</td>
											<td>${order.name }</td>
											<td><fmt:formatNumber pattern="#,###,###원" value="${order.price - order.delivery_fee + order.usedPoint }"/></td>
											<td><fmt:formatNumber pattern="#,###,###원">${order.delivery_fee }</fmt:formatNumber></td>
											<td><fmt:formatNumber pattern="#,###,###원">${order.usedPoint }</fmt:formatNumber></td>
											<td><fmt:formatNumber pattern="#,###,###원">${order.price }</fmt:formatNumber></td>
											<td>${order.status }</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							
						</div>
						<div class="cartbox__btn">
							<ul	class="cart__btn__list d-flex flex-wrap flex-md-nowrap flex-lg-nowrap justify-content-between">
								<li><a href="">선택 삭제</a></li>
								<li>
									<select name="" id="new_status" class="form-control" style="margin-bottom:10px;">
										<option value="">주문 상태</option>
										<option value="결제대기">결제대기</option>
										<option value="결제완료">결제완료</option>
										<option value="결제취소">결제취소</option>
										<option value="상품준비중">상품준비중</option>
										<option value="배송중">배송중</option>
										<option value="배송완료">배송완료</option>
									</select>
									<a href="">주문 처리</a>
								</li>
							</ul>
						</div>
						<ul class="wn__pagination">${paging }</ul>	
					</div>
				</div>
			</div>
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
	<script src="../js/admin-order.js"></script>
	
	<script type="text/javascript">
		$(function() {
			$('#status').val($('#hidden').val());
		})
	
	</script>

</body>

</html>