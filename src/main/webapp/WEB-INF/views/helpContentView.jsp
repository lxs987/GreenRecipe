<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
function slideClick() {
	$("#first").slideDown('slow')
	$("#modal_wrap").show()
}

function slide_hide() {
	$("#first").slideUp('fast')
	$("#modal_wrap").hide()
}

function rep() {
	let form = {}
	let arr = $("#frm").serializeArray()
	for (i = 0; i < arr.length; i++) {
		form[arr[i].name] = arr[i].value
	}
	$.ajax({
		url: "insertHelpReply",
		type: "POST",
		dataType: "json",
		data: JSON.stringify(form),
		contentType: "application/json; charset=UTF-8",
		success: function(list) {
			alert("성공적으로 답글이 달렸습니다.")
			slide_hide()
			replyData()
		},
		error : function() {
			alert("문제 발생!")
		}
	});
}

function replyData() {
	$.ajax({
		url: "replyData/" + ${personalData.help_num}, 
		type: "GET", 
		dataType: "json",
		success: function(rep) {
			let html = ""
			rep.forEach(function(data) {
				let date = new Date(data.write_date)
				let writeDate = date.getFullYear() + "년" + (date.getMonth() + 1) + "월"
				writeDate += date.getDate() + "일" + date.getHours() + "시"
				writeDate += date.getMinutes() + "분"
				html += "<b>작성일</b> : " + writeDate + "<br>"
				html += "<b>제목</b> : " + data.reply_title + "<br>"
				html += "<b>내용</b> : " + data.reply_content + "<hr> </div>"
			})
			$("#reply").html(html)
		}, error:function() {
			alert('데이터를 가져올 수 없습니다.')
		}
	})
}

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

#modal_wrap {
	display: none;
	position: fixed;
	z-index: 9;
	margin: 0 auto;
	top: 0;
	left: 0;
	right: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.4);
}

#first {
	display: none;
	position: fixed;
	z-index: 10;
	margin: 0 auto;
	top: 30px;
	left: 0;
	right: 0;
	background-color: white;
	height: 700px;
	width: 700px;
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

button[id=button1] {
	background-color: gray;
	border: none;
	color: white;
	border-radius: 5px;
	font-size: 20pt;
	width: 190px;
	height: 50px;
	align: center;
}

button[id=button2] {
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
	background-color: #57AD5F;
	border: solid;
	color: white;
	border-radius: 10px;
	font-size: 12pt;
	width: 120px;
	height: 46px;
}
</style>
</head>


<body onload="replyData()">
	<div id="modal_wrap">
		<div id="first">
			<div style="width: 400px; margin: 0 auto;">
				<form id="frm">
					<input type="hidden" name="help_num" value="${personalData.help_num}"> <h1>답변 작성</h1> <br>
					<input type="text" id="reply_title" size="50" name="reply_title" placeholder="고객센터 답변 제목을 입력해주세요."> <br><br>
					<textarea name="reply_content" id="reply_content" rows="15" cols="50" placeholder="고객센터 답변 내용을 입력해주세요."></textarea> <br><br>
					<button type="button" id="button1" onclick="slide_hide()">취소</button>
					&nbsp;&nbsp;&nbsp; <button type="button" id="button2" onclick="rep()">답글</button>
				</form>
			</div>
		</div>
	</div>
	
	

	<jsp:include page="header.jsp"/>
    <div class="floating"> 

    <table >
    
    <tr>
   	<td>
    <img src="images/remote2.png" width="38px" height="38px">
    </td>
    </tr>
    <tr>
   	<td>
    <font size="3" color="#696969"><b>
  	로그인 ID : </font> 
  	<br>
  	<font size="4" color="#57AD5F"> 
  	${sessionScope.userSession.buyer_id} </b>
	</font>
 	</td>
 	</tr>		 

  
   	<tr>
   	<td>
    <a href="mypage" ><font size="3" color="#696969"><b>마이 페이지</b></font></a>
    </td>
    </tr>
   
    <tr>
    <td>
    <a href="help" ><font size="3" color="#696969"><b>고객센터</b></font></a> 
    </td>
    </tr>    
    
    <tr>
    <td>
	<a href="shopping_cart?buyerVO.buyer_num=${sessionScope.userSession.buyer_num}" >
	<font size="3" color="#696969"><b>장바구니</b></font></a>
    </td>
    </tr>
    
    <tr>
    <td>
	<a href="mypage#mypage_coupon" ><font size="3" color="#696969"><b>쿠폰확인</b></font></a>
    </td>
    </tr>
    
    
    <tr>
   	<td>
   	<a href="#" >
    <img src="images/Top.png" width="35px" height="35px">
    </a>
    </td>
    </tr>
    
    </table>
     
    </div>
	
		
	
	 <br><br><br>
	 
	 <hr style="border: solid 1px WhiteSmoke; " >
	 
	 <br><br><br>


	 
	
	<div id="helpContentview" style="margin: 0 auto;">
	<font size="5" color="#696969"><b>고객 센터 문의</b></font>
	<br>
	<br>
	<br>
	
		<table border=1;
		 style="margin-top: auto;   text-align:center; padding: 0% 3% 0% 3%;
		 border-spacing: 20px 20px; border-left: none; border-right: none;" >
		 
		 	 <colgroup>
			<col width="10%">
			<col width="90%">
		
		 
			<tr>
				<th style="border: none; "><font color="#696969"><b>문의 번호</b></font></th>
				<td>${personalData.help_num}</td>
			</tr>
			<tr>
				<th style="border: none;"><font color="#696969"><b>등록 일자</b></font></th>
				<td>${personalData.help_date}</td>
			</tr>
						<tr>
				<th style="border: none;"><font color="#696969"><b>작성자</b></font></th>
				<td>${personalData.help_buyerId}</td>
			</tr>
			<tr>
				<th style="border: none;"><font color="#696969"><b>문의 제목</b></font></th>
				<td>${personalData.help_title}</td>
			</tr>
			<tr >
				<th style="border: none;"><font color="#696969"><b>문의 내용</b></font></th>
				<td>
				
				${personalData.help_content}
		
				</td>
			</tr>

		</table>
		
		<br>
			<c:choose>
				<c:when test="${sessionScope.userSession.buyer_id == personalData.help_buyerId}">
			
			
			<input type="button" value="수정" onclick="location.href='helpBuyer2?help_num=${personalData.help_num}&help_buyerId=${personalData.help_buyerId}'">
			<input type="button" value="삭제" onclick="location.href='deleteHelp?help_num=${personalData.help_num}'">
			
			</c:when>
				<c:otherwise>
						</c:otherwise>
				</c:choose>
			
			<input type="button" onClick="location.href='help'" value="목록 보기">
			

	
	<br>
	<br>
	<Br><br>
	</div>
	
	
	<font size="5" color="#696969"><b>관리자 답변</b></font><br><br>
	  <hr style="border: outset 2px;" width="800px">
		<div id="reply" style="padding: 0% 30% 0% 30%"><hr style="border: outset 2px;" width="800px"><br>
					</div>
	
				  
				

		
<br>
<Br>
<Br>

</body>
</html>