<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


   <header id="wn__header" class="header__area header__absolute sticky__header">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-6 col-sm-6 col-6 col-lg-2">
						<div class="logo">
							<a href="/hotSalt/index">
								<img src="/hotSalt/images/logo-white.png" alt="logo images">
							</a>
						</div>
					</div>
					<div class="col-lg-8 d-none d-lg-block">
						<nav class="mainmenu__nav">
							<ul class="meninmenu d-flex justify-content-start">
								<li class="drop with--one--item"><a href="/hotSalt/shop-grid">카테고리</a>
									<div class="megamenu mega02">
										<ul class="item item02 cate1">
											<li><a href="javascript:void(0)">국어 외국어 사전</a></li>
                                            <li><a href="javascript:void(0)">만화/라이트노벨</a></li>
                                            <li><a href="javascript:void(0)">건강 취미</a></li>
                                            <li><a href="javascript:void(0)">예술</a></li>			
                                            <li><a href="javascript:void(0)">수험서 자격증</a></li>
                                            <li><a href="javascript:void(0)">자기계발</a></li>
                                            <li><a href="javascript:void(0)">자연과학</a></li>
                                            <li><a href="javascript:void(0)">에세이</a></li>
                                            <li><a href="javascript:void(0)">종교</a></li>
                                         </ul>
                                         <ul class="item item02 cate1">
                                            <li><a href="javascript:void(0)">인문</a></li>
                                            <li><a href="javascript:void(0)">경제 경영</a></li>
                                            <li><a href="javascript:void(0)">가정 살림</a></li>
                                            <li><a href="javascript:void(0)">대학교재</a></li>
                                            <li><a href="javascript:void(0)">어린이</a></li>
                                            <li><a href="javascript:void(0)">소설/시/희곡</a></li>
                                            <li><a href="javascript:void(0)">사회 정치</a></li>
                                            <li><a href="javascript:void(0)">청소년</a></li>
										</ul>
									</div>
								</li>
								<!-- 베스트 셀러 -->
								<li class="drop"><a href="/hotSalt/shop-grid?cate2=best">베스트 셀러</a></li>
								<!-- 신간 -->
								<li class="drop"><a href="/hotSalt/shop-grid?cate2=new">신간</a></li>
                                <!-- 독서토론 -->
                               	<li class="drop"><a href="/hotSalt/community-index">책방 커뮤니티</a>
									<div class="megamenu dropdown">
										<ul class="item item01">
											<li><a href="">공지사항</a></li>
											<li><a href="/hotSalt/review">리뷰게시판</a></li>
											<li><a href="">북칼럼</a></li>
											<li><a href="">책 뉴스</a></li>
											<li><a href="">행사안내</a></li>
											<li><a href="">서비스 홍보</a></li>
										</ul>
									</div>
								</li>

                                <!-- 책방소개 -->
                                <li class="drop with--one--item"><a href="#">책방소개</a>
									<div class="megamenu dropdown">
										<ul class="item item01">
                                			<li><a href="/hotSalt/about">뜨거운 책방 소개</a></li>
                                			<li><a href="/hotSalt/contact">고객센터</a></li>
                                			<li><a href="/hotSalt/faq">자주 묻는 질문</a></li>
										</ul>
									</div>

                                </li>

							</ul>
						</nav>
					</div>
					<div class="col-md-6 col-sm-6 col-6 col-lg-2">
						<ul class="header__sidebar__right d-flex justify-content-end align-items-center">
							<c:if test="${sessionScope.memId== null }">
								<li style="min-width: 50px;"class="h_top"><a href="/hotSalt/loginForm">로그인</a></li>
								<li class="h_top"><a href="/hotSalt/signup_agreement">회원가입</a></li>
							</c:if>
							<c:if test="${sessionScope.memId !=null }">
								<li class="h_top"><a href="#" id="logout">로그아웃</a></li>
								<!-- 회원정보 아이콘 색상때문에 클래스 설정 다시해야됨 css파일 찾아봐야됨 -->
								<li class="setting__bar__icon"><a class="setting__active" href="#"></a>
								<div class="searchbar__content setting__block">
									<div class="content-inner">
										<div class="switcher-currency">
											<strong class="label switcher-label">
												<span>My Account</span>
											</strong>
											<div class="switcher-options">
												<div class="switcher-currency-trigger">
													<div class="setting__menu">
														<span><a href="/hotSalt/orderHistory">주문내역</a></span>
														<span><a href="/hotSalt/cart">장바구니</a></span>
														<span><a href="/hotSalt/wishlist">찜한 상품 목록</a></span>
														<span><a href="/hotSalt/member_point">적립금</a></span>
														<span><a href="/hotSalt/mypage_pwd_chk">회원정보</a></span>
														<c:if test="${sessionScope.memId =='admin' }">
														<span><a href="/hotSalt/admin/admin_index">관리자 페이지로 이동</a></span>
														</c:if>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</li>
							</c:if>
							
							<!-- 장바구니 초기 변수 설정 -->
							<c:set var="price">0</c:set>
							<c:set var="d_price">0</c:set>
							<c:set var="count">0</c:set>
							<c:forEach var="book" items="${list }" varStatus="i">
								<c:set var="price">${price + book.price * cart_list[i.index].qty}</c:set>
								<c:set var="d_price">${d_price + book.d_price * cart_list[i.index].qty}</c:set>
								<c:set var="count">${count + 1 }</c:set>
							</c:forEach>
							<li style="margin: 0 5px 0 5px;"class="shopcart"><a class="cartbox_active" href="#"><span id="book_count" class="product_qun">${count }</span></a>
								<!-- 쇼핑카트 -->
								<div class="block-minicart minicart__active">
									<div class="minicart-content-wrapper">
										<div class="micart__close">
											<span>close</span>
										</div>
										<div class="items-total d-flex justify-content-between">
											<span id="book_count2">${count }개 상품</span>
											<span>상품 총 금액</span>
										</div>
										<div class="total_amount text-right">
											<span id="d_price"><fmt:formatNumber pattern="#,###원">${d_price }</fmt:formatNumber></span>
										</div>
										<div class="mini_action checkout">
											<a id="checkout_all" class="checkout__btn" href="javascript:void(0)">주문하기</a>
										</div>
										<div class="single__items">
											<div class="miniproduct">
												<c:set var="gap"></c:set>
												<c:forEach var="book" items="${list }" varStatus="i">
												<c:if test="${i.index > 0 }"><c:set var="gap">mt--20</c:set></c:if>
												<div id="book_id_${book.seq }" class="item01 d-flex ${gap }">
													<div class="thumb">
														<a href="/hotSalt/product-details.html"><img
																src="${book.img1 }"
																alt="${book.title }"></a>
													</div>
													<div class="content">
														<h6><a href="/hotSalt/product-details.html">${book.title }</a></h6>
														<span id="d_price_${book.seq }" class="prize"><fmt:formatNumber pattern="#,###원">${book.d_price }</fmt:formatNumber></span>
														<div class="product_prize d-flex justify-content-between">
															<span id="qty_${book.seq }" class="qun">수량: ${cart_list[i.index].qty }</span>
															<ul class="d-flex justify-content-end">
																<!-- <li><a href="#"><i class="zmdi zmdi-settings"></i></a>
																</li> -->
																<li><a href="#"><i id="remove_${book.seq }" class="zmdi zmdi-delete"></i></a>
																</li>
															</ul>
														</div>
													</div>
												</div>
												</c:forEach>
												<span id="no_item"><c:if test="${list.size() == 0 }">카트에 담긴 상품이 없습니다.</c:if></span>
											</div>
										</div>
										<div class="mini_action cart">
											<a class="cart__btn" href="/hotSalt/cart">내 장바구니</a>
										</div>
									</div>
								</div>
								<!-- End Shopping Cart -->
								
							</li>
							<li class="h_top"><a href="/hotSalt/contact">고객센터</a></li>
						</ul>
					</div>
				</div>
				<!-- Start Mobile Menu -->
				<div class="row d-none">
					<div class="col-lg-12 d-none">
						<nav class="mobilemenu__nav">
							<ul class="meninmenu">
								<li><a href="/hotSalt/index">Home</a>
								</li>
								<li><a href="/hotSalt/shop-grid">카테고리</a>
									<ul>
										<li><a href="javascript:void(0)">국어 외국어 사전</a></li>
                                        <li><a href="javascript:void(0)">만화/라이트노벨</a></li>
                                        <li><a href="javascript:void(0)">건강 취미</a></li>
                                        <li><a href="javascript:void(0)">예술</a></li>			
                                        <li><a href="javascript:void(0)">수험서 자격증</a></li>
                                        <li><a href="javascript:void(0)">자기계발</a></li>
                                        <li><a href="javascript:void(0)">자연과학</a></li>
                                        <li><a href="javascript:void(0)">에세이</a></li>
                                        <li><a href="javascript:void(0)">종교</a></li>
                                        <li><a href="javascript:void(0)">인문</a></li>
                                        <li><a href="javascript:void(0)">경제 경영</a></li>
                                        <li><a href="javascript:void(0)">가정 살림</a></li>
                                        <li><a href="javascript:void(0)">대학교재</a></li>
                                        <li><a href="javascript:void(0)">어린이</a></li>
                                        <li><a href="javascript:void(0)">소설/시/희곡</a></li>
                                        <li><a href="javascript:void(0)">사회 정치</a></li>
                                        <li><a href="javascript:void(0)">청소년</a></li>
									</ul>
								</li>
								<li><a href="/hotSalt/shop-grid?cate2=best">베스트 셀러</a>
								</li>
								<li><a href="/hotSalt/shop-grid?cate2=new">신간</a>
								</li>
								<li><a href="/hotSalt/community-index">책방 커뮤니티</a>
									<ul class="">
										<li><a href="">공지사항</a></li>
										<li><a href="/hotSalt/review">리뷰게시판</a></li>
										<li><a href="">북칼럼</a></li>
										<li><a href="">책 뉴스</a></li>
										<li><a href="">행사안내</a></li>
										<li><a href="">서비스 홍보</a></li>
									</ul>
								</li>
								<li><a href="/hotSalt/contact.html">Contact</a></li>
							</ul>
						</nav>
					</div>
				</div>
				<!-- End Mobile Menu -->
				<div class="mobile-menu d-block d-lg-none">
				</div>
				<!-- Mobile Menu -->
			</div>
		</header>
		<script src="/hotSalt/js/member.js"></script>
		<script type="text/javascript">
			$('.cate1 li').click(function () {
				location.href="/hotSalt/search?cate1=" + $(this).text();
			})
		</script>