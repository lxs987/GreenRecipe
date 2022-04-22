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
  			<font size="5" color="#696969"><b> 판매자 정보 </b>
 			 </font>
 		 </center>
 		 
		<br>

	   <hr style="border: outset 2px;" width="81%">
	   
		<br>
		<br>


<div style="padding: 0% 10% 0% 10%" align=center;>

	<table border="0" align="center"   >

		<colgroup>
			<col width="15%">
			<col width="15%">
			<col width="15%">
			<col width="15%">
			<col width="20%">
			<col width="30%">
	<tr>		
		
	<th> <font size="4" color="#57AD5F"><b>판매자 아이디</b></font>
</th>
	<th> <font size="4" color="#57AD5F"><b>판매자 이름</b></font>
</th>
	<th> <font size="4" color="#57AD5F"><b>스토어 이름</b></font>
</th>
	<th> <font size="4" color="#57AD5F"><b>스토어 주소</b></font>
</th>
	<th><font size="4" color="#57AD5F"><b> 전화번호</b></font>
</th>
	<th> <font size="4" color="#57AD5F"><b>판매 넘버</b></font>
</th>

	
	</tr>
	<tbody >
	
		

		<tr>
			<td>
		<font size="4" color="#696969">	${seller.seller_id} 		</font>
			</td>
			
			<td>
		<font size="4" color="#696969">	${seller.seller_name}</font>
			</td>
			
			<td width=25%>
			<font size="4" color="#696969">${seller.seller_storeName}</font>
			</td>
			
			<td>
			<font size="4" color="#696969">${seller.seller_storeAddr}</font>
			</td>
			
			
			<td>
			<font size="4" color="#696969">${seller.seller_phone}</font>
			</td>
			
			<td>
			<font size="4" color="#696969">${seller.seller_import}</font>
			</td>
			
		
			
		</tr>
		
	
	</tbody>
	</table>






<br>
		
		
<br>
<Br>
<Br>



		
		 <center>
  			<font size="5" color="#696969"><b> 구매자 주문 목록 </b>
 			 </font>
 		 </center>
<br>
	   <hr style="border: outset 2px;" >
		<br>
		 <font size="3" color="red"><b>*주문 목록은 관리자의 승인 시 활성화됩니다.</b></font><br>
		 <br>


	<c:choose>
				<c:when test="${sessionScope.sellerSession.seller_access == 1}">

	<table border="0" align="center"  padding="5% 5% 5% 5%"  >

		<colgroup>
			<col width="18%">
			<col width="17%">
			<col width="15%">
			<col width="15%">
			<col width="15%">
			<col width="20%">
	<tr>		
		
	<th><font size="4" color="#57AD5F"><b> 주문 넘버</b></font>
</th>
	<th><font size="4" color="#57AD5F"><b> 구매자 넘버</b></font>
</th>
	<th> <font size="4" color="#57AD5F"><b>상품 이름</b></font>
</th>
	<th> <font size="4" color="#57AD5F"><b>주문 가격</b></font>
</th>
	<th> <font size="4" color="#57AD5F"><b>주문 상태</b></font>
</th>
	<th> <font size="4" color="#57AD5F"><b>주문 날짜</b></font>
</th>
	
	</tr>
	<tbody >
		<c:forEach var="imsi" items="${paylist}" >
		

		<tr>
			<td>
				${imsi.pay_num} 		
			</td>
			
			<td>
			${imsi.pay_buyerNum}
			</td>
			
			<td width=25%>
			${imsi.pay_itemName}
			</td>
			
					<td>
			${imsi.pay_price}
			</td>
			
				<td>
			${imsi.pay_deliveryState}
			</td>
			
							<td>
			${imsi.pay_date}
			</td>
			
	
			
		</tr>
		
		</c:forEach>
	</tbody>
	</table>


					</c:when>
				<c:otherwise>
						</c:otherwise>
				</c:choose>
		
		
		
		
		
		
		
		
		
		

		
		
		
		
		<br>
		<br>
		<br>

				
				
				
				
		
	




		
		 <center>
  			<font size="5" color="#696969"><b> 스토어 리뷰 관리 </b>
 			 </font>
 		 </center>
		
			<br>

	   <hr style="border: outset 2px;" >
	   
	
		 
	<div align="center">
	
	<br>
	
	 <font size="3" color="red"><b>*리뷰 관리는 관리자의 승인 시 버튼이 활성화됩니다.</b></font><br>
	
	
	
			<c:choose>
				<c:when test="${sessionScope.sellerSession.seller_access == 1}">


	
	<button type = "button" 
	
			onclick="location.href='seller_answer?sellerId=${seller.seller_id}'"
	
 		style=" background-color: #57AD5F;
                border:none;
                color:white;
                border-radius: 5px;
                width:500px;
                height:60px;
                font-size: 15pt;
                margin-top:50px;">판매 관리 시작하기</button>
	</div>
  
		
		
			</c:when>
				<c:otherwise>
						</c:otherwise>
				</c:choose>
		
		
		



		
</div>



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
		
		
		
		


 <jsp:include page="footer.jsp" />

</body>
</html>