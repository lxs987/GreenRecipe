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
  			<font size="5" color="#696969"><b> 판매자 회원 목록 </b>
 			 </font>
 		 </center>

	
		<br>


<div align=center; width="85%"  style=" padding:0% 10% 0% 10%; ">

   <hr style="border: outset 2px; " >
   <br>


	<table border="0" >

		<colgroup>
			<col width="10%">
			<col width="10%">
			<col width="10%">
			<col width="17%">
			<col width="13%">
			<col width="18%">
			<col width="22%">
			


	<tr>
	
	<th width=16%>
	<font size="4" color="#57AD5F"><b> 회원 아이디 </font><br>
	<font size="2" color="#696969">( * 클릭:아이디 변경 )</font></b>
	
	</th>
	
	<th>
	<font size="4" color="#57AD5F"><b> 회원 이름 </b></font>
	</th>
	
	<th>
	<font size="4" color="#57AD5F"><b> 이메일 </b></font>
	</th>
	
	<th>
	<font size="4" color="#57AD5F"><b> 스토어명 </b></font>
	</th>
	
	<th>
	<font size="4" color="#57AD5F"><b> 스토어 주소 </b></font>
	</th>
	
	<th>
	<font size="4" color="#57AD5F"><b> 전화번호 </b></font>
	</th>
	
	
	<th width=30%>
	<font size="4" color="#57AD5F"><b> 판매 권한 상태 </b></font><br>
	<font size="2" color="#696969">( * 클릭 : 권한 변경 )</font></b>
	</th>
	
	
</tr>
	
	<tbody >

	<c:forEach var="imsi" items="${sellerlist}" >
	
		

		<tr>
		
			<td><font size="4" color="#57AD5F"><b>
			<a href= "admin_sellerModifyForm?seller_num=${imsi.seller_num}">${imsi.seller_id}</a></b></font>
			
			</td>

			<td>
			${imsi.seller_name}
			</td>
				
				<td>
			${imsi.seller_email}
			</td>	
				
				<td>
			${imsi.seller_storeName}
			</td>
			
				<td>
			${imsi.seller_storeAddr}
			</td>	
					<td>
			${imsi.seller_phone}
			</td>	
				
				<td > 
	<c:if test="${imsi.seller_access == 0}"><a href="admin_sellerAccess?seller_num=${imsi.seller_num}">
	<font size="4" color="red"><b>판매 관리 미승인</b></font></a> </c:if>

	<c:if test="${imsi.seller_access == 1}"><a href="admin_sellerAccess?seller_num=${imsi.seller_num}">
	<font size="4" color=" #1e48e0"><b>판매 관리 승인</b></font></a> </c:if>
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