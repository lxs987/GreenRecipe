<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
<meta charset="UTF-8">
<title>그린레시피</title>

<link rel="stylesheet" href="css/style.css">
<!-- 슬라이드 배너 css -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/banner.css">
<link rel="stylesheet" href="css/regist_view.css">
<!-- 슬라이드 배너 작동  -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
<script>
	$(document).ready(function() {
		$(".owl-carousel").owlCarousel({

			items : 1,
			loop : true,
			nav : true,
			dots : true,
			autoplay : true,
			autoplaySpeed : 1000,
			smartSpeed : 1500,
			autoplayHoverPause : true,

		});
	});
</script>

</head>

<body>
	<!-- 헤더 -->
	<jsp:include page="header.jsp" />
	
	
    <br><br>
    <hr style="border: solid 1px WhiteSmoke; " >
    
    
    <br>
	<!-- 슬라이드 바 -->
	<div class="owl-carousel owl-theme">
		<div class="slide slide-4">
			<div class="center_align_re slide-content">

				<a href="recipe"><h1>추천 레시피</h1></a>
				<p>재료에 맞는 요리를 추천해드립니다.</p>


			</div>
		</div>
		<div class="slide slide-1">
			<div class="center_align_re slide-content">

				<a href="best"><h1>베스트</h1></a>
				<p>베스트 상품 추천</p>


			</div>
		</div>
		<div class="slide slide-2">
			<div class="center_align_re slide-content">
				<a href="/"><h1>신상품</h1></a>
				<p>새로 들어온 상품</p>

			</div>
		</div>
		<div class="slide slide-3">
			<div class="center_align_re slide-content">
				<a href="sale"><h1>특가/할인</h1></a>
				<p>할인 상품 소개</p>

			</div>
		</div>
		<div class="slide slide-4">
			<div class="center_align_re slide-content">
				<a href="/"><h1>이벤트/쿠폰</h1></a>
				<p>이벤트 소개</p>

			</div>
		</div>
	</div>

	<!-- 추천레시피 -->
	<br>
	<br>
	<br>
	<br>

	<div class="container" style="margin-bottom: 60px;">
		<div class="row">
			<div class="col-lg-12">
				<div class="title-all text-center">
					<h1>추천 레시피</h1>
					<p>인기 많은 레시피</p>
				</div>
			</div>
		</div>
	</div>
	
	
	<div>
		<div class="regist_wrap">
			<div class="regist_wrap2">
				<a href="recipeDetail?recipe_num=${recipelist[0].recipe_num}"> <img src="images/${recipelist[0].recipe_image}"></a>
				<div style="width: 250px; margin: auto;">
					<h4 style="margin-top: 20px; font-size: 20px; font-weight: 800;">
						${recipelist[0].recipe_name}
						</h3>
						<h4 style="font-weight: 500; font-size: 18px;">❤${recipelist[0].recipe_reco}</h4>
				</div>
			</div>

			<div class="regist_wrap2">
				<a href="recipeDetail?recipe_num=${recipelist[5].recipe_num}"> <img src="images/${recipelist[5].recipe_image}"></a>
				<div style="width: 250px; margin: auto;">
					<h4 style="margin-top: 20px; font-size: 20px; font-weight: 800;">
						${recipelist[5].recipe_name}
						</h3>
						<h4 style="font-weight: 500; font-size: 18px;">❤${recipelist[5].recipe_reco}</h4>
				</div>
			</div>
			<div class="regist_wrap2">
				<a href="recipeDetail?recipe_num=${recipelist[8].recipe_num}"> <img src="images/${recipelist[8].recipe_image}"></a>
				<div style="width: 250px; margin: auto;">
					<h4 style="margin-top: 20px; font-size: 20px; font-weight: 800;">
						${recipelist[8].recipe_name}
						</h3>
						<h4 style="font-weight: 500; font-size: 18px;">❤${recipelist[8].recipe_reco}</h4>
				</div>
			</div>
		</div>
	</div>
	

	<!-- 추천상품 -->
	<br>
	<br>
	<br>
	<br>
	<div class="container" style="margin-bottom: 60px;">
		<div class="row">
			<div class="col-lg-12">
				<div class="title-all text-center">
					<h1>추천 상품</h1>
					<p>인기 많은 상품</p>
				</div>
			</div>
		</div>
	</div>



	<div class="regist_wrap">
		<div class="regist_wrap2">
			<a href="/itemDetail?item_num=${bestlist[0].item_num}"> <img src="images/${bestlist[0].item_image}" ></a>
			<div style="width: 250px; margin: auto;">
				<h4 style="margin-top: 20px; font-size: 20px; font-weight: 800;">
					${bestlist[0].item_name}
					</h3>
<!-- 					<h4 style="font-weight: 500; font-size: 18px;">할인율(ex:30%)<br> -->
					
						${bestlist[0].item_price} 원</h4>
					<h4 style="font-weight: 500; font-size: 18px;">#${bestlist[0].item_hash}</h4>
			</div>
		</div>

		<div class="regist_wrap2">
			<a href="/itemDetail?item_num=${bestlist[1].item_num}"> <img src="images/${bestlist[1].item_image}"></a>
			<div style="width: 250px; margin: auto;">
				<h4 style="margin-top: 20px; font-size: 20px; font-weight: 800;">
					${bestlist[1].item_name}
					</h3>
<!-- 					<h4 style="font-weight: 500; font-size: 18px;">할인율(ex:30%)<br> -->
					
						${bestlist[1].item_price} 원</h4>
					<h4 style="font-weight: 500; font-size: 18px;">#${bestlist[1].item_hash}</h4>
			</div>
		</div>
		<div class="regist_wrap2">
			<a href="/itemDetail?item_num=${bestlist[2].item_num}"> <img src="images/${bestlist[2].item_image}"></a>
			<div style="width: 250px; margin: auto;">
				<h4 style="margin-top: 20px; font-size: 20px; font-weight: 800;">
					${bestlist[2].item_name}
					</h3>
<!-- 					<h4 style="font-weight: 500; font-size: 18px;">할인율(ex:30%)<br> -->
					
						${bestlist[2].item_price} 원</h4>
					<h4 style="font-weight: 500; font-size: 18px;">#${bestlist[2].item_hash}</h4>
			</div>
		</div>
	</div>


	<!-- 특가상품-->
	<br>
	<br>
	<br>
	<br>
	<div class="container" style="margin-bottom: 60px;">
		<div class="row">
			<div class="col-lg-12">
				<div class="title-all text-center">
					<h1>특가상품</h1>
					<p>바겐세일</p>
				</div>
			</div>
		</div>
	</div>



	<div class="regist_wrap">
		<div class="regist_wrap2">
			<a href="/itemDetail?item_num=${salelist[0].item_num}"> <img src="images/${salelist[0].item_image}"></a>
			<div style="width: 250px; margin: auto;">
				<h4 style="margin-top: 20px; font-size: 20px; font-weight: 800;">
					${salelist[0].item_name}
					</h3>
					<h4 style="font-weight: 500; font-size: 18px;">${salelist[0].item_per}%할인!!<br>
						${salelist[0].item_price} 원</h4>
			</div>
		</div>

		<div class="regist_wrap2">
			<a href="/itemDetail?item_num=${salelist[1].item_num}"> <img src="images/${salelist[1].item_image}"></a>
			<div style="width: 250px; margin: auto;">
				<h4 style="margin-top: 20px; font-size: 20px; font-weight: 800;">
					${salelist[1].item_name}
					</h3>
					<h4 style="font-weight: 500; font-size: 18px;">${salelist[1].item_per}%할인!!<br>
							${salelist[1].item_price} 원</h4>
			</div>
		</div>
		<div class="regist_wrap2">
			<a href="/itemDetail?item_num=${salelist[2].item_num}"> <img src="images/${salelist[2].item_image}"></a>
			<div style="width: 250px; margin: auto;">
				<h4 style="margin-top: 20px; font-size: 20px; font-weight: 800;">
					${salelist[2].item_name}
					</h3>
					<h4 style="font-weight: 500; font-size: 18px;">${salelist[2].item_per}%할인!!<br>
							${salelist[2].item_price} 원</h4>
			</div>
		</div>
	</div>

</body>

</html>