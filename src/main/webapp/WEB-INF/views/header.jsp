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

	<div class="header" width="85%" align="center" style="position:relative">

		<table border="0" width="80%" bgcolor="white" align="center">
			<tr align="right">
				<td><a href="seller_login">판매자센터&emsp;</a> 
				
				
					<a href="help">고객센터&emsp;</a>
					
		
<c:if test="${empty sessionScope.userSession}"><a href="login">로그인&emsp;</a> </c:if>

<c:if test="${not empty sessionScope.userSession}"><a href="logoutProcess">로그아웃&emsp;</a> </c:if>

			
			
				
<div style="position:absolute;  top:10px; right:50px">
        <li class="menu">
            <a><font size="3" color="#57AD5F"><b>
            ${sessionScope.userSession.buyer_name}</b></font>님</a>
            <ul class="hide">
            
            	<li><a href="getBuyerinfoId"><font size="4" color="#696969">개인정보 수정</font></a></li>
                
                <li><a href="mypage"><font size="4" color="#696969">마이 페이지</font></a></li>
                       
                <li><a href="mypage#myorder"><font size="4" color="#696969">주문 내역</font></a></li>
                
                <li><a href="mypage#inquiry"><font size="4" color="#696969">문의 내역</font></a></li>
               
                
            </ul>
        </li>
</div>
			
			
			</td>
	
					
			</tr>
			<tr align="center">
				<td><a href="/mainpage"><img src="images/banner.png"
						width=300px></a></td>
			</tr>
		</table>

		<div style="position: absolute; width: 100%; align: center">
			<table border=0 width="80%" bgcolor=white>
				<tr valign="top">

					<td><span id="toc-toggle" onclick="openCloseToc()"><img
							src="img/categoryIcon.png" width=20px valign="middle">&emsp;카테고리보기</span>
						</td>
					
					<td><a href="recipe">레시피&emsp;</a></td>
					<td><a href="/best">베스트&emsp;</a></td>
					<td><a href="/new">신상품&emsp;</a></td>
					<td><a href="/sale">특가/할인&emsp;</a></td>
	

					<td align="right">
						<form name="search" method="get" action="/search"
							class="search-container" onsubmit="return keyword_check()">
							<input type="text" name="keyword" id="search-bar"
								placeholder="어떤 물건을 찾고 있나요?"
								onKeypress="javascript:if(event.keyCode==13) {search_onclick_submit}">
								
						</form>
					</td>
					<td align="left" valign = "middle">
<!-- 					<a href="SearchPage.jsp?keyword="> -->
					<img class="search-icon" src="images/search.png" width=20px>&emsp;&emsp;
<!-- 					</a> -->
					</td>
					<td align="right" valign="middle">
					
					
					
					
					
					<a href="shopping_cart?buyerVO.buyer_num=${sessionScope.userSession.buyer_num}">
					<img src="images/cart.png" width=30px></a>
					<a href="mypage#item_like"><img src="images/like.png" width=30px></a>
					
					

					
					</td>
				</tr>
			</table>

			<!-- 대분류 카테고리 펼쳤을 때 출력되는 테이블 -->
			<div style="width: 70%; position:relative;">
				<table id="toc-content" bgcolor="white" width="150px" align="left">
					<tbody>
				
							<tr><td><a href="cate?cateNum=1">과일/채소</a></td></tr>
							<tr><td><a href="/cate?cateNum=2">수산물</a></td></tr>
							<tr><td><a href="/cate?cateNum=3">정육/계란</a></td></tr>
							<tr><td><a href="/cate?cateNum=4">요리</a></td></tr>
							<tr><td><a href="/cate?cateNum=5">음료/우유</a></td></tr>
							<tr><td><a href="/cate?cateNum=6">간식</a></td></tr>
							<tr><td><a href="/cate?cateNum=7">베이커리</a></td></tr>
					</tbody>
				</table>
			</div>
			<script>
				function openCloseToc() {
					if (document.getElementById('toc-content').style.display === 'block') {
						document.getElementById('toc-content').style.display = 'none';
					} else {
						document.getElementById('toc-content').style.display = 'block';
				
					}
				}
			</script>
			
			
				
				
				
	<!-- 마이페이지 -->	

			
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