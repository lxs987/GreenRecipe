<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

</style>
<meta charset="UTF-8">
<title>🧑🏻‍🍳레시피 상세페이지</title>
</head>
<body>
<%@include file ="header.jsp" %>
<br><br><br><br>
<h1>🧑🏻‍🍳 ${recipeInfo.recipe_name} 만들기 🍴</h1>
<br>
<div width="50%">
<img src="images/${recipeInfo.recipe_image}" height="320px">
</div>
<br><br><h2>그린레시피에서 구매 가능한 재료🥬</h2><br>

	<table border="0" width="45%"  align="center">
		<c:forEach var="item" items="${itemList}">
		<tr><td height="10" align="left"><h3>-&emsp;${item.item_name}</h3></td></tr>
		</c:forEach>
		<tr><td align="right"><h2>재료 총 금액: ${totalPrice}원</h2></td></tr>
	</table>
	
		<table width="45%">
			<tr valign="middle">
			
			<td align="right">
			<form name="form" action="recipeCart" method="get">
			<input type="hidden" name="user_num" value="${userInfo.buyer_num}">
			<input type="hidden" name="recipe_num" value="${recipeInfo.recipe_num}">
			<input type = "image" src = "img/cartButton.png" height=65px onclick='location.href="recipeCart";'></form></td>
			
			<td align="right" width="70px"> 
				<!-- 찜하기 -->
				<form action="recipeLikeButton" method="get">
					<input type="hidden" name="itemLike_buyerNum" value="${userInfo.buyer_num}"> 
					<input type="hidden" name="itemLike_itemNum" value="${recipeInfo.recipe_num}">
					<input type="image" src="img/likeButton.png" height=65px onclick='location.href="itemLikeButton";'>
				</form>
			</td>
		
		</tr>
		</table>
		
		
	<!-- 여기부터 상세설명 테이블 -->
	<br><br><br>
	<table border="0" width="50%" align="center">
		<tr>
			<td align="center" bgcolor=#BDBDBD width=100% height=60px>상세설명</td>
		</tr>
		<tr>
			<td colspan="2" align="center"><img src="images/${recipeInfo.recipe_detailImage}" width=100%></td>
		</tr>
		<tr valign="middle">
			<td align="right"><!-- 찜하기 -->
				<form action="recipeReco" method="get">
					<input type="hidden" name="recipe_num" value="${recipeInfo.recipe_num}">
					<input type="image" src="img/reco.png" height=110px onclick='location.href="recipeReco";'>
				</form></td>
		</tr>
	</table>
	
	
</body>
</html>