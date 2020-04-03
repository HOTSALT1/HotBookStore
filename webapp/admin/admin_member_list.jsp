<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>관리자 회원목록 | Hot Book Store</title>
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
	<!--[if lte IE 9]>
		<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
	<![endif]-->

	<!-- Main wrapper -->
	<div class="wrapper" id="wrapper">

		<!-- Header -->
		<jsp:include page="admin_navbar.jsp"></jsp:include>
		<!-- //Header -->
		<!-- Start Search Popup -->
		<div class="box-search-content search_active block-bg close__top">
			<form id="search_mini_form" class="minisearch" action="#">
				<div class="field__search">
					<input type="text" placeholder="Search entire store here...">
					<div class="action">
						<a href="#"><i class="zmdi zmdi-search"></i></a>
					</div>
				</div>
			</form>
			<div class="close__wrap">
				<span>close</span>
			</div>
		</div>
		<!-- End Search Popup -->
		
		<!-- Start Bradcaump area -->
		<div class="ht__bradcaump__area bg-image--4">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="bradcaump__inner text-center">
							<h2 class="bradcaump-title">관리자 전용 회원목록</h2>
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
										<th class="product-remove"><input type="checkbox" name="" id="chkAll" checked /></th>
										<th class="product-thumbnail">아이디</th>
										<th class="product-name">이름</th>
										<th class="product-price">이메일</th>
										<th class="product-price">전화번호</th>
										<th class="product-stock">생년월일</th>
										<th class="product-logtime">가입일</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="memberDTO" items="${list }">
									<tr>	
										<td><input type="checkbox" name="" id="" style="width: 13px;"/> </td>
										<td>${memberDTO.id }</td>
										<td>${memberDTO.name }</td>
										<td>${memberDTO.email }</td>
										<td>${memberDTO.tel }</td>
										<td><fmt:formatDate value="${memberDTO.birth }" pattern="yyyy년 MM월 dd일" /></td>
										<td>${memberDTO.logtime }</td>
									</tr>
									</c:forEach>
								</tbody>
							</table>
							<ul class="wn__pagination">${paging }</ul>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Footer Area -->
	    <div style="border-top:1px solid #e6e6e6; width: 100%; margin-top:90px;"></div>	
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
	<script src="../js/cart.js"></script>
	<script src="../js/member.js"></script>

</body>
<script type="text/javascript">
$('ul.wn__pagination li:not(.active) a').click(function() {
	goTo($(this).text());
});

function goTo(pg) {
	let pg2 = 1;
	if(pg){
		pg2 = pg;
	}

	var data = {
		pg: 	pg2,
	}
	location.href="/hotSalt/admin/admin_member_list?" + $.param(data);
}
</script>
</html>