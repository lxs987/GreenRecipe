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
  		${sessionScope.sellerSession.seller_id} </b>
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
        	${sessionScope.sellerSession.seller_id} 판매자님 , &nbsp;&nbsp;&nbsp; 전체 레시피 목록입니다.
        </b></font></p>
    </div>
			

		
		

		
		
		
		
		

		
		
		
		
		<br>
		<br>
		<br>

				
				
				
				
		
		
		 <center>
  			<font size="5" color="#696969"><b> 레시피 목록 </b>
 			 </font>
 		 </center>
<br>
	   <hr style="border: outset 2px;" width="70%">
		<br>




	<table border="0" align="center"  padding="5% 5% 5% 5%" >

		<colgroup>
			<col width="20%">
			<col width="20%">
			<col width="30%">
			<col width="10%">
			<col width="10%">
			
		
	<th> <font size="4" color="#57AD5F"><b>레시피 번호</b></font>
</th>
	<th> <font size="4" color="#57AD5F"><b>이미지</b></font>
</th>
	<th> <font size="4" color="#57AD5F"><b>이름</b></font>
</th>
	<th> <font size="4" color="#57AD5F"><b>추천수</b></font>
</th>
	<th> <font size="4" color="#57AD5F"><b>가격</b></font>
</th>
	
	
	<tbody >
		<c:forEach var="imsi" items="${recipelist}" >
		

		<tr>
					<td>
				${imsi.recipe_num} 		
			</td>
			<td >
			<img src="images/${imsi.recipe_image}" width=200px height=200px>
			</td>
			<td width=15%>
			${imsi.recipe_name}
			</td>
					<td>
			${imsi.recipe_reco}
			</td>
							<td>
			${imsi.recipe_price}
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
		
		
		
		
		

 <jsp:include page="footer.jsp" />

</body>
</html>