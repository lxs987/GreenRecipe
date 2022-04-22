<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
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
	font-size: 15pt;
	width: 190px;
	height: 50px;
	align: center;
}

input[type=button] {
	background-color: gray;
	border: none;
	color: white;
	border-radius: 5px;
	font-size: 15pt;
	width: 190px;
	height: 50px;
	align: center;
}
</style>
</head>
<body>
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
  
    <tr><td>
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
	 
	 <br><br>
	
	

	
	
	<div id="helpUpdate" align=center; 
	style="width: 400px;  ">
	
	
	
	<font size="5" color="#696969"><b>문의글 수정하기</b></font>
	<br>
	<Br>
	
	<hr style="border: solid 1px #696969;  ">
	
	<br>
	

	
		<form method="post" action="admin_updateHelp" enctype="multipart/form-data" style="text-align: left">
			<input type="hidden" name="help_num" value="${personalData.help_num}">
			<font size="3" color="#696969"><b>제목</b></font><br><br>
			 <input type="text" size="50" name="help_title" value="${personalData.help_title}"> <br><br>
			 
			 <font size="3" color="#696969"><b>내용</b></font><br><br>
			<textarea name="help_content" rows="15" cols="50">${personalData.help_content}</textarea> <br><br>
			
	
		<hr style="border: solid 1px #696969;  ">
		<br>
			
			<input type="button" onclick="history.back()" value="취소">
			&nbsp;&nbsp;&nbsp; <input type="submit" value="수정">
		</form>
		
	</div> 
	
	<br>	
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		
		
		
		
		

 <jsp:include page="footer.jsp" />
</body>
</html>