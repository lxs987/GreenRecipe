<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<style type="text/css">
* {
	font-family: 'IBM Plex Sans KR', sans-serif;
}

body {
	margin: 0;
	padding: 0;
}

table tbody tr td {
	border-top: 0.5rem solid;
	border-bottom: 0.5rem solid;
	border-left: 0.5rem solid;
	border-right: 0.5rem solid;
	border-color: transparent;
}

.search-container {
	width: 80%;
	display: block;
}

input#search-bar {
	width: 250px;
	height: 25px;
	font-size: 0.8rem;
	border: 2px solid #57AD5F;
	outline: none; &: focus { border : 1px solid #57AD5F;
	transition: 0.35s ease;
	color: #57AD5F; &:: -webkit-input-placeholder { transition : opacity
	0.45s ease;
	opacity: 0;
}

.search-icon {
	position: relative;
	float: center;
	width: 75px;
	height: 75px;
	top: -12px;
	right: -45px;
}

&
::-moz-placeholder {
	opacity: 0;
}

&
:-ms-placeholder {
	transition: opacity 0.45s ease;
	opacity: 0;
}

}
}
.header {
	vertical-align: middle;
}

div#form-wrapper {
	position: absolute;
	width: 50%;
	top: 7%;
	right: 0;
	left: 18%;
}

a:link {
	color: black;
	text-decoration: none;
}

a:visited {
	color: black;
	text-decoration: none;
}

a:hover {
	color: black;
	text-decoration: none;
}

#toc-content {
	display: none;
}

#toc-toggle {
	cursor: pointer;
	color: #000000;
}

#toc-toggle:hover {
	text-decoration: none;
}



   .menu a{cursor:pointer;}
    .menu .hide{display:none;}


</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Header</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap"
	rel="stylesheet">
	
	
	
	
<script type="text/javascript">
	function keyword_check() {
		if (document.search.keyword.value == '') { //검색어가 없을 경우  
			alert('검색어를 입력하세요'); //경고창 띄움 
			document.search.keyword.focus(); //다시 검색창으로 돌아감 
			return false;
		} else
			return true;
	}

</script>


			




</head>

<body>


<br>
	<div class="header" align="center">



		<table border="0" bgcolor="white" align="right">
	
	<tr>
				<td >
		
<c:if test="${empty sessionScope.managerSession}">&emsp;</c:if>

<c:if test="${not empty sessionScope.managerSession}">
	<font size="3" color="#696969">ID : </font>
	<font size="3" color="#57AD5F"><b>${sessionScope.managerSession.manager_id }</b></font></c:if>
		</td>
	
	
		<td width=30%>
				<a href="admin">주문 목록&emsp;&emsp;</a>
		</td>
	
	
	
		<td >
		
<c:if test="${empty sessionScope.managerSession}"><a href="manager_login">로그인&emsp;</a> </c:if>

<c:if test="${not empty sessionScope.managerSession}"><a href="manager_login">로그아웃&emsp;</a> </c:if>
		</td>
		

	
	
	
	
	<!-- 
	<td>
	
	<div style="position:absolute;  top:10px; right:100px">
	<ul>
        <li class="menu">
            <a><font size="3" color="#57AD5F"><b>
            ${sessionScope.managerSession.manager_id}</b></font>님</a>
            <ul class="hide">
            
            	<li><a href="getBuyerinfoId"><font size="4" color="#696969">개인정보 수정</font></a></li>
                
                <li><a href="mypage"><font size="4" color="#696969">마이 페이지</font></a></li>
                       
                <li><a href="mypage#myorder"><font size="4" color="#696969">주문 내역</font></a></li>
                
                <li><a href="mypage#inquiry"><font size="4" color="#696969">문의 내역</font></a></li>
               
                
            </ul>
        </li>
        </ul>
</div>
	
	</td>
 -->

			</tr>
			</table>
			
			
			
			
			<br><br>
			
			
			
			
			
			
			
			
		<div align=center style="position:relative">
		
			
				<a href="/admin"><img src="images/banner.png"
						width=300px></a>
	
 </div>
	

<br>



		<div style=" padding: 0% 10% 0% 10%; position: absolute;  align:center ">
		
		
			<table border=0 bgcolor=white  >
				<colgroup>
			<col width="30%">
			<col width="30%">
			<col width="40%">
			
			

				<tr valign="top">
				

				
					<td ><a href="/admin_help">문의내역&emsp;</a></td>
	
					<td><a href="/admin_buyer">구매자 회원 관리&emsp;</a></td>
	
					<td><a href="/admin_seller">판매자 회원 관리&emsp;</a></td>
	
	
	

					<td align="right">
					
					
						<form name="search" method="get" action="/search"
							class="search-container" onsubmit="return keyword_check()">
							<input type="text" name="keyword" id="search-bar"
								placeholder="무엇을 찾으시나요?"
								onKeypress="javascript:if(event.keyCode==13) {search_onclick_submit}">
						</form>
						
						
				
				
				</tr>
				
			</table>

</div>



		

<br>
<br>
<hr style="border: solid 1px WhiteSmoke; " >


	<script>
				function openCloseToc() {
					if (document.getElementById('toc-content').style.display === 'block') {
						document.getElementById('toc-content').style.display = 'none';
					} else {
						document.getElementById('toc-content').style.display = 'block';
				
					}
				}
			</script>
			
			
				
				
	
			
<script>

    $(document).ready(function(){
        $(".menu>a").click(function(){
            var submenu = $(this).next("ul");
 
          
            if( submenu.is(":visible") ){
                submenu.slideUp();
            }else{
                submenu.slideDown();
            }
        }).mouseover(function(){
            $(this).next("ul").slideDown();
        });
    });
    
</script>


			




</div>
</body>

</html>