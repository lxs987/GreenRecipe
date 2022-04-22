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





    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">




    
      
    
    
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/carrots.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="inscss/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="inscss/style.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="inscss/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="inscss/custom.css">



    










</head>

<body>
	<jsp:include page="admin_header.jsp"/>
	
    	<div class="floating"> 

    <table>
    
    <tr>
   	<td>
    <img src="images/remote2.png" width="38px" height="38px">
    <td>
    </tr>
	 
	 	<tr>
  	<td>&nbsp;
  	</td>
  	</tr>
	 
    <tr>
   	<td>
    <font size="3" color="#696969"><b>
  	로그인 ID : </font> 
  	<br>
  	<font size="4" color="#57AD5F"> 
  	${sessionScope.managerSession.manager_id} </b>
	</font>
 	</td>
 	</tr>	
  
      <tr>
    <td>
    <a href="logout" ><font size="3" color="#696969"><b>로그아웃</b></font></a> 
    <td>
    </tr>    
  
  
    	<tr>
   	<td>
    <a href="login" ><font size="3" color="#696969"><b>구매자 로그인</b></font></a>
    <td>
    </tr>
  

  	<tr>
  	<td>&nbsp;
  	</td>
  	</tr>
 
  
    
   
    <tr>
   	<td>
   	<a href="#" >
    <img src="images/Top.png" width="35px" height="35px">
    </a>
    <td>
    </tr>
    <tr>
    </tr>
    </table>
     
    </div>

	
	
	
	<br>
	<br>
	<br>
			
    <div class="footer-copyright">
        <p class="footer-company"><font size="3"><b>
        ${sessionScope.managerSession.manager_id} 관리자님 , &nbsp;&nbsp;&nbsp; 문의 내역입니다.
        </b></font></p>
    </div>
			

	<br>
	<br>
	<Br>

	 
	 
	<div class="help" style="margin: auto;" align="center" >
			<font size="5" color="#696969"><b>고객센터 문의 내역</b></font>
			
			<br>
			<br>
			
			   <hr style="border: outset 2px;" width="82%">
			<br>
			<br>
			
			
				
		<table border=1;
		 style="margin-top: 10px;   text-align:center; padding: 1% 10% 1% 10%;
		 border-spacing: 5px 10px; border: none; " >
		 
		 <colgroup>
			<col width="20%">
			<col width="30%">
			<col width="25%">
			<col width="25%">
		 
			<tr >
			
				<th style="border: none;"><font size="4" color="#57AD5F"><b>문의 번호</b></font></th>
				<th style="border: none;"><font size="4" color="#57AD5F"><b>제목</b></font> &nbsp;
				<font size="3" color="#696969">(클릭 : 내용 보기)</font></th>
				<th style="border: none;"><font size="4" color="#57AD5F"><b>작성자</b></font></th>
				<th style="border: none;"><font size="4" color="#57AD5F"><b>작성 날짜</b></font></th>
				
			</tr>			
			<c:forEach var="imsi" items="${helplist}">
			
			<tr >
				<td><font size="4" color="#696969">${imsi.help_num}</font></td>
				<td><a href="admin_helpContentView?help_num=${imsi.help_num}">
				<font  size="4" color="#696969"><b>${imsi.help_title}</b></font></a></td>
				<td><font  size="4" color="#696969">${imsi.help_buyerId}</font></td>
				<td><font size="4"  color="#696969">${imsi.help_date}</font></td>
			</tr>
			
			
			</c:forEach>
			
		
			<tr>
				<td colspan="5" style="text-align: center">
				<c:forEach var="num" begin="1" end="${repeat}">
					<a href="admin_help?num=${num}">
					<font size="4" color="#57AD5F"><b>[${num}]</b></font></a>
				</c:forEach>
				</td>
			</tr>
		</table>
		
	</div> <br><br>
	

		
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