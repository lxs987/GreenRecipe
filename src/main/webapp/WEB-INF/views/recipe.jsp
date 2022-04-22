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
            
            
            
   /*         input:focus + label, label{
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
*/




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
                font-size: 11pt;
                color:#17201a;
                margin-top:11px;
                margin:9px;
            }

        
            
            							
            button[type=button]{
                background-color: white;
                border: 1px dashed #696969;
                border-radius: 10px;
                width:80pt;
                height:20pt;
                font-size: 11pt;
                color:#17201a;
                margin-top:11px;
                margin:9px;
            }
            
            
       
       
   
   
   
   
   
   
.floating{
 position: fixed; left: 90%; right: 0%; top: 40%; margin-right: 0%; text-align:center; 
 width: 200px; height: 500px;

 
 }


   
   
   
   
  
  
  
.aaa{
     background: #e8ece8;
     padding: 20px 0px;
     position: relative;
}
 .aaa p {
     text-align: center;
     color: #696969;
     font-size: 22px;
}
 .aaa p a{
     color: #ffffff;
}
 .aaa p a:hover{
     color: #b0b435;
} 
  
  
  
  
  
  
  
  
  
  
  
  
  






form{ padding: 10px; }
.circle{
    display: inline-block; /* 영역적용가능해짐 */
    width: 21px; height: 21px;
    border: 1.5px dashed #696969;
    box-sizing: border-box;
    border-radius: 6px; /* 모서리둥글게 처리 */
    position: relative; top: 4px;
    cursor: pointer; /* 마우스 올렸을때 손모양 처리 */
}
.circle:after{
    content: '\2714'; /* 체크박스 특수문자 */
    font-size: 24px; color: #333;
    position: absolute; top: -14px; left: 0;

    opacity: 0; /* 처음엔 안보이게 처리 */
    transition: 0.5s; /* CSS변화에 시간차 처리 */
}


/* input이 체크되면 특수문자 보이게 처리 */
#chk1:checked + .circle:after{ opacity: 1; }
#chk2:checked + .circle:after{ opacity: 1; }
#chk3:checked + .circle:after{ opacity: 1; }
#chk4:checked + .circle:after{ opacity: 1; }
#chk5:checked + .circle:after{ opacity: 1; }
#chk6:checked + .circle:after{ opacity: 1; }
#chk7:checked + .circle:after{ opacity: 1; }
#chk8:checked + .circle:after{ opacity: 1; }
#chk9:checked + .circle:after{ opacity: 1; }
#chk10:checked + .circle:after{ opacity: 1; }
#chk11:checked + .circle:after{ opacity: 1; }
#chk12:checked + .circle:after{ opacity: 1; }


/* 체크박스는 display:none;을 주면 데이터 처리가 안됨 */
#chk1{ position: absolute; left: -999em; }
#chk2{ position: absolute; left: -999em; }
#chk3{ position: absolute; left: -999em; }
#chk4{ position: absolute; left: -999em; }
#chk5{ position: absolute; left: -999em; }
#chk6{ position: absolute; left: -999em; }
#chk7{ position: absolute; left: -999em; }
#chk8{ position: absolute; left: -999em; }
#chk9{ position: absolute; left: -999em; }
#chk10{ position: absolute; left: -999em; }
#chk11{ position: absolute; left: -999em; }
#chk12{ position: absolute; left: -999em; }







  
  
  
  
  
  
  
  
   









            
</style>






<head>
<meta charset="utf-8">


<title>GreenRecipe</title>

<link rel="stylesheet" href="css_CS/style.css">
<!-- 슬라이드 배너 css -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css_CS/bootstrap.min.css">
<link rel="stylesheet" href="css_CS/banner.css">
<link rel="stylesheet" href="css_CS/regist_view.css">
<!-- 슬라이드 배너 작동  -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
<script>
	$(document).ready(function() {
		$(".owl-carousel").owlCarousel({

			items : 1,
			loop : true,
			nav : true,
			dots : true,
			autoplay : true,
			autoplaySpeed : 1000,
			smartSpeed : 1500,
			autoplayHoverPause : true,

		});
	});
</script>




<script type="text/javascript">

	function checkbox(){
		var flag = true;
		
		var values = document.getElementsByname("item_name"); 
	
		for(var i=0; i<values.length; i++){
			values[i] = String 
			
			}
		}
		return flag;
	}


</script>









</head>


<body>



<jsp:include page="header.jsp" />










<br>
<br>
<hr style="border: solid 1px WhiteSmoke; " >


  


    <div class="floating"> 

    <table >
    
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
	<a href="shopping_cart?buyerVO.buyer_num=${sessionScope.userSession.buyer_num}" >
	<font size="3" color="#696969"><b>장바구니</b></font></a>
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


  
  
  
  
  <!-- 슬라이드 바 -->
	<div class="owl-carousel owl-theme">

		<div class="slide slide-1">
			<div class="center_align_re slide-content">

				<a href="best"><h1>베스트</h1></a>
				<p>베스트 재료 추천</p>


			</div>
		</div>
		<div class="slide slide-2">
			<div class="center_align_re slide-content">
				<a href="new"><h1>신상품</h1></a>
				<p>새로 들어온 재료</p>

			</div>
		</div>
		<div class="slide slide-3">
			<div class="center_align_re slide-content">
				<a href="sale"><h1>특가/할인</h1></a>
				<p>할인 상품 보기</p>

			</div>
		</div>
		<div class="slide slide-4">
			<div class="center_align_re slide-content">
				<a href="mypage#mypage_coupon"><h1>이벤트/쿠폰</h1></a>
				<p>쿠폰 보기</p>

			</div>
		</div>
		
				<div class="slide slide-5">
			<div class="center_align_re slide-content">

				<a href="recipe#recipe_choice"><h1>추천 레시피</h1>
				<p>재료에 맞는 요리를 추천해드립니다.</p></a>


			</div>
		</div>
		
	</div>

	<!-- 추천레시피 -->
  
  
  
  
  

  
  <br>
  
  
  
  
  
  
  
  
  
  
  
  
  <br>
  <br>
  <br>
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
    

  
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
      

    <div id = "recipe_choice"></div>
  <center>
  <font size="5" color="#696969"><b> 레시피 조합하기 </b>
  </font>
  </center>
  
  
  
  
 
  <br>
  
  
  <hr style="border: outset 2px;" width="70%">
  

  <br>
  <br>
  
  
  
  
  
  
  
  
  <div align = "center">
  
  
  

  
<%-- 	 		 	<c:set var = "total" value = "0" /> --%>
   	
   	
			
		
		
  
  <%-- <c:set var="1" value="${IR_list[0].itemVO.item_name}" /> --%>
  
  <%-- 	<input type="checkbox" value=" ${IR_list[0].itemVO.item_name}" 
		name=" ${IR_list[0].itemVO.item_name}" > --%>
    	
    	 
   <table border="0" style=" padding: 0% 15% 0% 15%;" >
   	  
   	 
   	 
   	 
   	 
   	 	 <form action="recipe_search" method="post">
<!-- recipe        IR_recipe    	   recipe_search#recipe_search -->
   
   
   
   
   <tr>
   
	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   	 <label for="chk1">					<!-- itemVO.item_name -->
        <input type="checkbox" id="chk1" name="item_name" value="${IR_list[0].itemVO.item_name}" >
     <i class="circle"></i>
        <span class="text"><font size="3">&nbsp;&nbsp;${IR_list[0].itemVO.item_name}
         </font></span>
     </label>
	</td>

	<td>
     <label for="chk2">
        <input type="checkbox" id="chk2" name="item_name" value="${IR_list[1].itemVO.item_name}">
     <i class="circle"></i>
        <span class="text"><font size="3">&nbsp;&nbsp;${IR_list[1].itemVO.item_name}
        </font> </span>
     </label>
	</td>
	
	<td>	
	 <label for="chk3">
        <input type="checkbox" id="chk3" name="item_name" value="${IR_list[14].itemVO.item_name}">
     <i class="circle"></i>
        <span class="text"><font size="3">&nbsp;&nbsp;${IR_list[14].itemVO.item_name}
        </font></span>
     </label>
	</td>

	<td>
	 <label for="chk4">
        <input type="checkbox" id="chk4" name="item_name" value="${IR_list[3].itemVO.item_name}">
     <i class="circle"></i>
        <span class="text"><font size="3">&nbsp;&nbsp;${IR_list[3].itemVO.item_name}
        </font></span>
     </label>
	</td>


		</tr>
	
		<tr>
		
		
	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 <label for="chk5">
        <input type="checkbox" id="chk5" name="item_name" value="${IR_list[4].itemVO.item_name}" >
     <i class="circle"></i>
        <span class="text"><font size="3">&nbsp;&nbsp;${IR_list[4].itemVO.item_name}
        </font></span>
     </label>
	</td>
	
	<td>
	 <label for="chk6">
        <input type="checkbox" id="chk6" name="item_name" value="${IR_list[5].itemVO.item_name}">
     <i class="circle"></i>
        <span class="text"><font size="3">&nbsp;&nbsp;${IR_list[5].itemVO.item_name}
        </font></span>
     </label>
	</td>

	<td>
	 <label for="chk7">
        <input type="checkbox" id="chk7" name="item_name" value="${IR_list[6].itemVO.item_name}">
     <i class="circle"></i>
        <span class="text"><font size="3">&nbsp;&nbsp;${IR_list[6].itemVO.item_name}
        </font></span>
     </label>
	</td>
	
	<td>
	 <label for="chk8">
        <input type="checkbox" id="chk8" name="item_name" value="${IR_list[7].itemVO.item_name}">
     <i class="circle"></i>
        <span class="text"><font size="3">&nbsp;&nbsp;${IR_list[7].itemVO.item_name}
        </font></span>
     </label>
	</td>


	</tr>
	
		<tr>
	
	
	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 <label for="chk9">
        <input type="checkbox" id="chk9" name="item_name" value="${IR_list[8].itemVO.item_name}" >
     <i class="circle"></i>
        <span class="text"><font size="3">&nbsp;&nbsp;${IR_list[8].itemVO.item_name}
        </font></span>
     </label>
	</td>
	
	<td>
	 <label for="chk10">
        <input type="checkbox" id="chk10" name="item_name" value="${IR_list[9].itemVO.item_name}">
     <i class="circle"></i>
        <span class="text"><font size="3">&nbsp;&nbsp;${IR_list[9].itemVO.item_name}
        </font></span>
     </label>
	</td>

	<td>
	 <label for="chk11">
        <input type="checkbox" id="chk11" name="item_name" value="${IR_list[10].itemVO.item_name}">
     <i class="circle"></i>
        <span class="text"><font size="3">&nbsp;&nbsp;${IR_list[10].itemVO.item_name}
        </font></span>
     </label>
	</td>

	<td>
	 <label for="chk12">
        <input type="checkbox" id="chk12" name="item_name" value="${IR_list[11].itemVO.item_name}">
     <i class="circle"></i>
        <span class="text"><font size="3">&nbsp;&nbsp;${IR_list[11].itemVO.item_name}
        </font></span>
     </label>
	</td>

    	</tr>
    	

    	   
    	   
  
    
    
<%--     	<c:set var= "total" value="${total + imsi.itemVO.item_recipeNum}"/> --%>
    	
    	
    	
    	
    	
    	<tr>
    <td colspan="4">
    </td>
    	</tr>
    	
    	
    	<tr>
    <td colspan="4">
    </td>
    	</tr>
    	
    	
    	<tr>
    <td colspan="4">
    </td>
    	</tr>

    	<tr>
    <td colspan="4">
    </td>
    	</tr>


	<!--  	<tr>
	
	
	<td colspan="4" >

 <a href = "recipe#recipe_choice">
 <input type="button" style =" background-color: #696969;
               border:none;
                color:white;
                border-radius: 5px;
                width:500px;
                height:40px;
                font-size: 15pt;
                margin-top:20px;"
                
 value="다시 고르기" id="restart" />
 </a>
 
 		</td>
 
		</tr>
-->
<br>
		<tr>
		
	  	<td colspan="4">
	&nbsp;	
 <button type="submit"  onclick="return checkbox()"
 		style=" background-color: #57AD5F;
                border:none;
                color:white;
                border-radius: 5px;
                width:500px;
                  height:50px;
                font-size: 15pt;
                margin-top:20px;"   >
                레시피 추천
                </button>
         </td>
         
         </tr>
                
	</form>
    
 




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
 
 
 
 
 
 
 
 
 
 
 
 
  <div id = "recipe_search"></div>

 
 

 
  		<center>
  		<font size="5" color="#696969"> <b>추천 레시피</b>
  		</font>
  		</center>
  
  
  
  <br>
  <br>
  <br>
 
  
  
  
   <hr style="border: outset 2px;" width="70%">



 <br>
 <br>
 <br>
 <br>
 <br>
 
 
 
	
	<div>
		<div class="regist_wrap">
			<div class="regist_wrap2">
				<a href="recipeDetail?recipe_num=${recipelist[0].recipe_num}"> <img src="images/${recipelist[0].recipe_image}"></a>
				<div style="width: 250px; margin: auto;">
					<h4 style="margin-top: 20px; font-size: 20px; font-weight: 800;">
						${recipelist[0].recipe_name}
						</h3>
						<h4 style="font-weight: 500; font-size: 18px;"> ❤ 추천수 ${recipelist[0].recipe_reco}</h4>
						<h4 style="font-weight: 500; font-size: 18px;">${recipelist[0].recipe_price} 원</h4>
				</div>
			</div>

			<div class="regist_wrap2">
				<a href="recipeDetail?recipe_num=${recipelist[1].recipe_num}"> <img src="images/${recipelist[1].recipe_image}"></a>
				<div style="width: 250px; margin: auto;">
					<h4 style="margin-top: 20px; font-size: 20px; font-weight: 800;">
						${recipelist[1].recipe_name}
						</h3>
						<h4 style="font-weight: 500; font-size: 18px;"> ❤ 추천수 ${recipelist[1].recipe_reco}</h4>
					<h4 style="font-weight: 500; font-size: 18px;">${recipelist[1].recipe_price} 원</h4>
				</div>
			</div>
			<div class="regist_wrap2">
				<a href="recipeDetail?recipe_num=${recipelist[2].recipe_num}"> <img src="images/${recipelist[2].recipe_image}"></a>
				<div style="width: 250px; margin: auto;">
					<h4 style="margin-top: 20px; font-size: 20px; font-weight: 800;">
						${recipelist[2].recipe_name}
						</h3>
						<h4 style="font-weight: 500; font-size: 18px;"> ❤ 추천수 ${recipelist[2].recipe_reco}</h4>
							<h4 style="font-weight: 500; font-size: 18px;">${recipelist[2].recipe_price} 원</h4>
				</div>
			</div>
		</div>
	</div>
	
	
 
 
 
 
 <br><br>
 
 
 
 
	
	<div>
		<div class="regist_wrap">
			<div class="regist_wrap2">
				<a href="recipeDetail?recipe_num=${recipelist[3].recipe_num}"> <img src="images/${recipelist[3].recipe_image}"></a>
				<div style="width: 250px; margin: auto;">
					<h4 style="margin-top: 20px; font-size: 20px; font-weight: 800;">
						${recipelist[3].recipe_name}
						</h3>
						<h4 style="font-weight: 500; font-size: 18px;"> ❤ 추천수 ${recipelist[3].recipe_reco}</h4>
							<h4 style="font-weight: 500; font-size: 18px;">${recipelist[3].recipe_price} 원</h4>
				</div>
			</div>

			<div class="regist_wrap2">
				<a href="recipeDetail?recipe_num=${recipelist[4].recipe_num}"> <img src="images/${recipelist[4].recipe_image}"></a>
				<div style="width: 250px; margin: auto;">
					<h4 style="margin-top: 20px; font-size: 20px; font-weight: 800;">
						${recipelist[4].recipe_name}
						</h3>
						<h4 style="font-weight: 500; font-size: 18px;"> ❤ 추천수 ${recipelist[4].recipe_reco}</h4>
							<h4 style="font-weight: 500; font-size: 18px;">${recipelist[4].recipe_price} 원</h4>
				</div>
			</div>
			<div class="regist_wrap2">
				<a href="recipeDetail?recipe_num=${recipelist[5].recipe_num}"> <img src="images/${recipelist[5].recipe_image}"></a>
				<div style="width: 250px; margin: auto;">
					<h4 style="margin-top: 20px; font-size: 20px; font-weight: 800;">
						${recipelist[5].recipe_name}
						</h3>
						<h4 style="font-weight: 500; font-size: 18px;"> ❤ 추천수 ${recipelist[5].recipe_reco}</h4>
							<h4 style="font-weight: 500; font-size: 18px;">${recipelist[5].recipe_price} 원</h4>
				</div>
			</div>
		</div>
	</div>
	
	
 
  <br><br>
 
 
 
	
	<div>
		<div class="regist_wrap">
			<div class="regist_wrap2">
				<a href="recipeDetail?recipe_num=${recipelist[6].recipe_num}"> <img src="images/${recipelist[6].recipe_image}"></a>
				<div style="width: 250px; margin: auto;">
					<h4 style="margin-top: 20px; font-size: 20px; font-weight: 800;">
						${recipelist[6].recipe_name}
						</h3>
						<h4 style="font-weight: 500; font-size: 18px;"> ❤ 추천수 ${recipelist[6].recipe_reco}</h4>
							<h4 style="font-weight: 500; font-size: 18px;">${recipelist[6].recipe_price} 원</h4>
				</div>
			</div>

			<div class="regist_wrap2">
				<a href="recipeDetail?recipe_num=${recipelist[7].recipe_num}"> <img src="images/${recipelist[7].recipe_image}"></a>
				<div style="width: 250px; margin: auto;">
					<h4 style="margin-top: 20px; font-size: 20px; font-weight: 800;">
						${recipelist[7].recipe_name}
						</h3>
						<h4 style="font-weight: 500; font-size: 18px;"> ❤ 추천수 ${recipelist[7].recipe_reco}</h4>
							<h4 style="font-weight: 500; font-size: 18px;">${recipelist[7].recipe_price} 원</h4>
				</div>
			</div>
			<div class="regist_wrap2">
				<a href="recipeDetail?recipe_num=${recipelist[8].recipe_num}"> <img src="images/${recipelist[8].recipe_image}"></a>
				<div style="width: 250px; margin: auto;">
					<h4 style="margin-top: 20px; font-size: 20px; font-weight: 800;">
						${recipelist[8].recipe_name}
						</h3>
						<h4 style="font-weight: 500; font-size: 18px;"> ❤ 추천수 ${recipelist[8].recipe_reco}</h4>
							<h4 style="font-weight: 500; font-size: 18px;">${recipelist[8].recipe_price} 원</h4>
				</div>
			</div>
		</div>
	</div>
	
	
 
 
 
 
 
 
 
 
 
 

 <br>
 <br>
 <br>




<!-- form 태그를 이용하여 input type을 hidden 으로 받아서 해결  -->




 <br>
 <br>
 <br>



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 <br>
 <br>
 <br>
 <br>
 <br>

  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
     <!-- Start copyright  -->
    <div class="aaa">
        <p class="aaa"><font color="#57AD5F">GreenRecipe &copy; 2022</font><br>
        <font size="3" color="#696969">주소 : 서울 종로구 돈화문로 26 단성사 307호</font><br>
        <font size="3" color="#696969">고객센터 번호 : 070-7777-77777</font><br>
        &nbsp;&nbsp;&nbsp;<a href="help" ><font size="3" color="#696969"><b>고객센터 문의하기(클릭)</b></font></a> </p>
    </div>

    
    
    
    
    
 <br>
 <br>
 <br>
 <br>
 <br>

  
  


</body>
</html>