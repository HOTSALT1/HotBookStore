<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
   		#orderHistory_table{
    	width: 900px;
   		margin: 0 auto;
   		margin-bottom:10px;
   		border-bottom:none;
   		}
   		#orderHistory_table_tr1{
   		height:35px;
   		border-top:1px solid #c3c3c3;
   		border-bottom:1px solid #c3c3c3;
   		}
   		#orderHistory_table_tr1 td{
   		background-color: #efefef;
	    text-align: center;
	    border: none;
	    padding: 0;
	    border-right: 1px solid #c3c3c3;
   		}
   		#orderHistory_table_tr2{
   		height:35px;
   		border-bottom: 1px solid #e6e4e4;
   		}
   		#orderHistory_table_tr2 td{
	    text-align: center;
	    border: none;
	    padding: 0;
	    }
	    #orderHistorytitle{margin: 0 auto; width:900px;}
   		.ODB{border: 1px solid #c3c3c3;
		    background-color: #efefef;
		    border-radius: 7px;
		    width: 113px;
		    display: inline-block;
		    text-align: center;
		    margin-right: 15px;}
    </style>
</head>
<body style="margin: 0 auto;">
<jsp:include page="navbar.jsp"></jsp:include>
<div style="border-top:1px solid #e6e6e6; width: 100%; margin-top:90px; margin-bottom:100px;"></div>
	<h4 id="orderHistorytitle">주문내역</h4>
	<div style="width: 900px; margin: 0 auto;margin-bottom:5px;margin-top: 20px;"></div>
	<div style="margin: 0 auto; width: 900px;">
		<span class="ODB">주문내상품정보</span><span>주문번호 : </span><span style="color: #f56a6a; font-weight: 500;">14657435435</span>
	</div>
	<div style="border-top:2px solid #f56a6a; width: 900px; margin: 0 auto;margin-bottom:5px; margin-top: 5px;"></div>
	<table id="orderHistory_table">
        <tr id="orderHistory_table_tr1">
            <td>주문번호</td>
            <td>주문일자</td>
            <td>주문상품</td>
            <td>주문금액</td>
            <td>수량</td>
            <td>주문상태</td>
            <td>배송조회</td>
            <td>주문자</td>
            <td style="border-right: none;">수령자</td>
        </tr>
        <tr id="orderHistory_table_tr2">
            <td>주문번호</td>
            <td>주문일자</td>
            <td>주문상품</td>
            <td>주문금액</td>
            <td>수량</td>
            <td>주문상태</td>
            <td>배송조회</td>
            <td>주문자</td>
            <td style="border-right: none;">수령자</td>
        </tr>
    </table>
    <div style="margin: 0 auto;border-top: 1px solid #c3c3c3;width: 900px; height: 30px; background-color: #efefef;"></div>
    <div style="border-top:2px solid #f56a6a; width: 900px; margin: 0 auto;margin-bottom:5px;margin-top: 20px;"></div>
	<table id="orderHistory_table">
        <tr id="orderHistory_table_tr1">
            <td>주문번호</td>
            <td>주문일자</td>
            <td>주문상품</td>
            <td>주문금액</td>
            <td>수량</td>
            <td>주문상태</td>
            <td>배송조회</td>
            <td>주문자</td>
            <td style="border-right: none;">수령자</td>
        </tr>
        <tr id="orderHistory_table_tr2">
            <td>주문번호</td>
            <td>주문일자</td>
            <td>주문상품</td>
            <td>주문금액</td>
            <td>수량</td>
            <td>주문상태</td>
            <td>배송조회</td>
            <td>주문자</td>
            <td style="border-right: none;">수령자</td>
        </tr>
    </table>
    <jsp:include page="footer.jsp"></jsp:include>
        
	<!-- JS Files -->
	
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/active.js"></script>
	<script src="js/member.js"></script>

</body>

</html>