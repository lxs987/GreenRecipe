<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
 position: fixed; left: 90%; right: 0%; top: 40%; margin-right: 0%; text-align:center; 
 width: 200px; height: 500px
 
 }




   
   
   

            
</style>











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







    <!-- Site Metas -->
    
    <title>Green Recipe</title>
    
    
    
    
    
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
				if($("#cbx_chkAll").is(":checked")) $("input[id=chk]").prop("checked", true);
				else $("input[id=chk]").prop("checked", false);
			});
			
			$("input[id=chk]").click(function() {
				var total = $("input[id=chk]").length;
				var checked = $("input[id=chk]:checked").length;
				
				if(total != checked) $("#cbx_chkAll").prop("checked", false);
				else $("#cbx_chkAll").prop("checked", true); 
			});
		});
		
		

		
	</script>





















</head>


<body>



<jsp:include page="header.jsp" />












  


    <div class="floating"> 

    <table >
    
    <tr>
   	<td>
    <img src="images/remote2.png" width="38px" height="38px">
    </td>
    </tr>
    <tr>
   	<td>
    <font size="3" color="#696969"><b>
  	로그인 ID : </font> 
  	<br>
  	<font size="4" color="#57AD5F"> 
  	${sessionScope.userSession.buyer_id} </b>
	</font>
 	</td>
 	</tr>		 
  
    <tr><td>
   	</td>
   	</tr>
  
   	<tr>
   	<td>
    <a href="mypage" ><font size="3" color="#696969"><b>마이 페이지</b></font></a>
    </td>
    </tr>
   
    <tr>
    <td>
    <a href="#" ><font size="3" color="#696969"><b>베스트 후기</b></font></a> 
    </td>
    </tr>    
    
    <tr>
    <td>
	<a href="recipe" ><font size="3" color="#696969"><b>레시피 선택<b></b></a>
    </td>
    </tr>
    
    <tr>
    <td>
	<a href="#" ><font size="3" color="#696969"><b>쿠폰확인</b></font></a>
    </td>
    </tr>
    
    <tr>
   	<td>
	<a href="#" ><font size="3" color="#696969"><b>이벤트</b></font></a>
    </td>
    </tr>
    
    <tr>
   	<td>
   	<a href="#" >
    <img src="images/Top.png" width="35px" height="35px">
    </a>
    </td>
    </tr>
    
    </table>
     
    </div>












<br>
<br>
<hr style="border: solid 1px WhiteSmoke; " >




<br>
<br>











  
    <!-- Start copyright  -->
    <div class="footer-copyright">
        <p class="footer-company"><font size="3"><b>
        ${sessionScope.userSession.buyer_name}님, &nbsp;&nbsp;&nbsp; 원하시는 재료의 레시피를 찾아봤어요 !
        </b></font></p>
    </div>
    <!-- End copyright  -->





<br>
<br>
<br>


 
  		<center>
  		<font size="5" color="#696969"> <b>추천 레시피</b>
  		</font>
  		</center>
  
  
  
  
  
  
  
  
  
  
  
  <br>
  <br>

 
  
  
  
   
 

 
<table border="0" align="center"  
style=" text-align:center; border-spacing: 150px 20px; border-collapse: separate;"   >

 	 	<tr>
 	 	
 	 	<c:forEach var="imsi" items="${recipelist2}" varStatus="status">
	<c:if test="${status.index%2==0}">


</tr><tr>

	</c:if>


 		<td >
 		
 		<a href="recipeDetail?recipe_num=${imsi.recipe_num}">
 		<img src="images/${imsi.recipe_image}" height=350px; width=350px; ><br>
 		 <h4 style="margin-top: 20px; font-size: 20px; font-weight: 800;">
			${imsi.recipe_name}
		</h4>
			<h4 style="font-weight: 500; font-size: 18px;"> ❤ 추천수 ${imsi.recipe_reco}</h4>
			<h4 style="font-weight: 500; font-size: 18px;">${imsi.recipe_price} 원</h4>
			<br>
 		</a>

 		</td>
 		
 		 </c:forEach>
	</tr>

 
 </table>

 
 
 
 
 
 <br>
 <br>
 <br>
 
 
 
 
 
 

 
<table border="0" align="center" cellspacing="30">



	





		
 	
 
 </table>
 
 
 
 
 
 
 
 
 
 
 












 
 <br>
 <br>
 <br>




<hr style="border: solid 1px WhiteSmoke; " >



 <br>


	







    <!-- Start Instagram Feed  -->
    <div class="instagram-box">
        <div class="main-instagram owl-carousel owl-theme">
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/beef.jpg" alt="" />
                    <div class="hov-in">
                        <a href="best"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/honey.jpg" alt="" />
                    <div class="hov-in">
                        <a href="best"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/greenonion.jpg" alt="" />
                    <div class="hov-in">
                        <a href="best"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>

            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/cabbage.jpg" alt="" />
                    <div class="hov-in">
                        <a href="best"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/sprouts.jpg" alt="" />
                    <div class="hov-in">
                        <a href="best"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/radishes.jpg" alt="" />
                    <div class="hov-in">
                        <a href="best"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/mussel.jpg" alt="" />
                    <div class="hov-in">
                        <a href="best"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/egg.jpg" alt="" />
                    <div class="hov-in">
                        <a href="best"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/pork.jpg" alt="" />
                    <div class="hov-in">
                        <a href="best"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Instagram Feed  -->








 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 <jsp:include page="footer.jsp" />

    
    
    
    
    















  
  
  















    <!-- ALL JS FILES -->
    <script src="insjs/jquery-3.2.1.min.js"></script>
    <script src="insjs/popper.min.js"></script>
    <script src="insjs/bootstrap.min.js"></script>
    <!-- ALL PLUGINS -->
    <script src="insjs/jquery.superslides.min.js"></script>
    <script src="insjs/bootstrap-select.js"></script>
    <script src="insjs/inewsticker.js"></script>
    <script src="insjs/bootsnav.js."></script>
    <script src="insjs/images-loded.min.js"></script>
    <script src="insjs/isotope.min.js"></script>
    <script src="insjs/owl.carousel.min.js"></script>
    <script src="insjs/baguetteBox.min.js"></script>
    <script src="insjs/form-validator.min.js"></script>
    <script src="insjs/contact-form-script.js"></script>
    <script src="insjs/custom.js"></script>
  
  
  
  
  

		



</body>
</html>