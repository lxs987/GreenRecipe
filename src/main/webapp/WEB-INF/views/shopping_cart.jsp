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
 position: fixed; left: 90%; right: 0%; top:40%; margin-right: 0%; text-align:center; 
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




<br>
<br>
<hr style="border: solid 1px WhiteSmoke; " >


  



    <div class="floating"> 

    <table>
    
    <tr>
   	<td>
    <img src="images/remote2.png" width="38px" height="38px"><br>
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
	<a href="recipe" ><font size="3" color="#696969"><b>레시피 조합<b></b></a>
    </td>
    </tr>
    
    <tr>
    <td>
	<a href="mypage#mypage_coupon" ><font size="3" color="#696969"><b>쿠폰확인</b></font></a>
    </td>
    </tr>
    
    
       <tr>
    <td>
    <a href="help" ><font size="3" color="#696969"><b>고객센터</b></font></a> 
    </td>
    </tr>  
    
    <tr>
   	<td>
	&nbsp;
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
	
	
	
	
	
	
	


  
    <!-- Start copyright  -->
    <div class="footer-copyright">
        <p class="footer-company"><font size="3"><b>
        ${sessionScope.userSession.buyer_name}님, 재료는 한번 더 체크 !
        </b></font></p>
    </div>
    <!-- End copyright  -->




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



<br>











































  <table border="0" align="center" >
  <td>

  <font size="5" color="#696969"><b> 장바구니  </b></font>

  <td>
  </table>


  <br>
 

   
   
   
   

   
  <div border="0" style=" padding: 0% 15% 0% 15%" cellspacing="2">
  
  
  	<table border="0" align="center" width=100%>
		<colgroup>
			<col width="15%">
			<col width="20%">
			<col width="28%">
			<col width="17%">
			<col width="12%">
			<col width="8%">
  	
    	<tr>
  	

	<td>
	 <font size="3" color="#696969"><b>
	 선택
	 </b></font>
	</td>
	
	<td>
	 <font size="3" color="#696969"><b>
	 이미지
	 </b></font>
	</td>
	
	<td>
	 <font size="3" color="#696969"><b>
	 상품명
	 </b></font>
	</td>
	
	<td>
	 <font size="3" color="#696969"><b>
	 수량
	 </b></font>
	</td>
	
	<td>
	 <font size="3" color="#696969"><b>
	 가격
	 </b></font>
	</td>
	
	<td>
	 <font size="3" color="#696969"><b>
	 상품 삭제
	 </b></font>
	</td>
	
	
	</tr>
   
   </table>
   
   
   </div>
  
  
  
  
  
  
	<hr style="border: outset 2px;" width="70%">
	
	

   
   
   
   
   
   
   
   

   
   <br>
   <br>
   
   
   
   
   
   
   
   
   
   

   
   
   
   
   
    <div border="0" style=" padding: 0% 15% 0% 15%" align="center">
   
   
   
		<table border="0" style=" padding: 0% 15% 0% 15%" >
   
   	<colgroup>
			<col width="10%">
			<col width="25%">
			<col width="25%">
			<col width="10%">
			<col width="15%">
			<col width="10%">
  	
   
   
   
  			 
  
   
 			 		 	<c:set var = "total" value = "0" />
   	
   	
 				<c:forEach var="imsi" items="${IR_list}" varStatus="status">
   
   
		<form action="pay?item_num=${imsi.cartVO.cart_id}" name="cart" method="post">
   
   
   	<tr>

	<td  padding="30px" >
	<input type=checkbox  name="checkbox" id="chk" value="${imsi.cartVO.cart_id}" style="zoom:2.3;">


	</td>
	<td width="20%">
	<img src="images/${imsi.itemVO.item_image}" height=150px; width=150px;>
	
  	</td>

  	
  	<td width="32%">
	<font size="4" color="#696969"> ${imsi.itemVO.item_name}  </font>
	</td>
	
	
	<td width="15%">
	<font size="4" color="#696969"> ${imsi.cartVO.cart_count} </font>
	</td>
	
	
	<td width="15%">
	<font size="4" color="#696969">${imsi.cartVO.cart_price}   </font>
	</td>
	

	<td width="10%">
	<a href = "IR_deleteCart?cartVO.cart_id=${imsi.cartVO.cart_id}">
	<img src="images/trash.png" width=30px height=30px />
	</a>
	</td>
<%-- <a href = "IR_deleteCart?cartVO.cart_id=${imsi.cartVO.cart_id}"> --%>
  
  	</tr>
      
      
   
      
      			<c:set var= "total" value="${total + imsi.cartVO.cart_price}"/>
            
  </c:forEach>
 

  


	</table>
  	
  
  
  </div>
  
  
  
  
  
  
  
  
  
  	<br>
  	<br>
  	<br>
  	
  	
  	
  	
  	
  	
  	
  
  	
	<hr style="border: outset 2px;" width="70%">
  
  
  
  






     
  <div border="0" style=" padding: 0% 15% 0% 15%" cellspacing="2" align="left">
  
  	<table  >
    <tr>
  	

	<td padding="20px">
	<input type=checkbox id="cbx_chkAll" name="all_check"  value='all_select'
	 style="zoom:2.0"; >
	 
	
	
	
	
	</td>
	
	<td >
	 <font size="3" color="#696969"><b> 전체 선택 / 선택 해제  </b></font>
	</td>
	
	</tr>
   
   </table>
   
   

 
   
  <table border="0" align="right" style=" padding: 0% 15% 0% 15%" >
  
  
  <tr> 
  <td colspan="2">
   <font size=2" color="#696969"><b>   * 전체 상품 주문 시 </font></b>
   </td>
  </tr>
  
  
  
 	<tr> 
  <td>
  <font size="4" color="#696969"><b> 총 금액  :  </b></font>
  </td>
  
  <td>
  <font size="4" color="#696969"><b>  
  <c:out value="${total}"/>
  
  </b></font>
  </td>
  
  <td>
  <font size="4" color="#696969"><b>  원  </b></font>
  </td>
  </tr>
  
  
  
  
  
  <!--  
  <tr>
  	
  	<td> <font size="4" color="#696969"><b>선택된 상품 금액&nbsp; : &nbsp; </b></font> 
  </td>
  
  <td>
  <input type="text" name="cart_price" readonly>
  </td>
  
  <td>원
  </td>
  
  
  -->
  
  
  
  
  
  
  
  </tr>
  
  </table>
   
  
   
  <br>
  <br>
  <br>
  
  
 
    </div>
 
 
 
  
 
	<div align="center">
	<input type="submit" value="결제하기"
 		style=" background-color: #57AD5F;
                border:none;
                color:white;
                border-radius: 5px;
                width:30%;
                height:50px;
                font-size: 15pt;
                margin-top:100px;">
	</div>
  

  
  
  </form>

  
  
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>

  
  
  
  
  
  
  
  




 
 
 <jsp:include page="footer.jsp" />

    
















  
  <br>
  <br>
  <br>


  
  
  















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