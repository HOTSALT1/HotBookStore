<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>Home | Books Library eCommerce Store</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- Favicons -->
	<link rel="shortcut icon" href="images/favicon.ico">
	<link rel="apple-touch-icon" href="images/icon.png">

	<!-- Google font (font-family: 'Roboto', sans-serif; Poppins ; Satisfy) -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,600,600i,700,700i,800"
		rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/plugins.css">
	<link rel="stylesheet" href="style.css">

	<!-- Cusom css -->
	<link rel="stylesheet" href="css/custom.css">

	<!-- Modernizer js -->
	<script src="js/vendor/jquery-3.2.1.min.js"></script>
	<script src="js/vendor/modernizr-3.5.0.min.js"></script>
<title>Insert title here</title>
    <style>
    	#orderPeriodBox{
    	border: 2px solid #c3c3c3;
    	border-radius : 7px;
    	margin: 0 auto;
    	width: 900px;
    	padding: 20px 0 20px 30px;
    	}
    	#orderPeriodBox_high .button{width: 90px;height: 30px; background-color: white; border: 1px solid gray;}
    	#orderPeriodBox_high .date{height: 30px;}
    	#orderPeriodBox_low{margin-top:10px;}
    	#orderPeriodBox_low select{width:90px; height: 30px;}
    	.search_bar{
		height: 30px;
		width: 400px;
		margin-left: 10px;
		vertical-align: bottom;}
		#orderPeriodBox_low .button{
		width: 90px;
		height: 30px;
		background-color: #f75151;
		border: none;
		margin-left: 10px;
		color: white;
   		}    	
   		#orderHistory_table{
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
	    #orderHistorytitle{margin: 0 auto; width:900px;}
   		
    </style>
</head>
<body style="margin: 0 auto;">
<jsp:include page="navbar.jsp"></jsp:include>
<div style="border-top:1px solid #e6e6e6; width: 100%; margin-top:90px; margin-bottom:100px;"></div>
	<h4 id="orderHistorytitle">주문내역</h4>
	<div style="border-top:2px solid #f56a6a; width: 900px; margin: 0 auto;margin-bottom:5px;margin-top: 20px;"></div>
	<div id="orderPeriodBox">
		<div id="orderPeriodBox_high">
		<input type="button" class="button" value="최근 1주일"><input type="button" class="button" value="1개월"><input type="button" class="button" value="3개월"><input type="button" class="button" value="6개월">
		&nbsp;&nbsp;<input type="date" class="date"> ~ <input type="date" class="date">
		</div>
		<!-- 주문검색 -->
		<div id="orderPeriodBox_low">
		<select> 
			<option value="주문전체" selected>주문전체</option>
			<option value="주문자">주문자</option>
			<option value="주문번호">주문번호</option>  
		</select>
		<input type="text" class="search_bar"><input type="button" value="조회" class="button">
		</div>
	</div>
	<div style="border-top:2px solid #f56a6a; width: 900px; margin: 0 auto;margin-bottom:5px;margin-top: 20px;"></div>
	<table id="orderHistory_table">
        <tr class="orderHistory_table_tr1">
            <td>주문번호</td>
            <td>주문일자</td>
            <td>주문상품</td>
            <td>주문금액</td>
            <td>주문상태</td>
            <td>문화비소득공제</td>
            <td>구매자</td>
            <td style="border-right: none;">수령자</td>
        </tr>
        
        <c:forEach var="order" items="${order_list }">
        <tr class="orderHistory_table_tr2">
            <td><a href="/hotSalt/orderHistoryDetail/${order.order_id }">${order.order_id }</a></td>
            <td><fmt:formatDate pattern="YYYY년 MM월 DD일 HH:mm:ss" value="${order.logtime }"/></td>
            <td>${order.name }</td>
            <td>${order.price }</td>
            <td>${order.status }</td>
            <td>${order.tax_ref }</td>
            <td>${order.buyer }</td>
            <td style="border-right: none;">${order.receiver }</td>
        </tr>
        </c:forEach>
    </table>
    <div style="margin: 0 auto;border-top: 1px solid #c3c3c3;
    width: 900px;
    height: 30px;
    background-color: #efefef;"></div>
    <jsp:include page="footer.jsp"></jsp:include>
        
	<!-- JS Files -->
	
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/active.js"></script>
	<script src="js/member.js"></script>

</body>

</html>