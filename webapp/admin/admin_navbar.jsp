<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<header id="wn__header" class="header__area header__absolute sticky__header">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-6 col-sm-6 col-6 col-lg-2">
						<div class="logo">
							<a href="../admin/admin_index.jsp">
								<img src="../img/admin-logo.png" alt="logo images">
							</a>
						</div>
					</div>
					<div class="col-lg-8 d-none d-lg-block">
						<nav class="mainmenu__nav">
							<ul class="meninmenu d-flex justify-content-start">
								<li class="drop"><a href="#">기본설정</a>
									<div class="megamenu mega03">
										<ul class="item item03">
											<li class="title">기본정책</li>
											<li><a href="">기본 정보 설정</a></li>
											<li><a href="">약관 / 개인정보처리방침</a></li>
											<li><a href="">이용 / 탈퇴 안내</a></li>
											<li><a href="">금액 / 단위 기준 설정</a></li>
											<li><a href="">코드 관리</a></li>
										</ul>
										<ul class="item item03">
											<li class="title">관리 정책</li>
											<li><a href="">운영자 관리</a></li>
											<li><a href="">운영자 권한 설정</a></li>
											<li><a href="">운영 보안 설정</a></li>
											<li><a href="">쇼핑몰 이용 설정</a></li>
											<li><a href="">비밀번호 찾기 설정</a></li>
											<li><a href="">비밀번호 변경안내 설정</a></li>											
										</ul>
										<!-- 
										<ul class="item item03">
											<li class="title">상품 정책</li>
											<li><a href="">상품 기본 설정</a></li>
											<li><a href="">상품 이미지 사이즈 설정</a></li>
											<li><a href="">상품 상세 이용안내 관리</a></li>
											<li><a href="">최근 본 상품 설정</a></li>					
										</ul>
										
										<ul class="item item03">
											<li class="title">주문 정책</li>
											<li><a href="">주문 기본 설정</a></li>
											<li><a href="">주문 상태 설정</a></li>
											<li><a href="">장바구니 / 관심상품 설정</a></li>
											<li><a href="">주문서 인쇄 설정</a></li>					
										</ul>
										<ul class="item item03">
											<li class="title">결제 정책</li>
											<li><a href="">결제 수단 설정</a></li>
											<li><a href="">무통장 입금 은행 관리</a></li>
											<li><a href="">통합 전자결제 서비스 설정</a></li>
											<li><a href="">네이버 페이 설정</a></li>	
											<li><a href="">카카오 페이 설정</a></li>	
										
										</ul>
										 -->
									</div>
								</li>
								<li class="drop"><a href="">상품</a>
									<div class="megamenu mega03">
										<ul class="item item03">
											<li class="title">상품관리</li>
											<li><a href="admin_booklist">상품리스트 </a></li>
											<li><a href="admin_insertForm">상품 등록 </a></li>
											<li><a href="">상품 혜택 관리 </a></li>
											<li><a href="">상품 아이콘 관리</a></li>
											<li><a href="">상품 필수정보 관리 </a></li>
											<li><a href="">삭제 상품 관리 </a></li>
											
										</ul>
										<ul class="item item03">
											<li class="title">상품 일괄 관리</li>
											<li><a href="">상품 마일리지/혜택 관리</a></li>
											<li><a href="">상품 품절/노출/재고 관리</a></li>
											<li><a href="">상품 이동/복사/삭제 관리</a></li>
											<li><a href="">상품 배송비 관리</a></li>
											<li><a href="">상품 이미지 일괄 처리</a></li>
										</ul>
										<ul class="item item03">
											<li class="title">상품 분류 관리</li>
											<li><a href="">분류 설정 관리</a></li>
											<li><a href="">베스트 셀러 관리</a></li>
											<li><a href="">신간 관리</a></li>
											<li><a href="">MD's pick 관리</a></li>
										</ul>
									</div>
								</li>
								
								<li class="drop"><a href="shop-grid.html">주문/배송</a>
									<div class="megamenu mega03">
										<ul class="item item03">
											<li class="title">주문관리</li>
											<li><a href="">주문통합리스트 </a></li>
											<li><a href="">입금대기 리스트 </a></li>
											<li><a href="">결제완료 리스트</a></li>
											<li><a href="">상품준비중 리스트</a></li>
											<li><a href="">배송중 리스트</a></li>
											<li><a href="">배송완료 리스트</a></li>
											<li><a href="">구매확정 리스트</a></li>
											<li><a href="">결제 중단/실패 리스트</a></li>									
										</ul>
										<ul class="item item03">
											<li class="title">취소/교환/반품/환불 관리</li>
											<li><a href="">취소 리스트</a></li>
											<li><a href="">교환 리스트</a></li>
											<li><a href="">반품 리스트</a></li>
											<li><a href="">환불 리스트</a></li>
										</ul>
										<ul class="item item03">
											<li class="title">수기주문 관리</li>
											<li><a href="">수기주문 등록</a></li>
											<li><a href="">자주쓰는 주소 관리</a></li>
										</ul>
									</div>
								</li>
								
								
								
								<li class="drop"><a href="#">커뮤니티 게시판</a>
									<div class="megamenu dropdown">
										<ul class="item item01">
											<li><a href="about.html">커뮤니티 게시판 관리</a></li>
											<li class="label2"><a href="portfolio.html">게시판 리스트</a>
												<ul>
													<li><a href="portfolio.html"></a></li>
													<li><a href="portfolio-three-column.html">Portfolio 3 Column</a>
													</li>
													<li><a href="portfolio-details.html">Portfolio Details</a></li>
												</ul>
											</li>
											<li><a href="my-account.html">My Account</a></li>
											<li><a href="cart.html">Cart Page</a></li>
											<li><a href="checkout.html">Checkout Page</a></li>
											<li><a href="wishlist.html">Wishlist Page</a></li>
											<li><a href="error404.html">404 Page</a></li>
											<li><a href="faq.html">Faq Page</a></li>
											<li><a href="team.html">Team Page</a></li>
										</ul>
									</div>
                                </li>
                                
                                
							</ul>
						</nav>
					</div>
					<div class="col-md-6 col-sm-6 col-6 col-lg-2">
						<ul class="header__sidebar__right d-flex justify-content-end align-items-center">
							<li class="h_top"><a href="../index0.jsp">(고객전용)<br>홈페이지로 이동</a></li>
							<c:if test="${sessionScope.memId== null }">
								<li style="min-width: 50px;"class="h_top"><a href="loginForm.jsp">로그인</a></li>
								<li class="h_top"><a href="signup_agreement.jsp">회원가입</a></li>
							</c:if>
							
							<c:if test="${sessionScope.memId !=null }">
								<li class="h_top"><a href="#" id="logout">로그아웃</a></li>
								<!-- 회원정보 아이콘 색상때문에 클래스 설정 다시해야됨 css파일 찾아봐야됨 -->
								<li class="setting__bar__icon"><a href="#"></a></li>
							</c:if>
							
							
											</ul>
					</div>
				</div>
				<!-- Start Mobile Menu -->
				<div class="row d-none">
					<div class="col-lg-12 d-none">
						<nav class="mobilemenu__nav">
							<ul class="meninmenu">
								<li><a href="index.html">Home</a>
									<ul>
										<li><a href="index.html">Home Style Default</a></li>
										<li><a href="index-2.html">Home Style Two</a></li>
										<li><a href="index-3.html">Home Style Three</a></li>
										<li><a href="index-box.html">Home Box Style</a></li>
									</ul>
								</li>
								<li><a href="#">Pages</a>
									<ul>
										<li><a href="about.html">About Page</a></li>
										<li><a href="portfolio.html">Portfolio</a>
											<ul>
												<li><a href="portfolio.html">Portfolio</a></li>
												<li><a href="portfolio-three-column.html">Portfolio 3 Column</a></li>
												<li><a href="portfolio-details.html">Portfolio Details</a></li>
											</ul>
										</li>
										<li><a href="my-account.html">My Account</a></li>
										<li><a href="cart.html">Cart Page</a></li>
										<li><a href="checkout.html">Checkout Page</a></li>
										<li><a href="wishlist.html">Wishlist Page</a></li>
										<li><a href="error404.html">404 Page</a></li>
										<li><a href="faq.html">Faq Page</a></li>
										<li><a href="team.html">Team Page</a></li>
									</ul>
								</li>
								<li><a href="shop-grid.html">Shop</a>
									<ul>
										<li><a href="shop-grid.html">Shop Grid</a></li>
										<li><a href="shop-list.html">Shop List</a></li>
										<li><a href="shop-left-sidebar.html">Shop Left Sidebar</a></li>
										<li><a href="shop-right-sidebar.html">Shop Right Sidebar</a></li>
										<li><a href="shop-no-sidebar.html">Shop No sidebar</a></li>
										<li><a href="single-product.html">Single Product</a></li>
									</ul>
								</li>
								<li><a href="blog.html">Blog</a>
									<ul>
										<li><a href="blog.html">Blog Page</a></li>
										<li><a href="blog-left-sidebar.html">Blog Left Sidebar</a></li>
										<li><a href="blog-no-sidebar.html">Blog No Sidebar</a></li>
										<li><a href="blog-details.html">Blog Details</a></li>
									</ul>
								</li>
								<li><a href="contact.html">Contact</a></li>
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