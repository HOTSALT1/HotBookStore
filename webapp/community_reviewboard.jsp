<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach var="list" items="${reviewDTO }">
<div class="col-lg-4 col-xl-3 col-md-6 col-sm-6 col-12 gallery__item cat--2">
	<div class="portfolio">
		<div class="thumb">
			<a href="review-details?review_seq=${list.review_seq}"> 
				<img src="${list.IMG1}" alt="${list.title}">
			</a>
			<div class="search">
				<a href="${list.IMG1}" data-lightbox="grportimg"
					data-title="My caption"><i class="zmdi zmdi-search"></i></a>
			</div>
			<div class="link">
				<a href="portfolio-details.html"><i class="fa fa-link"></i></a>
			</div>
		</div>
		<div class="content">
			<h6>			
				<a href="portfolio-details.html">${list.title}</a>
			</h6>
			<p>${list.title}</p>
		</div>
	</div>
</div>
</c:forEach>