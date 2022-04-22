<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type = "text/css">
</style>
<meta charset="UTF-8">
<title>주문이 완료되었습니다</title>
</head>
<body>
<%@include file ="header.jsp" %>
<br><br><br>
<h1 align = "center">주문이 완료되었습니다.</h1>
<br><br>
	<!-- 구매한 상품 -->
	<table border=0 width="70%" align="center">

		<tr>
			<td colspan="4">
				<h3>주문내역 확인</h3>
				
				<hr color="black">
			</td>
		</tr>
		<tr align = "center">
			<td width=25%>이미지</td>
			<td width=35%>주문 상품명</td>
			<td width=20%>운송장번호</td>
			<td width=20%>결제 금액</td>
		</tr>
 		<tr align = "center">
			<td width=25%><img src="img/${itemInfo.item_image}" height=100px width=100px></td>
			<td width=35%>${payInfo.pay_itemName}</td>
			<td width=20%>${payInfo.pay_deliveryNum}</td>
			<td width=20%>${payInfo.pay_price}원</td>
		</tr>
		<tr><td colspan="4">현재 ${userInfo.buyer_name}님은 "${gradeInfo.grade_name}"등급이에요!</td></tr>
		<tr><td colspan="4">이제 주문할 때마다 ${gradeInfo.grade_per}% 씩 적립받을 수 있어요! 앞으로도 그린레시피🥬 많이 이용해주세요🥰</td></tr>
		<tr><td></td></tr>
		<tr><td colspan="4" align = "center">
		<a href="mypage"><input id="mypageButton" type="image" src="img/goMypage.png" height=70px></a>
		</td></tr>
	</table>
</body>
</html>