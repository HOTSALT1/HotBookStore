<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>Home | Books Library eCommerce Store</title>
	<meta name="description" content="">
	<meta name="viewport" content="wclassth=device-wclassth, initial-scale=1">

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
		<span class="ODB">주문내상품정보</span><span>주문번호 : </span><span style="color: #f56a6a; font-weight: 500;">14657435435</span>
	</div>
	<div style="border-top:2px solid #f56a6a; width: 900px; margin: 0 auto;margin-bottom:5px; margin-top: 10px;"></div>
	<table class="orderHistory_table">
         <tr class="orderHistory_table_tr1">
            <td style="width: 15%;">상태</td>
            <td style="width: 45%;">상품명</td>
            <td style="width: 10%;">수량</td>
            <td style="width: 15%;">적립포인트</td>
            <td style="width: 15%; border-right: none;">가격</td>
        </tr>
        <tr class="orderHistory_table_tr2">
            <td>주문대기</td>
            <td>현식19금</td>
            <td>1</td>
            <td>100P</td>
            <td style="border-right: none;">1000원</td>
       	 </tr>
    </table>
    <table class="orderHistory_table">
         <tr class="orderHistory_table_tr1">
        	<td colspan="2" rowspan="2"span style="width: 55%;">합계</td>
          	<td style="width: 15%;">수량</td>
            <td style="width: 15%;">적립포인트</td>
            <td style="width: 15%; border-right: none;">가격</td>
        </tr>
        <tr class="orderHistory_table_tr1">
          	<td>1</td>
            <td>100p</td>
            <td style="border-right: none;">1000원</td>
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
            <td class="width30">124125156</td>
            <td class="tr_gray width20">주문일자</td>
            <td class="width30" style="border-right: none;">2020.04.01</td>
        </tr>
        <tr class="orderHistory_table_tr3">
            <td class="tr_gray">주문하신 분</td>
            <td >김현식</td>
            <td class="tr_gray" >받으시는 분</td>
            <td style="border-right: none;">김현식</td>
        </tr>
        <tr class="orderHistory_table_tr3">
            <td class="tr_gray">휴대폰 or 일반전화</td>
            <td>01094866416</td>
            <td class="tr_gray">주문일자</td>
            <td style="border-right: none;">2020.04.01</td>
        </tr>
        <tr class="orderHistory_table_tr3">
            <td class="tr_gray">배송 주소</td>
            <td colspan="3" style="text-align: left; padding-left : 20px;">
            	<span>도로명 : </span>서울시 중랑구 면목동 99-30 미소빌리지 502호<br>
           		<span>지번 : </span>서울시 중랑구 면목동 99-30 미소빌리지 502호
           	</td>
        </tr>
        <tr class="orderHistory_table_tr3">
            <td class="tr_gray">배송 메세지</td>
            <td colspan="3">ㅎㅇㅎㅇㅎㅇ</td>
        </tr>
    </table>
    <!-- 결제정보  -->
    <div style="margin: 0 auto; width: 900px; margin-top:30px;">
		<span class="ODB">결제정보</span>
	</div>
	<div style="border-top:2px solid #f56a6a; width: 900px; margin: 0 auto;margin-bottom:5px;margin-top: 10px;"></div>
	<table class="orderHistory_table">
        <tr class="orderHistory_table_tr3">
            <td class="tr_gray width20">총 주문금액</td>
            <td colspan="3" class="text_left p_left20">1000원</td>
        </tr>
        <tr class="orderHistory_table_tr3">
            <td class="tr_gray width20">실제 결제금액</td>
            <td class="width30 text_left p_left20">1000원</td>
            <td class="tr_gray width20">포인트 총 적립금</td>
            <td class="text_left p_left20"style="border-right: none;">100P</td>
        </tr>
        <tr class="orderHistory_table_tr3">
            <td class="tr_gray font_b">결제하실 금액</td>
            <td colspan="3" class="text_left p_left20"><span style="color :#f56a6a; font-weight: bold;s">1000</span>원</td>
        </tr>
        <tr class="orderHistory_table_tr3">
            <td class="tr_gray">결제 수단</td>
            <td colspan="3" class="text_left p_left20">삼성카드:일시불</td>
        </tr>
        <tr class="orderHistory_table_tr3">
            <td class="tr_gray">승인번호</td>
            <td class="text_left p_left20 width30">12314</td>
            <td class="tr_gray">승인일자</td>
            <td class="text_left p_left20 width30">2020.04.01</td>
        </tr>
    </table>
    <div class="margin0 width900px" style="text-align: center;">
    	<input type="button" value="목록으로">
    </div>
    
    
    <jsp:include page="footer.jsp"></jsp:include>

	<!-- JS Files -->
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/active.js"></script>
	<script src="js/member.js"></script>

</body>

</html>