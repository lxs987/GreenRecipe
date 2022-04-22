<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GreenRecipe</title>
<style>
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
	background-color: #57AD5F;
	border: none;
	color: white;
	border-radius: 5px;
	font-size: 20pt;
	width: 150px;
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
				<td><a href=""><font size="3" color="#696969"><b>고객센터</b></font></a><td>
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
		
		
		
	</div>
	
	
	
	
	 <br><br><br>
	 
	 <hr style="border: solid 1px WhiteSmoke; " >
	 
	 <br><br><br>


	 
	 
	<div class="help" style="margin: auto;">
			<a href="mainpage" ><font size="5" color="#696969"><b>고객 센터</b></font></a>
			
			<br>
			<br>
			<br>
			
			
			
			
		<table border=1;
		 style="margin-top: auto;   text-align:center; padding: 1% 10% 1% 10%;
		 border-spacing: 5px 10px; border-left: none; border-right: none;" >
		 
		 <colgroup>
			<col width="20%">
			<col width="30%">
			<col width="25%">
			<col width="25%">
		 
			<tr >
			
				<th style="border: none;"><font size="3" color="#57AD5F"><b>문의 번호</b></font></th>
				<th style="border: none;"><font size="3" color="#57AD5F"><b>제목</b></font></th>
				<th style="border: none;"><font size="3" color="#57AD5F"><b>작성자</b></font></th>
				<th style="border: none;"><font size="3" color="#57AD5F"><b>작성 날짜</b></font></th>
				
			</tr>			
			<c:forEach var="imsi" items="${helplist}">
			
			<tr >
				<td><font color="#696969">${imsi.help_num}</font></td>
				<td><a href="helpContentView?help_num=${imsi.help_num}">
				${imsi.help_title}</a></td>
				<td><font color="#696969">${imsi.help_buyerId}</font></td>
				<td><font color="#696969">${imsi.help_date}</font></td>
			</tr>
			
			
			</c:forEach>
			
		
			<tr>
				<td colspan="5" style="text-align: center">
				<c:forEach var="num" begin="1" end="${repeat}">
					<a href="help?num=${num}">
					<font size="4" color="#57AD5F"><b>[${num}]</b></font></a>
				</c:forEach>
				</td>
			</tr>
		</table>
		
		
	</div> <br><br>
	
	<div id="helpButton">
		<input type="button" id="write" value="문의 글쓰기" 
		onClick="location.href='helpWriteForm'"
				style=" background-color: #57AD5F;
                border:none;
                color:white;
                border-radius: 5px;
                width:350px;
                height:40px;
                font-size: 12pt;
                margin-top:1px;">
	</div> 
	
	
	<br>
	<br>
	<Br>
	
	
</body>
</html>