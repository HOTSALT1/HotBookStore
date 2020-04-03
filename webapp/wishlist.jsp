<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>찜한 상품 | Hot BookStore</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- Favicons -->
	<link rel="shortcut icon" href="/hotSalt/images/favicon.ico">
	<link rel="apple-touch-icon" href="/hotSalt/images/icon.png">

	<!-- Google font (font-family: 'Roboto', sans-serif; Poppins ; Satisfy) -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,600,600i,700,700i,800"
		rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="/hotSalt/css/bootstrap.min.css">
	<link rel="stylesheet" href="/hotSalt/css/plugins.css">
	<link rel="stylesheet" href="/hotSalt/style.css">

	<!-- Cusom css -->
	<link rel="stylesheet" href="/hotSalt/css/custom.css">

	<script src="/hotSalt/js/vendor/jquery-3.2.1.min.js"></script>

	<!-- Modernizer js -->
	<script src="/hotSalt/js/vendor/modernizr-3.5.0.min.js"></script>
</head>

<body>
	<!--[if lte IE 9]>
		<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
	<![endif]-->

	<!-- Main wrapper -->
	<div class="wrapper" id="wrapper">

		<!-- Header -->
		<jsp:include page="navbar.jsp"></jsp:include>
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
		<div class="ht__bradcaump__area bg-image--5">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="bradcaump__inner text-center">
							<h2 class="bradcaump-title">Wishlist</h2>
							<nav class="bradcaump-content">
								<a class="breadcrumb_item" href="/hotSalt/index">Home</a>
								<span class="brd-separetor">/</span>
								<span class="breadcrumb_item active">Wishlist</span>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Bradcaump area -->
		<!-- cart-main-area start -->
		<div class="wishlist-area section-padding--lg bg__white">
			<div class="container">
				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="wishlist-content">
							<form action="#">
								<div class="wishlist-table wnro__table table-responsive">
									<table>
										<thead>
											<tr>
												<th class="product-remove"></th>
												<th class="product-thumbnail"></th>
												<th class="product-name"><span class="nobr">상품명</span></th>
												<th class="product-price"><span class="nobr"> 정가 </span></th>
												<th class="product-stock-stauts"><span class="nobr"> 할인가</span></th>
												<th class="product-add-to-cart"></th>
											</tr>
										</thead>
										<tbody>
											<c:if test="${list_wishlist.size()==0 }">
											<tr><td colspan="6">찜한 상품이 없습니다.</td></tr>
											</c:if>
											<c:forEach var="item" items="${list_wishlist }">
											<tr>
												<td class="product-remove"><a id="${item.book_id }" class="delete" href="javascript:void(0)">×</a></td>
												<td class="product-thumbnail"><a href="/hotSalt/single-product?book_id=${item.book_id }"><img src="${item.img1 }" alt="${itme.title }" style="height: 100px;"></a></td>
												<td class="product-name"><a href="/hotSalt/single-product?book_id=${item.book_id }">${item.title }</a></td>
												<td class="product-price"><span class="amount"><fmt:formatNumber pattern="#,###,###원">${item.price }</fmt:formatNumber></span></td>
												<td class="product-stock-status"><span class="wishlist-in-stock"><fmt:formatNumber pattern="#,###,###원">${item.d_price }</fmt:formatNumber></span></td>
												<td class="product-add-to-cart"><a href="javascirpt:void(0)" class="${item.book_id }"> 장바구니에 추가</a></td>
											</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- cart-main-area end -->
		<!-- Footer Area -->
		<div style="border-top: 1px solid #e6e6e6; width: 100%; margin-top: 90px;"></div>
		<jsp:include page="footer.jsp"></jsp:include>
		<!-- //Footer Area -->

	</div>
	<!-- //Main wrapper -->

	<!-- JS Files -->
	<script src="/hotSalt/js/popper.min.js"></script>
	<script src="/hotSalt/js/bootstrap.min.js"></script>
	<script src="/hotSalt/js/plugins.js"></script>
	<script src="/hotSalt/js/active.js"></script>
	
	<script type="text/javascript">
		$('a.delete').click(function(){
			let book_id = $(this).attr('id');
			if(book_id==''){
				console.log('book_id값을 불러오지 못했습니다.')
				return false;
			}
			
			if(confirm("해당 항목을 찜한 상품 목록에서 삭제합니다.")){
				$.ajax({
					type: 'delete',
					url: '/hotSalt/wishlist/' + book_id,
					dataType:'text',
					success: function(data) {
						var Ca = /\+/g;
						alert(decodeURIComponent(data.replace(Ca, " ")));
						location.href="/hotSalt/wishlist"
					}
				})
			}
			
		});
		
		// 장바구니 추가
		$('.product-add-to-cart a').click(function() {
			let book_id = $(this).attr('class');
			let qty = 1;
			
			if(book_id == ''){
				console.log('book_id 값을 불러오지 못했습니다. 장바구니에 추가하지 못했습니다.')
				return false;
			}

			$.ajax({
				type: 'post',
				url: '/hotSalt/cart',
				data: {	'book_id': book_id,
						'qty': qty},
				dataType:'text',
				success: function(data) {
					if(data!='error'){
						if(confirm("장바구니에 상품이 담겼습니다. 바로 확인하시겠습니까?")){
							location.href="/hotSalt/cart"
						}
					}else{
						alert('서버와 통신 중 오류가 발생했습니다.')
					}
				}
			})
		})
	</script>

</body>

</html>