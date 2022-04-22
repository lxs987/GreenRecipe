<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">











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






</head>



<body>





<jsp:include page="admin_header.jsp" />








		


	









		<br>
		<br>

		
	
		
		
    <div class="footer-copyright">
        <p class="footer-company"><font size="3"><b>
        ${sessionScope.managerSession.manager_id} 관리자님, &nbsp;&nbsp;&nbsp; 구매자 개인정보 변경 페이지 입니다
        </b></font></p>
    </div>
			

		
		

		
		
		
		
		

		
		
		
		
		<br>
		<br>
		<br>

				
	
		
		


	
	
		
		 <center>
  			<font size="5" color="#696969"><b> 고객 관리 페이지 </b>
 			 </font>
 		 </center>
		<br>
		
		
		
		
		
		
		
		
		
		
		
			<form action="updateBuyer_admin" method="post" >
			
			<div align=center >
			 <table border="0" style=" border-spacing: 20px 20px;  padding: 5% 15% 5% 15%;" >
			
			<tr>
				<td>아이디</td>
				<td>${ buyer.buyer_id }</td>
			</tr>
			
			<tr>
				<td>이름</td>
				<td><input type="text" name="buyer_name" value="${ buyer.buyer_name }" 
				placeholder="새로운 이름을 입력하세요" required></td>
			</tr>

			<tr>
				<td>비밀번호</td>
				<td>
				<input type="password" id="pw1" name="buyer_password" placeholder="비밀번호 변경" required>
				<input type="password" id="pw2" onchange="pwdChk()" placeholder="비밀번호 체크" required>
				<label style="position:absolute;" id="label"></label>

				
				</td>
				
			</tr>
			
			<tr>
			
			<td>이메일</td>							
			
			<td>
			<input type="text" name="buyer_email" placeholder="새 이메일을 입력하세요" 
			value="${ buyer.buyer_email }" required>
			
			</td>
			</tr>
			
			
			<tr>
			
			<td>주소
			<br>
		
				<td><input type="text" name="buyer_addr" value="${ buyer.buyer_addr }" 
				placeholder="새로운 주소를 입력하세요" size="47" required></td>
			
			</td>
			</tr>
			

			<input type="hidden" name="buyer_num" value="${ buyer.buyer_num }"> 

			<tr>
			
				<td colspan="2" align="center">
				<input type="submit" value="수정" 
				style=" background-color: #57AD5F;
                border:none;
                color:white;
                border-radius: 5px;
                width:330px;
                height:40px;
                font-size: 12pt;
                margin-top:40px;"
				>
				</td>
			

				</tr>
			</form>
			
			
			<tr>
					<td colspan="2" align="center">
				
				<input type="submit" value="삭제"
				style=" background-color: #57AD5F;
                border:none;
                color:white;
                border-radius: 5px;
                width:330px;
                height:40px;
                font-size: 12pt;
                margin-top:20px;"
                onclick="location-href='deleteBuyer_admin?buyer_id=${buyer.buyer_id}'">
				
				
				
			
				</td>

			</tr>
			
		</table>
		
		</div>
		
	
		
		
		
		
		
		
		
		<br>
		<br>

		<br>
		<br>
		<br>





		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		


</body>
</html>