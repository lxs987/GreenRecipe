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
        ${sessionScope.managerSession.manager_id} 관리자님 , &nbsp;&nbsp;&nbsp; 전체 레시피 목록입니다.
        </b></font></p>
    </div>
			

		
		

		
		
		
		
		

		
		
		
		
		<br>
		<br>
		<br>

				
				
				
				
		
		
		 <center>
  			<font size="5" color="#696969"><b> 리뷰 목록 </b>
 			 </font>
 		 </center>
<br>
	   <hr style="border: outset 2px;" width="80%">
		<br>





<div style="padding:1% 10% 1% 10%">

	<table border="0" align="center"   >

		<colgroup>
			<col width="15%">
			<col width="15%">
			<col width="18%">
			<col width="22%">
			<col width="15%">
			<col width="15%">
			
		
	<th> <font size="4" color="#57AD5F"><b>리뷰 번호</b></font>
</th>
	<th> <font size="4" color="#57AD5F"><b>상품 번호</b></font>
</th>
	<th> <font size="4" color="#57AD5F"><b>이미지</b></font>
</th>
	
	<th> <font size="4" color="#57AD5F"><b>리뷰 내용</b></font>
</th>
	<th> <font size="4" color="#57AD5F"><b>별점</b></font>
</th>
	<th> <font size="4" color="#57AD5F"><b>작성 날짜</b></font>
</th>
	
	
	<tbody >
		<c:forEach var="imsi" items="${reviewlist}" >
		

		<tr>
					<td>
				${imsi.review_num} 		
			</td>
		
			<td width=15%>
			${imsi.review_itemNum}
			</td>
				<td width=25%>
			<img src="images/${imsi.review_image}" width=200px height=200px>
			</td>
			
					<td>
			${imsi.review_content}
			</td>
							<td>
			${imsi.review_star}
			</td>
			
			
									<td>
			${imsi.review_date}
			</td>
			
		</tr>
		
		</c:forEach>
	</tbody>
	</table>


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
		
		
		
		
		

 <jsp:include page="footer.jsp" />

</body>
</html>