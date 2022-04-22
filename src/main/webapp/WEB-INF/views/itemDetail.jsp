<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
</style>

<meta charset="UTF-8">
<title>제품 상세페이지</title>
</head>
<body onload="init();">
<%@include file ="header.jsp" %>
<br><br><br>

			<table border="0" width="70%" align="center">
				<tr height=50px></tr>
				<tr valign="top">
					<td rowspan="8" width=40% align="center"><img src="images/${itemInfo.item_image}" width=330px height=380px></td>
					<td width=5%></td>
					<td align="left"><h2>${itemInfo.item_name}</h2></td>
					
				</tr>
				<tr>
					<td width=5%></td>
					<!-- 정가 출력 -->
					<td><p style="color: gray; text: bold; display: inline;">${itemInfo.item_price}원</p></td>
				</tr>
				<tr>
					<td width=5%></td>
					<td align="left"><p
							style="color: orange; text: bold; display: inline;">${itemInfo.item_per}%</p>
						&emsp; ${itemInfo.item_price - itemInfo.item_price*itemInfo.item_per / 100}원</td>
				</tr>
				<tr valign="top">
					<td width=5%></td>
					<td align="left">${gradeInfo.grade_name}등급&emsp;${gradeInfo.grade_per}% 적립
						│ 개당 ${reward} 원 적립</td>
				</tr>
				<tr valign="middle">
					<td width=5%></td>
					<td align="left" valign="bottom">구매수량</td>
				</tr>

				<tr>
					<td width=5%></td>
					<td align="left">
					<form name="form" action="itemCart" method="get">
					<input type=hidden name="sell_price" value="${itemInfo.item_price - itemInfo.item_price*itemInfo.item_per / 100}">
						<input type="text" name="cart_count" value="1" size="3" onchange="change();"> 
						<input type="button" value=" + " onclick="add();"> 
						<input type="button" value=" - " onclick="del();">
						<input type="hidden" name="cart_buyerNum" value="${userInfo.buyer_num}">
						<input type="hidden" name="cart_itemNum" value="${itemInfo.item_num}">
					</td>
				</tr>
				
				<tr>
					<td colspan="3" align="right"><h3>
							총 주문 금액: <input type="text" name="cart_price" readonly>원&emsp;
						</h3></td>
				</tr>

				<tr>
				
					<td colspan="2" align="right">
					
					<!-- 장바구니 넣기 -->
					<input type = "image" src = "img/cartButton.png" height=65px onclick='location.href="itemCart";'>
					</form>
					</td>
					<td align="center"><!-- 찜하기 -->
					<form action="itemLikeButton" method="get">
					<input type="hidden" name="itemLike_buyerNum" value="${userInfo.buyer_num}">
					<input type="hidden" name="itemLike_itemNum" value="${itemInfo.item_num}">
					<input type = "image" src = "img/likeButton.png" height=65px onclick='location.href="itemLikeButton";'>
					</form> </td>
				</tr>
			</table>
			

	<!-- 여기부터 상세설명 테이블 -->
	<br><br>
	<table border=0 width="70%" align="center">
		<tr>
			<td align="center" bgcolor=#BDBDBD width=50% height=60px>상세설명</td>
			<td align="center" bgcolor=#D8D8D8 width=50% height=60px>후기(${reviewNum})</td>
		</tr>
		<tr>
			<td colspan="2" align="center"><img src="img/${itemInfo.item_detailImage }" width=100%></td>
		</tr>
		<tr>
		<tr>
			<td align="center" bgcolor=#D8D8D8 width=50% height=60px>상세설명</td>
			<td align="center" bgcolor=#BDBDBD width=50% height=60px>후기(${reviewNum})</td>
		</tr>
	</table>
	

	<!-- 여기부터 후기 테이블 -->
	<table border=0 width="70%" align="center">

		<tr>
			<td colspan="5">
				<h3>작성된 후기(${reviewNum})</h3>
				<hr color="black">
			</td>
		</tr>
	</table>
	<table border=0 width="70%" align="center">
	<tr align="center">
			<td width=10%>번호</td>
			<td width=20%>별점</td>
			<td width=30%>내용</td>
			<td width=20%>추천수</td>
			<td width=20%>작성 날짜</td>
		</tr>
			<c:forEach var="review" items="${itemReviewList}">
			<tr align="center">
			<td width=10%>${review.review_num}</td>
			<td width=20%>${review.review_star}</td>
			<td width=30%>${review.review_content}</td>
			<td width=20%>${review.review_reco}</td>
			<td width=20%>${review.review_date}</td>
		</tr>
		<tr>
			<td align="right"><h1>👏🏻</h1></td>
		</tr>
		</c:forEach>
	</table>
	<script language="JavaScript">
		var sell_price;
		var cart_count;

		function init() {
			sell_price = document.form.sell_price.value;
			cart_count = document.form.cart_count.value;
			document.form.cart_price.value = sell_price;
			
			change();
			
		}

		function add() {
			hm = document.form.cart_count;
			cart_price = document.form.cart_price;
			hm.value++;

			cart_price.value = parseInt(hm.value) * sell_price;
		}

		function del() {
			hm = document.form.cart_count;
			cart_price = document.form.cart_price;
			if (hm.value > 1) {
				hm.value--;
				cart_price.value = parseInt(hm.value) * sell_price;
			}
		}

		function change() {
			hm = document.form.cart_count;
			cart_price = document.form.cart_price;

			if (hm.value < 0) {
				hm.value = 0;
			}
			cart_price.value = parseInt(hm.value) * sell_price;
			
		}
		//https://www.blueb.co.kr/?c=1/9&cat=Input%252FButton&p=3&uid=1874
				
	</script>
</body>
</html>