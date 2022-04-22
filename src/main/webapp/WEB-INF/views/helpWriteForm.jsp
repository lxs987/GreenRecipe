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

</script>
<style type="text/css">
.floating {
	position: fixed;
	left: 90%;
	right: 0%;
	top: 400px;
	margin-right: 0%;
	text-align: center;
	width: 200px;
	height: 500px
}

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
	width: 190px;
	height: 50px;
	align: center;
}

input[type=button] {
	background-color: gray;
	border: none;
	color: white;
	border-radius: 5px;
	font-size: 20pt;
	width: 190px;
	height: 50px;
	align: center;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<div class="floating">
		<table>
			<tr>
				<td><img src="images/remote2.png" width="38px" height="38px"><td>
			</tr>
			<tr>
				<td><a href="signup"><font size="3" color="#696969"><b>회원가입</b></font></a><td>
			</tr>
			<tr>
				<td><a href="mainpage"><font size="3" color="#696969"><b>메인 페이지</b></font></a><td>
			</tr>
			<tr>
				<td><a href="recipe"><font size="3" color="#696969"><b>레시피 보기<b></b></a><td>
			</tr>
			<tr>
				<td><a href="#"><img src="images/Top.png" width="35px" height="35px"></a><td>
			</tr>
		</table>
	</div> <br><br><br>
	<div id="helpwrite" style="width: 400px; margin: 0 auto;">
		<h1>고객센터 문의</h1>
		<form method="post" action="insertHelp2"
			enctype="multipart/form-data" style="text-align: left">
			
			<input type="hidden" name="help_buyerId" value="${buyer.help_buyerId}" >
			<input type="text" size="50" name="help_title"
				placeholder="고객센터 문의 제목을 입력해주세요."> <br><br>
			<textarea name="help_content" rows="15" cols="50"
				placeholder="고객센터 문의 내용을 입력해주세요."></textarea> <br><br>
			<input type="button" value="취소"
			onClick="location.href='${contextPath}/help'">
			&nbsp;&nbsp;&nbsp; <input type="submit" value="문의">
		</form>
	</div> <br><br><br>
</body>
</html>