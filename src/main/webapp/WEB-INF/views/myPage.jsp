<%@page import="com.greenrecipe.main.vo.ItemVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>




<script src="http://cdn.jquerytools.org/1.2.5/jquery.tools.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/regist_view.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- 작성된 후기 스타일 -->
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script>
	$(document).ready(function() {

		$("#report tr:odd").addClass("odd");
		$("#report tr:not(.odd)").hide();
		$("#report tr:first-child").show(); //열머리글 보여주기

		$("#report tr.odd").click(function() {
			$(this).next("tr").toggle();
			$(this).find(".arrow").toggleClass("up");

		});

	});
</script>
<script>
	$(document).ready(function() {

		$("#report3 tr:odd").addClass("odd");
		$("#report3 tr:not(.odd)").hide();
		$("#report3 tr:first-child").show(); //열머리글 보여주기

		$("#report3 tr.odd").click(function() {
			$(this).next("tr").toggle();
			$(this).find(".arrow").toggleClass("up");

		});

	});
</script>
<script>
	$(document).ready(function() {

		$("#report2 tr:odd").addClass("odd");
		$("#report2 tr:not(.odd)").hide();
		$("#report2 tr:first-child").show(); //열머리글 보여주기

		$("#report2 tr.odd").click(function() {
			$(this).next("tr").toggle();
			$(this).find(".arrow").toggleClass("up");

		});

	});
</script>
<style>
#report {
	border-collapse: collapse;
	width: 500px
}

#report h4 {
	margin: 0px;
	padding: 0px;
}

#report th {
	
}

#report td {
	
}

#report tr.odd td {
	background: #fff url(row_bkg.png) repeat-x scroll center left;
	cursor: pointer;
}

#report div.arrow {
	background: transparent url(arrows.png) no-repeat scroll 0px -16px;
	width: 16px;
	height: 16px;
	display: block;
}

#report div.up {
	background-position: 0px 0px;
}
</style>

<!--  버튼 스타일-->
<style>
.btn {
	border: 1px solid lightgrey;
	WIDTH: 120pt;
	HEIGHT: 120pt;
	font-size: 15px;
	border-radius: 12px;
}

.box1 {
	
}

.box2 {
	
}

.box3 {
	
}

.box4 {
	
}

.box5 {
	
}

.box6 {
	
}

.box7 {
	
}

.box8 {
	
}
</style>




</head>

<body>
	<!-- 헤더 -->
	<jsp:include page="header.jsp" />



<br>
<br>
	<hr style="border: solid 1px WhiteSmoke; " >
	<br>
	<br>
	<!--  이름, 추천코드 , 등급 -->
	<div class="container" style="margin-bottom: 60px;">
		<div class="row">
			<div class="col-lg-12">
				<div class="title-all text-center"> <font size="6" color="#57AD5F"><b>${userInfo.buyer_name}</b></font>
					  <font size="6" color="#696969"><b> 님 환영합니다</b></font>
					<h1 style="font-size: 16px; text-align: right;">
				<font color="#696969"><b>	나의	추천코드 : </b></font>
				<font color="#57AD5F"><b>${userInfo.buyer_code}</b></font></h1>
		<p><font color="#57AD5F"><b>${userInfo.buyer_grade} </b></font>등급  &nbsp;&nbsp;/&nbsp;&nbsp;  보유포인트:<font color="#57AD5F"><b>${userInfo.buyer_point}p </b></font></p>
				</div>
			</div>
		</div>
	</div>

	<!-- 메인 버튼 -->

	<div
		style="font-size: 25px; font-weight: 800; margin-top: 40px; color: black; text-align: center;">
		<p>
			
		
			<button id="box1" type="button" class="btn" 
			onclick="location.href='getBuyerinfoId'">
			개인 정보 수정</button>
			<button id="box2" type="button" class="btn">찜한 상품</button>
			<button id="box3" type="button" class="btn">찜한 레시피</button>
	
			<button id="box4" type="button" class="btn">주문 내역</button>
			<button id="box5" type="button" class="btn">작성한 후기</button>
			<button id="box6" type="button" class="btn">문의 내역</button>
		</p>
	</div>
	<script>
		const btnArr = document.getElementsByTagName('button');
		for (let i = 0; i < btnArr.length; i++) {
			btnArr[i].addEventListener('click', function(e) {
				e.preventDefault();
				document.querySelector('.box' + (i + 1)).scrollIntoView(true);
			});
		}
	</script>



<br>
<br>
<br>


<div id=item_like></div>

	<!-- 찜한 상품  -->
	<div class="box2"
		style="font-size: 25px; font-weight: 800; margin-top: 40px; color: black; text-align: center; margin-right: 1100px">찜한
		상품</div>
	<div style="text-align: center; margin-bottom: 100px;">

		<div class="e">
			<table
				style="border-top: 3px solid black; margin: auto; background-color: white; width: 1240px; border-spacing: 15px; border-collapse: separate;">


				<thead>
					<tr>

						<th style="width: 300px">사진</th>
						<th style="width: 200px;">상품명</th>
						<th style="width: 200px;">가격</th>
						<th style="width: 100px;">제거</th>

					</tr>
				</thead>

				<!-- 반복문 시작 -->
				<c:forEach var="imsi" items="${likeItem}">
					<tbody>
						<tr style="border-top: 1px solid lightgrey;">
							<td style="width: 300px">
							<a href="itemDetail?item_num=${imsi.item_num}">
							<img
								style="width: 80px; height: 80px;" src="images/${imsi.item_image}"></a></td>
							<td style="width: 200px"><a href="itemDetail?item_num=${imsi.item_num}">${imsi.item_name}</a></td>
							<td style="width: 200px">${imsi.item_price}원</td>
							<td style="width: 100px"><button id="deleteItem"
									style="border: 1px solid white; background-color: white;"
									onclick="location.href='/deleteItemLike?itemNum=${imsi.item_num}'">
									<img src="img/deleteIcon.png">
								</button></td>
						</tr>

					</tbody>
				</c:forEach>
				<!-- 반복문끝 -->

			</table>
		</div>
	</div>
<br>
<br>
<br>

<div id="recipe_like"></div>
	<!--  찜한 레시피  -->
	<div class="box3"
		style="font-size: 25px; font-weight: 800; margin-top: 40px; color: black; text-align: center; margin-right: 1100px">찜한
		레시피</div>
	<div style="text-align: center; margin-bottom: 100px;">

		<div class="e">
			<table
				style="border-top: 3px solid black; margin: auto; background-color: white; width: 1240px; border-spacing: 15px; border-collapse: separate;">


				<thead>
					<tr>

						<th style="width: 300px">사진</th>
						<th style="width: 200px;">레시피명</th>
						<th style="width: 200px;">총 가격</th>
						<th style="width: 100px;">제거</th>

					</tr>
				</thead>

				<!-- 반복문 시작 -->
				<c:forEach var="imsi" items="${LikeRecipe}">
					<tbody>
						
						<tr style="border-top: 1px solid lightgrey;">
						
							<td style="width: 300px">
							<a href="recipeDetail?recipe_num=${imsi.recipe_num}">
							<img
								style="width: 80px; height: 80px;"
								src="images/${imsi.recipe_image}"></a></td>
							<td style="width: 200px"><a href="recipeDetail?recipe_num=${imsi.recipe_num}">${imsi.recipe_name}</a></td>
							<td style="width: 200px">${imsi.recipe_price}원</td>
							<td style="width: 100px"><button id="deleteItem"
									style="border: 1px solid white; background-color: white;"
									onclick="location.href='/deleteRecipeLike?recipeNum=${imsi.recipe_num}'">
									<img src="img/deleteIcon.png">
								</button></td>
						</tr>

					</tbody>
				</c:forEach>
				<!-- 반복문끝 -->

			</table>
		</div>
	</div>


<br>
<br>
<br>

	




	<!-- 주문내역 -->
	<div class="box4"
		style="font-size: 25px; font-weight: 800; margin-top: 40px; color: black; text-align: center; margin-right: 1100px">
		주문내역</div>
	<div style="text-align: center; margin-bottom: 100px;">
		<div class="e">
			<table
				style="border-top: 3px solid black; margin: auto; background-color: white; width: 1240px; border-spacing: 15px; border-collapse: separate;"
				id="report3">

				<thead>
					<tr>
						<th></th>
						<th style="width: 120px">주문번호</th>
						<th style="width: 120px;">운송장번호</th>
						<th style="width: 200px;">상품명</th>
						<th style="width: 200px;">총금액</th>
						<th style="width: 200px;">배송 상태</th>
						<th style="width: 300px;">주문 날짜</th>
					

					</tr>
				</thead>

				<!-- 반복문 시작 -->

				<c:forEach var="imsi" items="${payList}" varStatus="status">
					<tbody style="margin-bottom: 200px;">
						<tr style="border-top: 1px solid lightgrey;">

							<td><div class="arrow"></div></td>
							<td style="width: 120px">${imsi.pay_num}</td>
							<td style="width: 120px">${imsi.pay_deliveryNum}</td>
							<td style="width: 200px">${imsi.pay_itemName}</td>
							<td style="width: 200px">${imsi.pay_price}</td>
							<td id="state12+${imsi.pay_num}" style="width: 200px">${imsi.pay_deliveryState}
							</td>
							<td style="width: 300px">${imsi.pay_date}</td>
				
						</tr>

						<tr>


							<td></td>
							<td colspan="2">
							<h1 >사진</h1>
							<c:forEach var="paylist"
									items="${payDetail[status.index]}">
									<br>
									<img style="width: 30px; height: 30px;"
										src="img/${paylist.item_image}">
									<br><br>
								</c:forEach></td>

							<td colspan="2">
							<h1>상품명</h1>
							<c:forEach var="paylist"
									items="${payDetail[status.index]}">
									<br>
								${paylist.item_name}
											<br><br>
								</c:forEach></td>

							<td>
							<h1>가격</h1>
							<c:forEach var="paylist"
									items="${payDetail[status.index]}">
									<br>									${paylist.item_price}원
											<br>
												<br>
								</c:forEach></td>
								
							<td colspan="2">
							<h1>후기</h1>
							<c:forEach var="paylist"
									items="${payDetail[status.index]}">
									<br>							

								<button id="inquiryWrite" 
									style="border: 1px solid lightgrey;"
									onclick="location.href='/reviewWritePlace?itemNum=${paylist.item_num}'"
									>후기 작성</button>

											<br>
												<br>
								</c:forEach></td>

						</tr>

					</tbody>

				</c:forEach>

				<!-- 반복문 끝 -->

			</table>
		</div>
	</div>








<br>
<br>
<br>

	<!-- 작성된 후기 -->
	<div class="box5"
		style="font-size: 25px; font-weight: 800; margin-top: 40px; color: black; text-align: center; margin-right: 1100px">작성된
		후기</div>
	<div style="text-align: center; margin-bottom: 100px;">
		<div class="e">

			<table
				style="border-top: 3px solid black; margin: auto; background-color: white; width: 1240px; border-spacing: 15px; border-collapse: separate;"
				id="report">


				<thead>
					<tr>
						<th style="width: 10px"></th>
						<th style="width: 100px">후기번호</th>
						<th style="width: 100px;">별점</th>
						<th style="width: 500px;">작성글</th>
						<th style="width: 100px;">추천수</th>
						<th style="width: 100px;">작성일</th>

					</tr>
				</thead>

				<!-- 반복문 시작 -->

				<c:forEach var="imsi" items="${ReviewList}">
					<tbody style="margin-bottom: 200px;">
						<tr style="border-top: 1px solid lightgrey;">
							<td><div class="arrow"></div></td>
							<td style="width: 100px">${imsi.review_num}</td>
							<td style="width: 100px">${imsi.review_star}</td>
							<td style="width: 500px"><c:choose>

									<c:when test="${fn:length(imsi.review_content) gt 8}">
										<c:out value="${fn:substring(imsi.review_content, 0, 7)}">...
       									 </c:out>
									</c:when>
									<c:otherwise>
										<c:out value="${imsi.review_content}">
										</c:out>
									</c:otherwise>
								</c:choose>...</td>

							<td style="width: 100px">${imsi.review_reco}</td>
							<td style="width: 100px">${imsi.review_date}</td>
						</tr>
						<tr>
							<td colspan="3"><img style="width: 200px; height: 200px;"
								src="img/${imsi.review_image}"></td>
							<td colspan="2">${imsi.review_content}</td>
							<td>

								<button id="delteLike" style="border: 1px solid lightgrey;" onclick="location.href='/deleteReview?reviewNum=${imsi.review_num}'">삭제하기</button>
							</td>
						</tr>
					</tbody>
				</c:forEach>

				<!-- 반복문 끝 -->

			</table>
		</div>
	</div>
<br>
<br>
<br>

<div id="inquiry"></div>
	<!-- 판매자 문의 내역  -->
	<div class="box6"
		style="font-size: 25px; font-weight: 800; margin-top: 40px; color: black; text-align: center; margin-right: 1100px">문의
		내역</div>
	<div style="text-align: center; margin-bottom: 100px;">
		<div class="e">

			<table
				style="border-top: 3px solid black; margin: auto; background-color: white; width: 1240px; border-spacing: 15px; border-collapse: separate;"
				id="report2">


				<thead>
					<tr>
						<th style="width: 10px"></th>
						<th style="width: 50px">문의번호</th>
						<th style="width: 100px;">상품명</th>
						<th style="width: 500px;">문의글</th>
						<th style="width: 100px;">답변여부</th>
						<th style="width: 100px;">작성날짜</th>

					</tr>
				</thead>


				<!-- 반복문 시작 -->
				<c:forEach var="imsi" items="${inquiryList}">
					<tbody style="margin-bottom: 200px;">
						<tr style="border-top: 1px solid lightgrey;">
							<td><div class="arrow"></div></td>
							<td style="width: 50px">${imsi.inquiry_num}</td>
							<td style="width: 100px">${imsi.inquiry_itemName}</td>
							<td style="width: 500px">${imsi.inquiry_content}</td>
							<td style="width: 100px">${imsi.inquiry_answerYN}</td>
							<td style="width: 100px">${imsi.inquiry_date}</td>
						</tr>


						<tr>
							<td></td>
							<td><img style="width: 30px; height: 30px;"
								src="img/curvedArrow.png"></td>
							<td colspan="3">${imsi.inquiry_answerContent}</td>

						</tr>
					</tbody>
				</c:forEach>

				<!-- 반복문 끝 -->

			</table>
		</div>
	</div>



<br>
<Br>
<Br>
<Br>
<br>
<br>
<br>
<br>
<br>
<br>
</body>


</html>