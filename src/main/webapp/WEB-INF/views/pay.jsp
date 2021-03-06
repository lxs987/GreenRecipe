<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

@import url('https://fonts.googleapis.com/icon?family=Material+Icons');


.dropdown{
  position : relative;
  display : inline-block;
}

.dropbtn_icon{
  font-family : 'Material Icons';
}
.dropbtn{
  display : block;
  border : 2px solid rgb(94, 94, 94);
  border-radius : 4px;
  background-color: #fcfcfc;
  font-weight: 400;
  color : rgb(124, 124, 124);
  padding : 12px;
  margin: 0px;
  width :240px;
  text-align: left;
  cursor : pointer;
  font-size : 12px;
  z-index :1;
  position : relative;
}
.dropdown-content{
  display : none;
  font-weight: 400;
  background-color: #fcfcfc;
  min-width : 240px;
  border-radius: 8px;
  height : 160px;
  overflow : scroll;
  box-shadow: 0px 0px 10px 3px rgba(190, 190, 190, 0.6);
}
.dropdown-content::-webkit-scrollbar{
  width : 5px;
  height : 10px;
}
.dropdown-content::-webkit-scrollbar-thumb{
  border-radius : 2px;
  background-color :rgb(194, 194, 194)
}

.dropdown-content div{
  display : block;
  text-decoration : none;
  color : rgb(37, 37, 37);
  font-size: 12px;
  padding : 12px 20px;
}
.dropdown-content div:hover{
  background-color: rgb(226, 226, 226);
}

.dropdown-content.show{
  display : block;
}

</style>
<meta charset="UTF-8">
<title>๐ต๊ฒฐ์  ํ์ด์ง(์ฃผ๋ฌธ์ ์์ฑ)</title>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>

</head>
<body>
<%@include file ="header.jsp" %>

<br><br><br>
	<!-- ๊ตฌ๋งคํ  ์ํ -->
	<table border=0 width="70%" align="center">

		<tr>
			<td colspan="4">
				<h3>๊ตฌ๋งคํ  ์ํ</h3>
				<hr color="black">
			</td>
		</tr>
 		
 		<c:forEach var="item" items="${itemList}" varStatus="status">
 		<tr align = "center">
			<td width=25%><img src="images/${item.item_image}" width=70px></td>
			<td width=35%>${item.item_name}</td>
			
				<td width=20%>${cartList[status.index].cart_count}๊ฐ</td>
				<td width=20%>${cartList[status.index].cart_price}์</td>
		</tr>
		
<!-- 		<form action="insertPay" method="get"> -->
<form id = "insertform" method="get" onsubmit="return false;">
		<div width=0 height=0 style="visibility:hidden">
    <input type=checkbox  name="cartIdList" value="${cartList[status.index].cart_id}" checked>
    </div>
		
		
		</c:forEach> 
		
	</table>
	<br><br>
	<!-- ๋ฐฐ์ก์ง -->
	<table border=0 width="70%" align="center">

		<tr>
			<td colspan="3"><h3>๋ฐฐ์ก์ง ํ์ธ</h3><hr color="black"></td>
		</tr>
		
		<tr><td rowspan="3" width="1%"><td>์ด๋ฆ</td><td>${userInfo.buyer_name}</td></tr>
		<tr><td>์ฐ๋ฝ์ฒ</td><td>${userInfo.buyer_phone}</td></tr>
		<tr><td>์ฃผ์</td><td>${userInfo.buyer_addr}</td></tr>
	</table>
<br><br>
		<!-- ์ฟ ํฐ, ํฌ์ธํธ ์ฌ์ฉ -->
	<table border=0 width="70%" align="center">

		<tr>
			<td colspan="3"><h3>ํฌ์ธํธ ์ฌ์ฉ</h3>
				<hr color="black"></td>
		</tr>
		

	</table>

	<br>
	<!-- ํฌ์ธํธ ์ ์ฉ ์ฐธ๊ณ  ์ฌ์ดํธ: https://jsfiddle.net/ju_n_jng/kz3oxj72/-->

	<table border=0 width="70%" align="center">
		<tbody>
			<tr>
				<th width="20%" align="center">ํฌ์ธํธ ์ ์ฉ</th> <!-- input type ์๋ number์์ -->
				<td width="20%"><span> <input type="text" name="use_pnt" id="use_pnt" value="0" min="100" max="${userInfo.buyer_point}" onchange="changePoint(${totalPrice},${userInfo.buyer_point},100,10)" placeholder="0"></span> p</td>
				<td> <input type="checkbox" id="chk_use" onclick="chkPoint(${totalPrice},${userInfo.buyer_point},100,10)">ํฌ์ธํธ ์ ์ฒด ์ฌ์ฉ</td>
				<td align="left"><span style="float: right">๐ฐํฌ์ธํธ๋ ์ต์ 100p๋ถํฐ 10p๋จ์๋ก ์ฌ์ฉ ๊ฐ๋ฅํฉ๋๋ค.</span></td>
				</tr>
				
			<tr><td></td><td>์ฌ์ฉ๊ฐ๋ฅ ํฌ์ธํธ : <span name="left_pnt">${userInfo.buyer_point}</span>p</td></tr>
			
		</tbody>
	</table>

	<!-- ์ต์ข๊ธ์ก -->
	<br><br><br><br>
	<table border=0 width="70%" align="center">
		<tr><td align="right">ํ ์ธ ์  ๊ธ์ก: ${totalPrice}์</td></tr>
		<tr><td align="right">์ด ๊ฒฐ์  ๊ธ์ก : <span class="bold txt_red" id="result_pnt">${totalPrice}</span>์</td></tr>
		<!-- ์ด ๊ฒฐ์  ๊ธ์ก์ ์ฟ ํฐ ์ ์ฉํ ํ - ์ ์ฉ ํฌ์ธํธ -->
	</table>
	
	
	
	<!-- ์นด์นด์คํ์ด ๊ฒฐ์  ๋ฒํผ -->
	<div style="text-align: center; margin-top: 50px; margin-bottom: 50px;">
		<input id="check_module" type="image" src="img/kakaopay.png" width=100px>
	</div>
	<!-- form end -->
	</form>
	
		<script>
		
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		
			$("#check_module")
					.click(
							function() {
								var adr = $('#sample4_postcode').val()+$('#sample4_roadAddress').val()+ $('#sample4_jibunAddress').val()+$('#sample4_detailAddress').val();
								
								if ($('#sample4_postcode').val() != ""
										&& $('#sample4_roadAddress').val() != ""
										&& $('#sample4_jibunAddress').val() != ""
										&& $('#sample4_detailAddress').val() != "") {

									var IMP = window.IMP; // ์๋ต๊ฐ๋ฅ
									IMP.init('imp52387691');
									IMP
											.request_pay(
													
													{
														pg : 'kakao',
														pay_method : 'card',
														merchant_uid : 'GreenRecipe'
																+ new Date()
																		.getTime(),	
														name : "[GreenRecipe] ${userInfo.buyer_name}๋์ ์ฃผ๋ฌธ",
														amount : 1,	
														buyer_email : "${userInfo.buyer_email}",
														buyer_name : "${userInfo.buyer_name}",
														buyer_tel : "${userInfo.buyer_phone}",
														buyer_addr : "${userInfo.buyer_addr}",
														buyer_postcode : '123-456',
														m_redirect_url : 'https://www.yourdomain.com/payments/complete'
															
													},
													
													function(rsp) {
														console.log(rsp);
														if (rsp.success) {
															var msg = '๊ฒฐ์ ๊ฐ ์๋ฃ๋์์ต๋๋ค.';
															alert(msg);
															var form = document.getElementById("insertform");
															form.action = "/insertPay";
															form.mothod = "GET";
															form.submit();
														} else {
															var msg = '๊ฒฐ์ ๋ฅผ ์ทจ์ํ์์ต๋๋ค.';
															alert(msg);
														}
														
													});

								} else {

									alert("์ฃผ์๋ฅผ ์๋ ฅํด์ฃผ์ธ์.");
								}

							});
		</script>
	</div>
   
   	<script type="text/javascript"> 
	
	window.onload=()=>{
	      document.querySelector('.dropbtn_click').onclick = ()=>{
	        dropdown();
	      }
	      document.getElementsByClassName('fastfood').onclick = ()=>{
	        showMenu(value);
	      };
	      dropdown = () => {
	        var v = document.querySelector('.dropdown-content');
	        var dropbtn = document.querySelector('.dropbtn')
	        v.classList.toggle('show');
	        dropbtn.style.borderColor = 'rgb(94, 94, 94)';
	      }

	      showMenu=(value)=>{
	        var dropbtn_icon = document.querySelector('.dropbtn_icon');
	        var dropbtn_content = document.querySelector('.dropbtn_content');
	        var dropbtn_click = document.querySelector('.dropbtn_click');
	        var dropbtn = document.querySelector('.dropbtn');

	        dropbtn_icon.innerText = '';
	        dropbtn_content.innerText = value;
	        dropbtn_content.style.color = '#252525';
	        dropbtn.style.borderColor = '#3992a8';
	      }
	    }
	    window.onclick= (e)=>{
	      if(!e.target.matches('.dropbtn_click')){
	        var dropdowns = document.getElementsByClassName("dropdown-content");

	        var dropbtn_icon = document.querySelector('.dropbtn_icon');
	        var dropbtn_content = document.querySelector('.dropbtn_content');
	        var dropbtn_click = document.querySelector('.dropbtn_click');
	        var dropbtn = document.querySelector('.dropbtn');

	        var i;
	        for (i = 0; i < dropdowns.length; i++) {
	          var openDropdown = dropdowns[i];
	          if (openDropdown.classList.contains('show')) {
	            openDropdown.classList.remove('show');
	          }
	        }
	      }
	    }

	    
   </script>
   
   <!-- ํฌ์ธํธ ์ ์ฉ -->
   <script type="text/javascript"> 
   
   function chkPoint(amt,pnt,min,unit) {
		//input๊ฐ์ ์ ์ฒด ๋ง์ผ๋ฆฌ์ง๋ก ์ค์  > minusPoint 
		//amt : ์ต์ด ๊ฒฐ์  ๊ธ์ก / pnt : ์ฌ์ฉ๊ฐ๋ฅ,๋จ์ ํฌ์ธํธ / min : ์ฌ์ฉ ๊ฐ๋ฅ ์ต์ ํฌ์ธํธ / unit : ์ฌ์ฉ๋จ์
		var v_point = 0; //์ฌ์ฉํ  ํฌ์ธํธ (input ์๋ ฅ๊ฐ)
	
		if (document.getElementById("chk_use").checked)  
		{
			if (pnt < min)  //์ต์ ์ฌ์ฉ ๋จ์๋ณด๋ค ์์ ๋
			{
				v_point = 0; 
			}else {
				v_point = pnt - pnt%unit; //์ฌ์ฉํ  ํฌ์ธํธ = ์ ์ฒด ๋ง์ผ๋ฆฌ์ง ์ค ์ต์๋จ์ ์ดํ ๋ง์ผ๋ฆฌ์ง๋ฅผ ๋บ ํฌ์ธํธ
			}

			if(pnt > amt ){ //๊ฒฐ์ ๊ธ์ก๋ณด๋ค ํฌ์ธํธ๊ฐ ๋ ํด ๋
				v_point = amt; //์ฌ์ฉํ  ํฌ์ธํธ๋ ๊ฒฐ์ ๊ธ์ก๊ณผ ๋์ผํ๊ฒ ์ค์ 
			}
			
		}
		document.getElementById("use_pnt").value = v_point; //input ๊ฐ ์ค์ 

		changePoint(amt,pnt,min,unit);
	}
	
	function changePoint(amt,pnt,min,unit){
		//input๊ฐ์ ๋ถ๋ฌ์ด > left_pnt ๋ณ๊ฒฝ > ์ต์ข๊ฒฐ์  ๋ณ๊ฒฝ
		//amt : ์ต์ด ๊ฒฐ์  ๊ธ์ก / pnt : ์ฌ์ฉ๊ฐ๋ฅ,๋จ์ ํฌ์ธํธ / min : ์ฌ์ฉ ๊ฐ๋ฅ ์ต์ ํฌ์ธํธ / unit : ์ฌ์ฉ๋จ์
		var v_point = parseInt(document.getElementById("use_pnt").value); //์ฌ์ฉํ  ํฌ์ธํธ (input ์๋ ฅ๊ฐ)
		if (v_point > pnt) //์๋ ฅ๊ฐ์ด ์ฌ์ฉ๊ฐ๋ฅ ํฌ์ธํธ๋ณด๋ค ํด๋
		{
			v_point = pnt;
			document.getElementById("use_pnt").value = v_point; //input ๊ฐ ์ฌ์ค์ 
		}

		if(v_point > amt ){ //๊ฒฐ์ ๊ธ์ก๋ณด๋ค ํฌ์ธํธ๊ฐ ๋ ํด ๋
			v_point = amt; //์ฌ์ฉํ  ํฌ์ธํธ๋ ๊ฒฐ์ ๊ธ์ก๊ณผ ๋์ผํ๊ฒ ์ค์ 
			document.getElementById("use_pnt").value = v_point; //input ๊ฐ ์ฌ์ค์ 
		}

		if (v_point < min)  //์ต์ ์ฌ์ฉ ๋จ์๋ณด๋ค ์์ ๋
		{
			v_point = 0; 
			document.getElementById("use_pnt").value = v_point; //input ๊ฐ ์ฌ์ค์ 
		}else {
			v_point = v_point - v_point%unit; //์ฌ์ฉํ  ํฌ์ธํธ = ์ฌ์ฉํ  ๋ง์ผ๋ฆฌ์ง ์ค ์ต์๋จ์ ์ดํ ๋ง์ผ๋ฆฌ์ง๋ฅผ ๋บ ํฌ์ธํธ
		}

		var v_left = document.getElementsByName("left_pnt"); //์ฌ์ฉ๊ฐ๋ฅ ๋ง์ผ๋ฆฌ์ง, ๋จ์ ํฌ์ธํธ ๊ฐ ์ค์ 
		for (var i = 0; i < v_left.length; i++) {

			v_left[i].innerHTML = pnt - v_point; //= ์ ์ฒด ํฌ์ธํธ ์ค์ ์ฌ์ฉํ  ํฌ์ธํธ๋นผ๊ณ  ๋จ์ ํฌ์ธํธ

		}
		document.getElementById("result_pnt").innerHTML = amt - v_point; //์ต์ข ๊ฒฐ์ ๊ธ์ก = ๊ฒฐ์ ๊ธ์ก - ์ฌ์ฉํ  ํฌ์ธํธ
	}
   
   </script>
</body>
</html>