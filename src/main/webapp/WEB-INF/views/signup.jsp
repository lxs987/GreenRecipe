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


function idCheck() {
	var id = $("#id").val()
	$.ajax({
		type:"post",
		url:"Idcheck",
		data:{"id":id},
			success:function(data) {
			if(data==1){
				document.getElementById("id_check").innerHTML = "<span style='color:red;'>이미 있는 아이디입니다.</span>"
			} else {
				$("#id_check").html("<span style='color:#57AD5F;'>사용가능한 아이디입니다.</span>")
			}
		},
		error:function(){
			alert("에러입니다");
		}
	})
}


function pwdChk(){
	var pw1 = $("#pw1").val()
	var pw2 = $("#pw2").val()
	if(pw1 == pw2){
		$("#label").html("<span style='color:#57AD5F;'>비밀번호가 일치합니다.</span>")
	}else{
		$("#pw1").val("") 
		$("#pw2").val("")
		$("#pw1").focus()
		document.getElementById("label").innerHTML = 
						"<span style='color:red;'>비밀번호가 다릅니다</span>"
	}
}

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
    <a href="login" ><font size="3" color="#696969"><b>로그인</b></font></a>
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
		
		
		
			<div align=center >
		
		
		
  			<font size="5" color="#696969"><b> 회원가입 </b>
 			 </font>
 		 
		<br>
		<br>
		<br>
  			 
	<hr style="border: solid 1px #696969;" width="550px" >
	
	<br>
	
			<form action="buyerInsert" method="post" id="buyerInsert"  >
			
		
		
			
			 <table border="0" style=" padding: 0% 15% 0% 15%;" >
			
		<tr>
		<td>
		<font size="2" color="#696969"><b> 아이디 </b>
		</td>
		<td>
		<input type="text" id="id" name="buyer_id" placeholder="아이디를 입력해주세요"  oninput="idCheck()" 
		size="40" style="height: 30px"  required autofocus>
		 <label style="position:absolute;" id="id_check"></label>
		</td>
		</tr>
		
		
		<tr>
		<td>
		<font size="2" color="#696969"><b> 비밀번호 </b>
		</td>
		<td>
		<input type="password" id="pw1" name="buyer_password" 
		placeholder="비밀번호를 입력해주세요" size="40" style="height: 30px" required>
		<label style="position:absolute;" id="label"></label>
		</td>
		</tr>
		
		<tr>
		<td>
		<font size="2" color="#696969"><b> 비밀번호 확인</b>
		</td>
		<td>
		<input type="password" id="pw2" onchange="pwdChk()" 
		placeholder="비밀번호를 다시 입력해주세요" size="40" style="height: 30px" required>
		<br> <label id="label"></label>
		</td>
		</tr>
		
		
		<tr>
		<td>
		<font size="2" color="#696969"><b> 이름 </b>
		</td>
		<td>
		<input type="text" name="buyer_name" placeholder="이름을 입력해주세요" 
		size="40" style="height: 30px" required>
		</td>
		</tr>
		
		
		<tr>
		<td>
		<font size="2" color="#696969"><b> 이메일 </b>
		</td>
		<td>
		<input type="text" name="buyer_email" placeholder="이메일을 입력해주세요" 
		size="40" style="height: 30px" required>
		</td>
		</tr>
		
		
		<tr>
		<td>
		<font size="2" color="#696969"><b> 휴대폰 </b>
		</td>
		<td>
		<input type="text" name="buyer_phone" placeholder="휴대폰 번호를 입력해주세요" 
		size="40" style="height: 30px" required>
		</td>
		</tr>
		
		
		<tr>
		<td>
		<font size="2" color="#696969"><b> 주소 </b>
		</td>
		
		<td>
		<input type="text" readonly id="addr1" name="buyer_addr" 
		size="17" style="height: 30px" required
		placeholder="주소검색을 눌러주세요">
		<input type="text" readonly id="addr2" size="17" style="height: 30px" ><br>
		<input type="text" id="addr3" placeholder="상세주소를 입력하세요"
		size="29" style="height: 30px" >
		<button type="button" onclick="daumPost()"
			style=" background-color: #57AD5F;
                border:none;
                color:white;
                border-radius: 5px;
                width:75px;
                height:33px;
                font-size: 10pt;
                margin-top:15px;" 
		>
		주소검색
		</button>
		</td>
		</tr>
		
		
		
		<tr>
		<td>
		<font size="2" color="#696969"><b> 해시태그 </b>
		</td>
		<td>
		<input type="text" name="buyer_hash" placeholder="해시태그를 입력해주세요" 
		 size="40" style="height: 30px" required>
		</td>
		</tr>
</table>


<br>
<br>
		<input type="reset"  value="다시 작성" 
			style=" background-color: #57AD5F;
                border:none;
                color:white;
                border-radius: 5px;
                width:350px;
                height:40px;
                font-size: 12pt;
                margin-top:1px;">

		<br>
		<br>
			<input type="submit" onclick="register()" value="회원가입"
				style=" background-color: #57AD5F;
                border:none;
                color:white;
                border-radius: 5px;
                width:350px;
                height:40px;
                font-size: 12pt;
                margin-top:1px;"
			>
			
			
	</form>

 </div>

	
		
		
		
		
		
		
		
		
		
		<br>
		<br>
		<br>


</body>
</html>