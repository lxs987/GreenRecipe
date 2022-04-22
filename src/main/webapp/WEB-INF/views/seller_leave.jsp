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





<jsp:include page="seller_header.jsp" />







	

		
		


	










	
		<br>
		<br>
		<br>

		
	
		
		
    <div class="footer-copyright">
        <p class="footer-company"><font size="3"><b>
        ${sessionScope.sellerSession.seller_id} 판매자님 , &nbsp;&nbsp;&nbsp; 환영합니다.
        </b></font></p>
    </div>
			

		
		

		
		
		
		
		

		
		
		
		
		<br>
		<br>
		<br>

				
				
				
				





		
		 <center>
  			<font size="5" color="#696969"><b> 회원 탈퇴 </b>
 			 </font>
 		 </center>
		
			<br>

	   <hr style="border: outset 2px;" >
	   
	
		 
	<div align="center">
	
	<br>
	
	 <font size="4" color="#696969"><b>${ seller.seller_num }님 그린레시피 판매자 회원을 정말 탈퇴하시겠어요?</font>
	<br><br>
	 <font size="3" color="#57AD5F"><b>*한번 회원을 탈퇴하시면 추후에 복구가 불가능합니다.</b></font>
	
	<br>
	<br>
			
	
	<button type = "button" 
	
			 onclick="location.href='deleteSeller?seller_num=${ seller.seller_num }';  
			 btn();"
	
 		style=" background-color: #57AD5F;
                border:none;
                color:white;
                border-radius: 5px;
                width:500px;
                height:60px;
                font-size: 15pt;
                margin-top:100px;">회원 탈퇴하기</button>
	</div>
  
		
		




<script> 
function btn(){ 
	alert('회원 탈퇴가 완료되었습니다.');
} 

</script>





	


	
	
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
		
		
		
		
		
</div>
 <jsp:include page="footer.jsp" />

</body>
</html>