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


    
    
    
    
    
    
    
    
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>    
    
    
 


<script>


function daumPost(){
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
            // 예제를 참고하여 다양한 활용법을 확인해 보세요.
            console.log("선택 : "+data.userSelectedType)
            console.log("로드 : "+data.roadAddress)
            console.log("지번 : "+data.jibunAddress)
            console.log("우편번호 : "+data.zonecode)
        	
            var buyer_addr = ""
            if(data.userSelectedType == 'R'){
            	buyer_addr = data.roadAddress
        	}else{
        		buyer_addr = data.jibunAddress
        	}
            document.getElementById("addr1").value = data.zonecode
            $("#addr2").val(buyer_addr)
            $("#addr3").focus()
        }
    }).open();
}



function register(){
	var id = $("#id").val()
	if(id == ""){
		alert('아이디는 필수 항목입니다!!!!')
		$("#buyer_id").focus()
	}else{
		var buyer_addr = $("#addr1").val()+"/"
					+$("#addr2").val()+"/"
					+$("#addr3").val()
		$("#addr1").val(buyer_addr)
		fo.submit()
	}
    
}


function pwdChk(){
	var pw1 = $("#pw1").val()
	var pw2 = $("#pw2").val()
	if(pw1 == pw2){
		$("#label").html('일치합니다')
	}else{
		$("#pw1").val("") 
		$("#pw2").val("")
		$("#pw1").focus()
		document.getElementById("label").innerHTML = 
						"<span style='color:red;'>불일치</span>"
	}
}

</script>


    
    
    
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
  			<font size="5" color="#696969"><b> 스토어 문의 관리 </b>
 			 </font>
 		 </center>
		
			<br>
		
 <hr style="border: outset 2px;" width="70%">

		
		
		
		
		<br>
		
		
		<form action="updateAnswer" method="post" >
		
			
			
			<div align=center >
			 <table border="0" style=" padding: 1% 15% 1% 15%; border-spacing: 70px 5px; border-collapse: separate;" >
			
			<tr>
				<td><font size="4" color="#696969"><b>문의글 넘버</b></font>
				</td>
				<td><font size="4" color="#696969">${inquiry.inquiry_num }</font>
				</td>
			</tr>
			

			
			
			<tr>
			
			<td><font size="4" color="#696969"><b>구매자 넘버</b></font></td>							
			
			<td>
			<font size="4" color="#696969">${inquiry.inquiry_buyerNum}</font>
			
			</td>
			</tr>
			
			
			
			
		<tr>
			<td><font size="4" color="#696969"><b>상품 이름</b></font>
			</td>
		
			<td>
			<font size="4" color="#696969">${inquiry.inquiry_itemName}</font>
			
			</td>
		</tr>
			
			
		<tr>
			<td><font size="4" color="#696969"><b>문의 내용</b></font>
			</td>
		
			<td>
			<font size="4" color="#696969">${inquiry.inquiry_content}</font>
			
			</td>
		</tr>
			
			
			
			<tr>
					<td><font size="4" color="#696969"><b>날짜</b></font>
			
				</td>
				
				
				<td>
				<font size="4" color="#696969">${inquiry.inquiry_date}</font>
				</td>
			
			</tr>
			
			
			<tr>
					<td><font size="4" color="#696969"><b>답변 여부</b></font>
			
				</td>
				
				
				<td>
				<font size="4" color="#696969">${inquiry.inquiry_answerYN}</font>
				</td>
			
			</tr>
			
			
			<tr>
					<td><font size="4" color="#57AD5F"><b>판매자 답변</b></font>
			
				</td>
				
				
				<td>
			
			<input type=text name="inquiry_answerContent" 
			value="${inquiry.inquiry_answerContent}" required
			size=30>
		
			
				</td>
			
			</tr>
			
				<tr>
		
		<td colspan=2>
			&nbsp;
		</td>
		</tr> 
		<tr>
		
		<td colspan=2>
			<center>
			 <font size="3" color="red"><b>*답변 시 답변 여부가 답변완료로 자동 변경됩니다.</b></font></center>
		</td>
		</tr> 
			 
			
			
			<input type="hidden" name="inquiry_answerYN" value="답변완료"> 
			

			<input type="hidden" name="inquiry_num" value="${inquiry.inquiry_num}"> 

			<tr> 
			
				<td colspan="2" align="center">
				<input type="submit" value="답변하기"
				style=" background-color: #57AD5F;
                border:none;
                color:white;
                border-radius: 5px;
                width:350px;
                height:52px;
                font-size: 12pt;
                margin-top:30px;"
				>
				</td>
	

			</tr>
			
			
			
			
			
			
			
			
		</table>
		
		
		
		
		</div>
		
	</form>
		
		
		
		
		
		
		
		
		
		









	


	
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