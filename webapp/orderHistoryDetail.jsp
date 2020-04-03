<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>주문상세내역 | Hot BookStore</title>
	<meta name="description" content="">
	<meta name="viewport" content="wclassth=device-wclassth, initial-scale=1">

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

	<!-- Modernizer js -->
	<script src="/hotSalt/js/vendor/jquery-3.2.1.min.js"></script>
	<script src="/hotSalt/js/vendor/modernizr-3.5.0.min.js"></script>

    <style>
   		.orderHistory_table{
    	width: 900px;
   		margin: 0 auto;
   		margin-bottom:10px;
   		border-bottom:none;
   		}
   		.orderHistory_table_tr1{
   		height:35px;
   		border-top:1px solid #c3c3c3;
   		border-bottom:1px solid #c3c3c3;
   		}
   		.orderHistory_table_tr1 td{
   		background-color: #efefef;
	    text-align: center;
	    border: none;
	    padding: 0;
	    border-right: 1px solid #c3c3c3;
   		}
   		.orderHistory_table_tr2{
   		height:35px;
   		border-bottom: 1px solid #e6e4e4;
   		}
   		.orderHistory_table_tr2 td{
	    text-align: center;
	    border: none;
	    padding: 0;
	    }
	    .orderHistory_table_tr3 td{
	    border-top:1px solid #c3c3c3;
	    border-bottom:1px solid #c3c3c3;
	    text-align: center;
	    border-rigth:none;
	    }
	    .orderHistorytitle{margin: 0 auto; width:900px;}
   		.ODB{border: 1px solid #c3c3c3;
		    background-color: #efefef;
		    border-radius: 7px;
		    width: 113px;
		    display: inline-block;
		    text-align: center;
		    margin-right: 15px;}
		    
		.tr_gray{background-color: #efefef; }
		.width900px{width:900px;}
		.width20{width: 20%;}
		.width30{width: 30%;}
		.text_left{text-align: left !important;}
		.p_left20{padding-left: 20px; }
		.font_b{font-weight: bold;}
		.margin0{margin:0 auto;}
    </style>
</head>
<body style="margin: 0 auto;">
<jsp:include page="navbar.jsp"></jsp:include>
<div style="border-top:1px solid #e6e6e6; width: 100%; margin-top:90px; margin-bottom:100px;"></div>
	<h4 class="orderHistorytitle">주문내역</h4>
	<div style="width: 900px; margin: 0 auto;margin-bottom:5px;margin-top: 20px;"></div>
	
	<!-- 주문내상품정보 -->
	<div style="margin: 0 auto; width: 900px;">
		<span class="ODB">주문내상품정보</span><span>주문번호 : </span><span style="color: #f56a6a; font-weight: 500;">${selected_order.order_id }</span>
	</div>
	<div style="border-top:2px solid #f56a6a; width: 900px; margin: 0 auto;margin-bottom:5px; margin-top: 10px;"></div>
	<table class="orderHistory_table">
         <tr class="orderHistory_table_tr1">
            <td style="width: 15%;">상태</td>
            <td style="width: 45%;">상품명</td>
            <td style="width: 10%;">수량</td>
            <td style="width: 15%;">정가</td>
            <td style="width: 15%; border-right: none;">할인가</td>
        </tr>
        <c:set var="qty">0</c:set>
        <c:forEach var="bookOrder" items="${list_bookOrder }">
        <tr class="orderHistory_table_tr2">
            <td>${selected_order.status }</td>
            <td>${bookOrder.title }</td>
            <td>${bookOrder.qty }</td>
            <td><fmt:formatNumber pattern="#,###,###원">${bookOrder.old_price }</fmt:formatNumber></td>
            <td style="border-right: none;"><fmt:formatNumber pattern="#,###,###원">${bookOrder.price }</fmt:formatNumber></td>
       	 </tr>
       	 <c:set var="qty">${qty + bookOrder.qty }</c:set>
       	 </c:forEach>
    </table>
    <table class="orderHistory_table">
         <tr class="orderHistory_table_tr1">
        	<td colspan="2" rowspan="2"span style="width: 55%;">합계</td>
          	<td style="width: 15%;">총 수량</td>
            <td style="width: 15%;">적립포인트</td>
            <td style="width: 15%; border-right: none;">가격</td>
        </tr>
        <tr class="orderHistory_table_tr1">
          	<td>${qty}</td>
            <td><fmt:formatNumber pattern="#,###,###P">${selected_order.point }</fmt:formatNumber></td>
            <td style="border-right: none;"><fmt:formatNumber pattern="#,###,###원">${selected_order.price + selected_order.usedPoint - selected_order.delivery_fee }</fmt:formatNumber></td>
        </tr>
    </table>
    <!-- 주문,배송정보  -->
    <div style="margin: 0 auto; width: 900px; margin-top:30px;">
		<span class="ODB">주문,배송정보</span>
	</div>
    <div style="border-top:2px solid #f56a6a; width: 900px; margin: 0 auto;margin-bottom:5px;margin-top: 10px;"></div>
	<table class="orderHistory_table">
        <tr class="orderHistory_table_tr3">
            <td class="tr_gray width20">주문번호</td>
            <td class="width30">${selected_order.order_id }</td>
            <td class="tr_gray width20">주문일자</td>
            <td class="width30" style="border-right: none;"><fmt:formatDate pattern="YYYY년 MM월 dd일 HH:mm:ss" value="${selected_order.logtime }"/></td>
        </tr>
        <tr class="orderHistory_table_tr3">
            <td class="tr_gray">주문하신 분</td>
            <td >${selected_order.buyer }</td>
            <td class="tr_gray" >받으시는 분</td>
            <td style="border-right: none;">${selected_order.receiver }</td>
        </tr>
        <tr class="orderHistory_table_tr3">
            <td class="tr_gray">주문자 연락처</td>
            <td>${selected_order.tel }</td>
            <td class="tr_gray">받는 분 연락처</td>
            <td style="border-right: none;">
            	${selected_order.r_tel1 }
            	<c:if test="${selected_order.r_tel2 } != null">
            		 / ${selected_order.r_tel2 }
            	</c:if>
            </td>
        </tr>
        <tr class="orderHistory_table_tr3">
            <td class="tr_gray">배송 주소</td>
            <td colspan="3" style="text-align: left; padding-left : 20px;">
            	<span>도로명 : </span>(${selected_order.zipcode }) ${selected_order.addr_new } ${selected_order.addr_detail }<br>
           		<span>지번 : </span>${selected_order.addr_old } ${selected_order.addr_detail }
           	</td>
        </tr>
        <tr class="orderHistory_table_tr3">
            <td class="tr_gray">배송 메세지</td>
            <td colspan="3">${selected_order.delivery_msg }</td>
        </tr>
    </table>
    <!-- 결제정보  -->
    <div style="margin: 0 auto; width: 900px; margin-top:30px;">
		<span class="ODB">결제정보</span>
	</div>
	<div style="border-top:2px solid #f56a6a; width: 900px; margin: 0 auto;margin-bottom:5px;margin-top: 10px;"></div>
	<table class="orderHistory_table">
        <tr class="orderHistory_table_tr3">
            <td class="tr_gray width20">주문금액</td>
            <td class="width30 text_left p_left20"><fmt:formatNumber pattern="#,###,###원">${selected_order.price + selected_order.usedPoint - selected_order.delivery_fee }</fmt:formatNumber></td>
            <td class="tr_gray width20">포인트 사용</td>
            <td class="text_left p_left20"style="border-right: none;"><fmt:formatNumber pattern="#,###,###P">${selected_order.usedPoint }</fmt:formatNumber></td>
        </tr>
        <tr class="orderHistory_table_tr3">
            <td class="tr_gray width20">실제 결제금액</td>
            <td class="width30 text_left p_left20"><fmt:formatNumber pattern="#,###원">${selected_order.price }</fmt:formatNumber></td>
            <td class="tr_gray width20">배송비</td>
            <td class="text_left p_left20"style="border-right: none;"><fmt:formatNumber pattern="#,###원">${selected_order.delivery_fee }</fmt:formatNumber></td>
        </tr>
        <tr class="orderHistory_table_tr3">
            <td class="tr_gray font_b">최종 결제금액</td>
            <td colspan="3" class="text_left p_left20"><span style="color :#f56a6a; font-weight: bold;s"><fmt:formatNumber pattern="#,###,###">${selected_order.price }</fmt:formatNumber></span>원</td>
        </tr>
        <tr class="orderHistory_table_tr3">
            <td class="tr_gray">결제 수단</td>
            <td colspan="3" class="text_left p_left20">${selected_order.method_name }</td>
        </tr>
        <tr class="orderHistory_table_tr3">
            <td class="tr_gray">승인번호</td>
            <td class="text_left p_left20 width30">12314</td>
            <td class="tr_gray">승인일자</td>
            <td class="text_left p_left20 width30">2020.04.01</td>
        </tr>
    </table>
    <div class="margin0 width900px" style="text-align: center;">
    	<input type="button" onclick="window.history.back(-1)" value="목록으로">
    </div>
    
    
    <jsp:include page="footer.jsp"></jsp:include>

	<!-- JS Files -->
	<script src="/hotSalt/js/popper.min.js"></script>
	<script src="/hotSalt/js/bootstrap.min.js"></script>
	<script src="/hotSalt/js/plugins.js"></script>
	<script src="/hotSalt/js/active.js"></script>
	<script src="/hotSalt/js/member.js"></script>

</body>

</html>