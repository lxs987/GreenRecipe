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
	width: 100%;
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
		if (document.search.keyword.value == '') { //???????????? ?????? ??????  
			alert('???????????? ???????????????'); //????????? ?????? 
			document.search.keyword.focus(); //?????? ??????????????? ????????? 
			return false;
		} else
			return true;
	}

</script>

</head>

<body>

	<div class="header" width="85%" align="center" style="position:relative">

		<table border="0" width="80%" bgcolor="white" align="center">
			<tr align="right">
				<td>
					<a href="login">??????????????????&emsp;</a>
					
				<a href="seller_login">???????????????&emsp;</a> 
				
				
			
				
					
					
		
<c:if test="${empty sessionScope.sellerSession}"><a href="seller_login">?????????&emsp;</a> </c:if>

<c:if test="${not empty sessionScope.sellerSession}"><a href="seller_logout">????????????&emsp;</a> </c:if>

			
			
				
<div style="position:absolute;  top:10px; right:50px">

        <li class="menu">
            <font size="3" color="#57AD5F"><b>
            ${sessionScope.sellerSession.seller_name}</b></font>???
            <ul class="hide">
            
            
            
            	<li><a href="seller_login"><font size="4" color="#696969">????????? ????????? ??????</font></a></li>
                
                <li><a href="seller_main"><font size="4" color="#696969">????????? ?????? ?????????</font></a></li>
              
            </ul>
        </li>
</div>
			
			
			</td>
	
					
			</tr>
			<tr align="center">
				<td><a href="/seller_main"><img src="images/banner.png"
						width=300px></a></td>
			</tr>
		</table>

		<div style="position: absolute; width: 100%; align: right">
			<table border=0 width="80%" bgcolor=white>
				<tr valign="top">

					
					<td ><a href="/seller_item">????????? ??????&emsp;</a></td>
				
					<td><a href="/seller_recipe">????????? ??????&emsp;</a></td>
				
					
					<td > <a href="seller_help">????????? ???????????? ??????&emsp;</a></td>
					
					
					<td ><a href="seller_modifyForm">????????? ?????? ??????&emsp;</a></td>

		<td ><a href="seller_main">??????????????? ??????&emsp;</a></td>

					<td align="right">
						<form name="search" method="get" action="/search"
							class="search-container" onsubmit="return keyword_check()">
							<input type="text" name="keyword" id="search-bar"
								placeholder="?????? ????????????"
								onKeypress="javascript:if(event.keyCode==13) {search_onclick_submit}">
								
						</form>
					</td>
					<td align="left" valign = "middle">
<!-- 					<a href="SearchPage.jsp?keyword="> -->
					<img class="search-icon" src="images/search.png" width=20px>&emsp;&emsp;
<!-- 					</a> -->
					</td>
				
				</tr>
			</table>

			
				
				
				
	<!-- ??????????????? -->	

			
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