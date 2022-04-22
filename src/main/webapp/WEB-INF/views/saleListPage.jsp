<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/banner.css">
<link rel="stylesheet" href="css/regist_view.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<link rel="stylesheet" href="css/style.css">
<head>
<meta charset="UTF-8">
<title>특가/할인</title>
</head>
<body>


	<jsp:include page="header.jsp" />
	<br>
	<br>
	<br>
	<br>
	<div class="container" style="margin-bottom: 60px;">
		<div class="row">
			<div class="col-lg-12">
				<div class="title-all text-center">
					<h1>특가/할인</h1>
				</div>
			</div>
		</div>
	</div>



		<div class="regist_wrap">
		
			<c:forEach var="imsi" items="${salelist}">
			<div class="regist_wrap2">
				<a href="/itemDetail?item_num=${imsi.item_num}"> <img src="images/${imsi.item_image}"></a>
				<div style="width: 250px; margin: auto;">
					<h4 style="margin-top: 20px; font-size: 20px; font-weight: 800;">
						${imsi.item_name}
						</h3>
						<h4 style="font-weight: 500; font-size: 18px;">${imsi.item_per}%
							${imsi.item_price}</h4>
						<h4 style="font-weight: 500; font-size: 18px;">#${imsi.item_hash}</h4>
				</div>
			</div>
			</c:forEach>


		</div>


</body>
</html>