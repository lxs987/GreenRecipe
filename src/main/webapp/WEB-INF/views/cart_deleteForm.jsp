<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>

 
    
<!DOCTYPE html>
<html>



<style>



            form{
                padding:10px;
            }
            
            
            .input-box{
                position:relative;
                margin:10px 0;
            }
            .input-box > input{
                background:transparent;
                border:none;
                border-bottom: solid 1px #ccc;
                padding:20px 0px 5px 0px;
                font-size:14pt;
                width:25%;
            }
            input::placeholder{
                color:transparent;
            }
            input:placeholder-shown + label{
                color:#aaa;
                font-size:14pt;
                top:15px;

            }
            input:focus + label, label{
                color:#8aa1a1;
                font-size:10pt;
                pointer-events: none;
                position: absolute;
                left:38%;
                top:0px;
                transition: all 0.2s ease ;
                -webkit-transition: all 0.2s ease;
                -moz-transition: all 0.2s ease;
                -o-transition: all 0.2s ease;
            }

            input:focus, input:not(:placeholder-shown){
                border-bottom: solid 1px #8aa1a1;
                outline:none;
            }

            
            
            #forgot{
                text-align: right;
                font-size:12pt;
                color:rgb(164, 164, 164);
                margin:10px 0px;
            }
            
            
            
    
    
    								
            input[type=button]{
                background-color: white;
                border: 1px dashed #696969;
                border-radius: 10px;
                width:80pt;
                height:20pt;
                font-size: 10pt;
                color:#17201a;
                margin-top:10px;
                margin:5px;
            }

        
        
        
        
        
        
            input[type="checkbox"]{

		width: 10px;

		height: 10px;

}
            
            
            
            
            
            
            
            
   
   
   
   
   
   
.floating{
 position: fixed; left: 90%; right: 0%; top: 400px; margin-right: 0%; text-align:center; 
 width: 200px; height: 500px
 
 }




   

            
</style>











<head>


<meta charset="UTF-8">


<meta http-equiv="refresh" content="0 ; shopping_cart?buyerVO.buyer_num=${sessionScope.userSession.buyer_num}#cart_return">


<!-- 
<script type="text/javascript">
alert("????????? ?????? ???????????????.")
</script>

 -->


















<!-- ??????????????? css ?????? --> 
<link rel="stylesheet" href="/css_CS/bootstrap.css">


<!-- ??????????????? js ?????? --> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<script type="text/javascript" src="/insjs/bootstrap.js"></script>

<!-- ???????????? ???????????? ?????? CSS --> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"> 
<!-- ???????????? ?????? --> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"> 
<!-- ???????????? --> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<!-- ???????????? ???????????? ?????? ?????????????????? --> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>








    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">







    <!-- Site Metas -->
    
<title>Delete Cart</title>



    
    
    
    
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





















	<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
	
	
	<script type="text/javascript">
	
	
		$(document).ready(function() {
			$("#cbx_chkAll").click(function() {
				if($("#cbx_chkAll").is(":checked")) $("input[name=chk]").prop("checked", true);
				else $("input[name=chk]").prop("checked", false);
			});
			
			$("input[name=chk]").click(function() {
				var total = $("input[name=chk]").length;
				var checked = $("input[name=chk]:checked").length;
				
				if(total != checked) $("#cbx_chkAll").prop("checked", false);
				else $("#cbx_chkAll").prop("checked", true); 
			});
		});
		
		

		
	</script>





















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
    <font size="2" color="#696969"><b>
  	?????? ????????? ID : </font> 
  	<br>
  	<font size="4" color="#57AD5F"> 
  	${sessionScope.userSession.buyer_id} </b>
	</font>
 	</td>
 	</tr>		 
  
    <tr><td>
   	</td></tr>
  
   	<tr>
   	<td>
    <a href="test" ><font size="3" color="#696969"><b>?????? ?????????</b></font></a>
    <td>
    </tr>
   
    <tr>
    <td>
    <a href="#" ><font size="3" color="#696969"><b>????????? ??????</b></font></a> 
    <td>
    </tr>    
    
    <tr>
    <td>
	<a href="recipe" ><font size="3" color="#696969"><b>????????? ??????<b></b></a>
    <td>
    </tr>
    
    <tr>
    <td>
	<a href="#" ><font size="3" color="#696969"><b>????????????</b></font></a>
    <td>
    </tr>
    
    <tr>
   	<td>
	<a href="#" ><font size="3" color="#696969"><b>?????????</b></font></a>
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
	<hr style="border: solid 1px WhiteSmoke; " >



	<br>
	<br>
	
	
	
	
	
	
	


  

    <div class="footer-copyright">
        <p class="footer-company"><font size="3"><b>
        ${sessionScope.userSession.buyer_name}???, &nbsp;&nbsp;&nbsp; ???????????? ????????? ?????????????????????.
        </b></font></p>
    </div>
 








<br>
<br>
<br>
<br>
<br>


  

  	 <div align = "center" >
  	 
  	 <form action = 
  	 "shopping_cart?buyerVO.buyer_num=${sessionScope.userSession.buyer_num}" method="post">
  	 
  	 
 	 <input type="submit" value="??????????????? ????????????" 
 				style=" background-color: #57AD5F;
                border:none;
                color:white;
                border-radius: 5px;
                width:500px;
                height:50px;
                font-size: 15pt;
                margin-top:20px;" >
                
                
 </form>
  	 
		

   </div>





</body>
</html>