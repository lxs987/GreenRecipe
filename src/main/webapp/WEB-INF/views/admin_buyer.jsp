<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">







<!-- 부트스트랩 css 사용 --> 
<link rel="stylesheet" href="/css_CS/bootstrap.css">


<!-- 부트스트랩 js 사용 --> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<script type="text/javascript" src="/insjs/bootstrap.js"></script>

<!-- 합쳐지고 최소화된 최신 CSS --> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"> 
<!-- 부가적인 테마 --> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"> 
<!-- 제이쿼리 --> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<!-- 합쳐지고 최소화된 최신 자바스크립트 --> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>








    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">







    <title>GreenRecipe</title>
    
    
      
    
    
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



    
    
    
    
<style>



   
   
.floating{
 position: fixed; left: 90%; right: 0%; top: 400px; margin-right: 0%; text-align:center; 
 width: 200px; height: 500px
 
 }




   

            
</style>
    
    
    





</head>
<body>





<jsp:include page="admin_header.jsp" />








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
        ${sessionScope.managerSession.manager_id} 관리자님 , &nbsp;&nbsp;&nbsp; 환영합니다.
        </b></font></p>
    </div>
			

		
		

		
		
		
		
		

		
		
		
		
		<br>
		<br>
		<br>

				
				
				
				
				
				
				
				
				
				
		 <center>
  			<font size="5" color="#696969"><b> 구매자 개인정보 변경 </b>
 			 </font>
 		 </center>

	
		<br>

   <hr style="border: outset 2px;" width="82%">
   <br>


	<table border="0" align="center" width="80%"  >

		<colgroup>
			<col width="30%">
			<col width="20%">
			<col width="20%">
			<col width="15%">
			<col width="15%">


	<tr>
	
	<th>
	<font size="4" color="#57AD5F"><b> 회원 아이디 </b></font>
	<font size="3" color="#696969">( * 클릭 : 회원 정보 수정 )</font>
	
	</th>
	
	<th>
	<font size="4" color="#57AD5F"><b> 회원 이름 </b></font>
	<font size="3" color="#696969">( * 클릭 : 리뷰 출력 )</font>
	</th>
	
	<th>
	<font size="4" color="#57AD5F"><b> 전화번호 </b></font>
	</th>
	
	<th>
	<font size="4" color="#57AD5F"><b> 해시태그 </b></font>
	</th>
	
	<th>
	<font size="4" color="#57AD5F"><b> 포인트 </b></font>
	</th>
	
</tr>
	
	<tbody >

	<c:forEach var="imsi" items="${buyerlist}" >
	
	
		
		<tr>
		
			<td>
			<a href= "admin_getBuyerinfo?buyer_id=${imsi.buyer_id}">
			<font size="4" color="#696960"><b>${imsi.buyer_id}</b></font></a>
			<!-- getBuyerinfo 로 여기서 선택한 buyer_id에 해당하는 DB값을 전송함 -->
			</td>

			<td> <a href= "admin_review?buyerNum=${imsi.buyer_num}">
			<font size="4" color="#696960"><b>${imsi.buyer_name}</b></font></a>
			</td>
				
				<td>
			${imsi.buyer_phone}
			</td>	
				
				<td>
			${imsi.buyer_hash}
			</td>
			
				<td>
			${imsi.buyer_point}
			</td>	
				
				
		</tr>
	
	
	
		
	</c:forEach>
	
	</tbody>
	
	</table>



		
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
		<br>
		<br>
		
		
		
		
		

 <jsp:include page="footer.jsp" />

    

</body>
</html>