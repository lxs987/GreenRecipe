<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	function readURL(input) {
		var file = input.files[0]
		console.log(file)
		if (file != '') {
			var reader = new FileReader();
			reader.readAsDataURL(file);
			reader.onload = function(e) {
				console.log(e)
				console.log(e.target)
				console.log(e.target.result)
				$('#preview').attr('src', e.target.result);
			}
		}
	}
</script>
<style type="text/css">
body {
	margin: 0;
	padding: 0;
}

input[type=text] {
	border-radius: 5px;
	font-size: 12pt;
	width: 400px;
	height: 50px;
}

textarea {
	border-radius: 5px;
	font-size: 12pt;
	width: 400px;
}

input[type=submit] {
	background-color: #57AD5F;
	border: none;
	color: white;
	border-radius: 5px;
	font-size: 20pt;
	width: 150px;
	height: 50px;
	align: center;
}

input[type=button] {
	background-color: gray;
	border: none;
	color: white;
	border-radius: 5px;
	font-size: 20pt;
	width: 150px;
	height: 50px;
	align: center;
}
</style>

<style>
.starpoint_wrap {
	display: inline-block;
}

.starpoint_box {
	position: relative;
	background:
		url(https://hsecode.github.io/images_codepen/codepen_sp_star.png) 0 0
		no-repeat;
	font-size: 0;
}

.starpoint_box .starpoint_bg {
	display: block;
	position: absolute;
	top: 0;
	left: 0;
	height: 18px;
	background:
		url(https://hsecode.github.io/images_codepen/codepen_sp_star.png) 0
		-20px no-repeat;
	pointer-events: none;
}

.starpoint_box .label_star {
	display: inline-block;
	width: 10px;
	height: 18px;
	box-sizing: border-box;
}

.starpoint_box .star_radio {
	opacity: 0;
	width: 0;
	height: 0;
	position: absolute;
}

.starpoint_box .star_radio:nth-of-type(1):hover ~ .starpoint_bg,
	.starpoint_box .star_radio:nth-of-type(1):checked ~ .starpoint_bg {
	width: 10%;
}

.starpoint_box .star_radio:nth-of-type(2):hover ~ .starpoint_bg,
	.starpoint_box .star_radio:nth-of-type(2):checked ~ .starpoint_bg {
	width: 20%;
}

.starpoint_box .star_radio:nth-of-type(3):hover ~ .starpoint_bg,
	.starpoint_box .star_radio:nth-of-type(3):checked ~ .starpoint_bg {
	width: 30%;
}

.starpoint_box .star_radio:nth-of-type(4):hover ~ .starpoint_bg,
	.starpoint_box .star_radio:nth-of-type(4):checked ~ .starpoint_bg {
	width: 40%;
}

.starpoint_box .star_radio:nth-of-type(5):hover ~ .starpoint_bg,
	.starpoint_box .star_radio:nth-of-type(5):checked ~ .starpoint_bg {
	width: 50%;
}

.starpoint_box .star_radio:nth-of-type(6):hover ~ .starpoint_bg,
	.starpoint_box .star_radio:nth-of-type(6):checked ~ .starpoint_bg {
	width: 60%;
}

.starpoint_box .star_radio:nth-of-type(7):hover ~ .starpoint_bg,
	.starpoint_box .star_radio:nth-of-type(7):checked ~ .starpoint_bg {
	width: 70%;
}

.starpoint_box .star_radio:nth-of-type(8):hover ~ .starpoint_bg,
	.starpoint_box .star_radio:nth-of-type(8):checked ~ .starpoint_bg {
	width: 80%;
}

.starpoint_box .star_radio:nth-of-type(9):hover ~ .starpoint_bg,
	.starpoint_box .star_radio:nth-of-type(9):checked ~ .starpoint_bg {
	width: 90%;
}

.starpoint_box .star_radio:nth-of-type(10):hover ~ .starpoint_bg,
	.starpoint_box .star_radio:nth-of-type(10):checked ~ .starpoint_bg {
	width: 100%;
}

.blind {
	position: absolute;
	clip: rect(0, 0, 0, 0);
	margin: -1px;
	width: 1px;
	height: 1px;
	overflow: hidden;
}
</style>
<style>
#myform fieldset{
    display: inline-block; /* ?????? ?????? ??????????????? ?????? ????????? ????????? ?????????.*/
    direction: rtl; /* ????????? ?????? ?????? */
    border: 0; /* ????????? ????????? ?????? */
}
#myform fieldset legend{
    text-align: left;
}
#myform input[type=radio]{
    display: none; /* ??????????????? ?????? */
}
#myform label{
    font-size: 3em; /* ????????? ?????? */
    color: transparent; /* ?????? ????????? ?????? ?????? */
    text-shadow: 0 0 0 #f0f0f0; /* ??? ????????? ?????? ?????? */
}
#myform label:hover{
    text-shadow: 0 0 0 #a00; /* ????????? ?????? */
}
#myform label:hover ~ label{
    text-shadow: 0 0 0 #a00; /* ????????? ?????? ???????????? ???????????? */
}
#myform input[type=radio]:checked ~ label{
    text-shadow: 0 0 0 #a00; /* ????????? ?????? ?????? */
}
</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<br>
	<br>
	<form method="post" action="/reviewWrite" enctype="multipart/form-data">
		<div id="helpWrite" style="width: 400px; margin: 0 auto;">
			<h1>?????? ??????</h1>
			<input type="text" size="50" name="title"
				placeholder=" ${item.item_name}" disabled="disabled"> <br>
			<br>
			<textarea name="review_content" rows="15" cols="50"
				placeholder="?????? ?????? ????????? ??????????????????."></textarea>
			<br> <br>
<input type="hidden" name="review_itemNum" value="${item.item_num}">
		</div>

		<div>
			?????? <input type="file" name="file" multiple />
		</div>
		<br>

		<div class="starpoint_wrap">
			<div class="starpoint_box">
				<label for="starpoint_1" class="label_star" title="0.5"><span
					class="blind">0.5???</span></label> <label for="starpoint_2"
					class="label_star" title="1"><span class="blind">1???</span></label>
				<label for="starpoint_3" class="label_star" title="1.5"><span
					class="blind">1.5???</span></label> <label for="starpoint_4"
					class="label_star" title="2"><span class="blind">2???</span></label>
				<label for="starpoint_5" class="label_star" title="2.5"><span
					class="blind">2.5???</span></label> <label for="starpoint_6"
					class="label_star" title="3"><span class="blind">3???</span></label>
				<label for="starpoint_7" class="label_star" title="3.5"><span
					class="blind">3.5???</span></label> <label for="starpoint_8"
					class="label_star" title="4"><span class="blind">4???</span></label>
				<label for="starpoint_9" class="label_star" title="4.5"><span
					class="blind">4.5???</span></label> <label for="starpoint_10"
					class="label_star" title="5"><span class="blind">5???</span></label>
				<input type="radio" name="review_star" id="starpoint_1"class="star_radio" value=1> 
				<input type="radio" name="review_star"id="starpoint_2" class="star_radio" value=1> 
				<input type="radio"name="review_star" id="starpoint_3" class="star_radio" value=2> 
				<input type="radio" name="review_star" id="starpoint_4" class="star_radio" value=2>
				<input type="radio" name="review_star" id="starpoint_5"class="star_radio" value=3> 
				<input type="radio" name="review_star"id="starpoint_6" class="star_radio" value=3> 
				<input type="radio"name="review_star" id="starpoint_7" class="star_radio" value=4> 
				<input type="radio" name="review_star" id="starpoint_8" class="star_radio"value=4 >
				<input type="radio" name="review_star" id="starpoint_9"class="star_radio" value=5>
				<input type="radio" name="review_star" id="starpoint_10" class="star_radio"value=5> 
					<span
					class="starpoint_bg"></span>
			</div>
		</div>

		<br> <br>
		<div id="helpWritebutton"
			style="width: 400px; margin: 0 auto; text-align: center;">
			<!-- ????????? ????????? main.jsp??? ????????? ??? -->
			<input type="button" value="??????"
				onClick="location.href='${contextPath}/default/main'">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" value="????????????">
		</div>
	</form>
</body>
</html>