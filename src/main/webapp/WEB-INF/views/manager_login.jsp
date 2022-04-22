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


<jsp:include page="header.jsp" />








    	<div class="floating"> 

    <table>
    
    <tr>
   	<td>
    <img src="images/remote2.png" width="38px" height="38px">
    <td>
    </tr>
	 
  
  
   	<tr>
   	<td>
    <a href="login" ><font size="3" color="#696969"><b>구매자 로그인</b></font></a>
    <td>
    </tr>
   
    <tr>
    <td>
    <a href="mainpage" ><font size="3" color="#696969"><b>메인 페이지</b></font></a> 
    <td>
    </tr>    
    
    <tr>
    <td>
	<a href="recipe" ><font size="3" color="#696969"><b>레시피 보기<b></b></a>
    <td>
    </tr>
    
   
    <tr>
   	<td>
   	<a href="#" >
    <img src="images/Top.png" width="35px" height="35px">
    </a>
    <td>
    </tr>
    
    </table>
     
    </div>

	

		
		
		







		

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
		
		 <center>
  			<font size="5" color="#696969"><b>Admin Login<br>
  			  </b>
 			 </font>
 		 </center>
		<br>
	
		<form action="manager_loginCheck" method="post" >
		
		 <table border="0" style=" padding: 0% 15% 0% 15%;" >
		<tr>
		<td>
		<input id="id" type="text"  placeholder="ID" 
		name="manager_id"  
		size="32" style="height: 32px" required autofocus> 	
		</td>
		</tr>
		
		<tr>
		<td>
		<input id="password" type="password" 
		name="manager_password" placeholder="PASSWORD"
		 size="32" style="height: 32px" required>
		</td>
		</tr>
		
		<tr>
		<td>
		<input id="code" type="password" 
		name="manager_code"  placeholder="CODE" 
		 size="32" style="height: 32px" required>
		</td>
		</tr>
		
		</table>
		
		<br>
		
		<button type="submit"			
		style=" background-color: #57AD5F;
                border:none;
                color:white;
                border-radius: 5px;
                width:265px;
                height:37px;
                font-size: 12pt;
                margin-top:1px;" >
                	로그인
		</button>
			
		
</form>




</div>























		<br>
		<br>
		<br>

		
		
	
		
		
		
		
		
		
		
		
		
		<br>
		<br>
		<br>


</body>
</html>