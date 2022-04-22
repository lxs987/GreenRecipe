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
<title>💵결제 페이지(주문서 작성)</title>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>

</head>
<body>
<%@include file ="header.jsp" %>

<br><br><br>
	<!-- 구매할 상품 -->
	<table border=0 width="70%" align="center">

		<tr>
			<td colspan="4">
				<h3>구매할 상품</h3>
				<hr color="black">
			</td>
		</tr>
 		
 		<c:forEach var="item" items="${itemList}" varStatus="status">
 		<tr align = "center">
			<td width=25%><img src="images/${item.item_image}" width=70px></td>
			<td width=35%>${item.item_name}</td>
			
				<td width=20%>${cartList[status.index].cart_count}개</td>
				<td width=20%>${cartList[status.index].cart_price}원</td>
		</tr>
		
<!-- 		<form action="insertPay" method="get"> -->
<form id = "insertform" method="get" onsubmit="return false;">
		<div width=0 height=0 style="visibility:hidden">
    <input type=checkbox  name="cartIdList" value="${cartList[status.index].cart_id}" checked>
    </div>
		
		
		</c:forEach> 
		
	</table>
	<br><br>
	<!-- 배송지 -->
	<table border=0 width="70%" align="center">

		<tr>
			<td colspan="3"><h3>배송지 확인</h3><hr color="black"></td>
		</tr>
		
		<tr><td rowspan="3" width="1%"><td>이름</td><td>${userInfo.buyer_name}</td></tr>
		<tr><td>연락처</td><td>${userInfo.buyer_phone}</td></tr>
		<tr><td>주소</td><td>${userInfo.buyer_addr}</td></tr>
	</table>
<br><br>
		<!-- 쿠폰, 포인트 사용 -->
	<table border=0 width="70%" align="center">

		<tr>
			<td colspan="3"><h3>포인트 사용</h3>
				<hr color="black"></td>
		</tr>
		

	</table>

	<br>
	<!-- 포인트 적용 참고 사이트: https://jsfiddle.net/ju_n_jng/kz3oxj72/-->

	<table border=0 width="70%" align="center">
		<tbody>
			<tr>
				<th width="20%" align="center">포인트 적용</th> <!-- input type 원래 number였음 -->
				<td width="20%"><span> <input type="text" name="use_pnt" id="use_pnt" value="0" min="100" max="${userInfo.buyer_point}" onchange="changePoint(${totalPrice},${userInfo.buyer_point},100,10)" placeholder="0"></span> p</td>
				<td> <input type="checkbox" id="chk_use" onclick="chkPoint(${totalPrice},${userInfo.buyer_point},100,10)">포인트 전체 사용</td>
				<td align="left"><span style="float: right">💰포인트는 최소 100p부터 10p단위로 사용 가능합니다.</span></td>
				</tr>
				
			<tr><td></td><td>사용가능 포인트 : <span name="left_pnt">${userInfo.buyer_point}</span>p</td></tr>
			
		</tbody>
	</table>

	<!-- 최종금액 -->
	<br><br><br><br>
	<table border=0 width="70%" align="center">
		<tr><td align="right">할인 전 금액: ${totalPrice}원</td></tr>
		<tr><td align="right">총 결제 금액 : <span class="bold txt_red" id="result_pnt">${totalPrice}</span>원</td></tr>
		<!-- 총 결제 금액에 쿠폰 적용한 후 - 적용 포인트 -->
	</table>
	
	
	
	<!-- 카카오페이 결제 버튼 -->
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

									var IMP = window.IMP; // 생략가능
									IMP.init('imp52387691');
									IMP
											.request_pay(
													
													{
														pg : 'kakao',
														pay_method : 'card',
														merchant_uid : 'GreenRecipe'
																+ new Date()
																		.getTime(),	
														name : "[GreenRecipe] ${userInfo.buyer_name}님의 주문",
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
															var msg = '결제가 완료되었습니다.';
															alert(msg);
															var form = document.getElementById("insertform");
															form.action = "/insertPay";
															form.mothod = "GET";
															form.submit();
														} else {
															var msg = '결제를 취소하였습니다.';
															alert(msg);
														}
														
													});

								} else {

									alert("주소를 입력해주세요.");
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
   
   <!-- 포인트 적용 -->
   <script type="text/javascript"> 
   
   function chkPoint(amt,pnt,min,unit) {
		//input값을 전체 마일리지로 설정 > minusPoint 
		//amt : 최초 결제 금액 / pnt : 사용가능,남은 포인트 / min : 사용 가능 최소 포인트 / unit : 사용단위
		var v_point = 0; //사용할 포인트 (input 입력값)
	
		if (document.getElementById("chk_use").checked)  
		{
			if (pnt < min)  //최소 사용 단위보다 작을 때
			{
				v_point = 0; 
			}else {
				v_point = pnt - pnt%unit; //사용할 포인트 = 전체 마일리지 중 최소단위 이하 마일리지를 뺀 포인트
			}

			if(pnt > amt ){ //결제금액보다 포인트가 더 클 때
				v_point = amt; //사용할 포인트는 결제금액과 동일하게 설정
			}
			
		}
		document.getElementById("use_pnt").value = v_point; //input 값 설정

		changePoint(amt,pnt,min,unit);
	}
	
	function changePoint(amt,pnt,min,unit){
		//input값을 불러옴 > left_pnt 변경 > 최종결제 변경
		//amt : 최초 결제 금액 / pnt : 사용가능,남은 포인트 / min : 사용 가능 최소 포인트 / unit : 사용단위
		var v_point = parseInt(document.getElementById("use_pnt").value); //사용할 포인트 (input 입력값)
		if (v_point > pnt) //입력값이 사용가능 포인트보다 클때
		{
			v_point = pnt;
			document.getElementById("use_pnt").value = v_point; //input 값 재설정
		}

		if(v_point > amt ){ //결제금액보다 포인트가 더 클 때
			v_point = amt; //사용할 포인트는 결제금액과 동일하게 설정
			document.getElementById("use_pnt").value = v_point; //input 값 재설정
		}

		if (v_point < min)  //최소 사용 단위보다 작을 때
		{
			v_point = 0; 
			document.getElementById("use_pnt").value = v_point; //input 값 재설정
		}else {
			v_point = v_point - v_point%unit; //사용할 포인트 = 사용할 마일리지 중 최소단위 이하 마일리지를 뺀 포인트
		}

		var v_left = document.getElementsByName("left_pnt"); //사용가능 마일리지, 남은 포인트 값 설정
		for (var i = 0; i < v_left.length; i++) {

			v_left[i].innerHTML = pnt - v_point; //= 전체 포인트 중에 사용할 포인트빼고 남은 포인트

		}
		document.getElementById("result_pnt").innerHTML = amt - v_point; //최종 결제금액 = 결제금액 - 사용할 포인트
	}
   
   </script>
</body>
</html>