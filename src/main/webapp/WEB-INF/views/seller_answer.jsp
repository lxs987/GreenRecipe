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
  			<font size="5" color="#696969"><b> 스토어 문의 목록 </b>
 			 </font>
 		 </center>
 		 
		<br>

	   <hr style="border: outset 2px;" width="84%">
	   
	

<div align=center style=" padding:1% 8% 1% 8%" margin=auto;>

	<table border="0" align="center" style="border-spacing: 1px 15px; border-collapse: separate; " >

		<colgroup>
			<col width="12%">
			<col width="12%">
			<col width="12%">
			<col width="12%">
			<col width="12%">
			<col width="15%">
			<col width="25%">
	<tr>		
		
	<th> <font size="4" color="#696969"><b>문의글 넘버</b></font>
</th>
	<th> <font size="4" color="#696969"><b>구매자 넘버</b></font>
</th>
	<th> <font size="4" color="#696969"><b>상품 이름</b></font>
</th>
	<th> <font size="4" color="#696969"><b>문의 내용</b></font>
</th>
	<th> <font size="4" color="#696969"><b>날짜</b></font>
</th>

	<th> <font size="4" color="#696969"><b>판매자 답변</b></font>
</th>
	<th>
	 <font size="4" color="#57AD5F"><b>
	 답변 여부<br></b>
	 <font size="3" color="red">*(클릭 : 답변하기)</font>
	</font>
</th>


	
	</tr>
	<tbody >
		<c:forEach var="imsi" items="${inquirylist}" >
		

		<tr>
			<td>
			<font size="4" color="#696969">${imsi.inquiry_num} </font>
			</td>
			
			<td>
			<font size="4" color="#696969">${imsi.inquiry_buyerNum}</font>
			</td>
			
			<td >
			<font size="4" color="#696969">${imsi.inquiry_itemName}</font>
			</td>
			
			<td width=22%>
			<font size="4" color="#696969">${imsi.inquiry_content}</font>
			</td>
			
			<td>
			<font size="4" color="#696969">${imsi.inquiry_date}</font>
			</td>
			
			<td  width=22%>
		
			<font size="4" color="#696969">${imsi.inquiry_answerContent}</font>
			</td>
			
			<td width=32%>	
			
	<c:if test="${imsi.inquiry_answerYN eq '미답변'}"><a href ="seller_answer2?inquiry_num=${imsi.inquiry_num}">
	<font size="4" color="red"><b>미답변</b></font></a> </c:if>

	<c:if test="${imsi.inquiry_answerYN eq '답변완료'}"><a href ="seller_answer2?inquiry_num=${imsi.inquiry_num}">
	<font size="4" color=" #1e48e0"><b>답변완료</b></font> </c:if>
		
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
		<br>
		
		
		
		
		

 <jsp:include page="footer.jsp" />

</body>
</html>