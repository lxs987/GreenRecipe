<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">








    <title>GreenRecipe</title>
    
    
    
 

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
	<hr style="border: solid 1px WhiteSmoke; " >



	











		<br>
		<br>
		<br>
		<br>
		<br>
		
		
		
		<div align = center>
		
  			<font size="5" color="#696969"><b> 판매자 로그인 </b>
 			 </font>
 	
 		 
 		 <br>
 		 <br>
 		 
		
		<form action="seller_loginCheck" method="post" id="login" >
		
		 <table border="0" style=" padding: 0% 15% 0% 15%;" >


	<tr>

	
	<td>
	<input id="id" type="text" name="seller_id" placeholder="아이디를 입력해주세요"
	  size="32" style="height: 35px" required autofocus >
	</td>
	
</tr>


	<tr>

	<td>
	<input id="password" type="password" name="seller_password" placeholder="비밀번호를 입력해주세요"
	size="32" style="height: 35px" required>
	</td>
</tr>



	</table>


<br>

	
		<input type="submit" value="로그인" 
			style=" background-color: #57AD5F;
                border:none;
                color:white;
                border-radius: 5px;
                width:265px;
                height:37px;
                font-size: 12pt;
                margin-top:1px;" >

</form>

			
	
			
			
			 <button type="button" 
			style=" background-color: #57AD5F;
                border:none;
                color:white;
                border-radius: 5px;
                width:265px;
                height:37px;
                font-size: 12pt;
                margin-top:15px;" 
                
                onclick="location.href='signup'"  >
                회원가입
                </button>
			
			
			
			
			
			
			
			
			
			
			
			
			
			
</div>



	<!-- 
		<div align = center>
		
		 <center>
  			<font size="5" color="#696969"><b> Login </b>
 			 </font>
 		 </center>
		
		<br>
		
		<form action="loginCheck" method="post" id="login" >
			<font size="3" color="#696969"><b> 아이디 :&nbsp;&nbsp; </b>
			<input id="id" type="text" name="buyer_id" placeholder="아이디"> 
		<br>	
		<br>
			<font size="3" color="#696969"><b> 비밀번호 : </b>
			<input id="password" type="password" name="buyer_password" placeholder="비밀번호">
			
		<br>
		
		<input type="submit" value="로그인">

 -->



</div>























		<br>
		<br>
		<br>

		
		
	
		
		
		
		
		
		
		
		
		
		<br>
		<br>
		<br>


</body>
</html>