<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주문페이지</title>
<script type="text/javascript" src="resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	
	$('#checkbox').on('click',test);
});
function test() {
	var phone = $('#phone').val();
	var address = $('#address').val();



	$('#deliver').val(address);
	$('#phone2').val(phone);
	
}

function ordercheck() {
	var address = $('#deliver').val();
	var phone = $('#phone2').val();
	
	if (address == '') {
		alert('주소값입력해주세요');
		return false;
	}
	
	if (phone == '') {
		alert('전화번호 입력해주세요');
		return false;
	}
}

</script>
</head>
<body>
	<h2>주문</h2>
	<div>
		<h2>상품 정보</h2>
		<table>
			<tr>
				<th>상품코드</th>
				<th>상품이름</th> 
				<th>구매수량</th>
				<th>상품가격</th>
				<th>총 상품 가격</th>
			</tr>
			<tr>
				<td><input type="text" value="${cart.pcode}" id="pcode" name="pcode" readonly="readonly"></td>
				<td><input type="text" value="${cart.pname}" id="pname" name="pname" readonly="readonly"></td>
				<td><input type="text" value="${cart.numcount}" id="numcount" name="numcount" readonly="readonly"></td>
				<td><input type="text" value="${cart.price}" id="price" name="price" readonly="readonly"></td>
				<td><input type="text" value="${cart.totalprice}" id="totalprice" name="totalprice" readonly="readonly"></td>
			</tr>
		</table>
	</div>
	<hr>
	<div>
		<h2>주문자 정보</h2>
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" value="${member.id}" readonly="readonly"></td>
			</tr>
			
			<tr>
				<td>이름</td>
				<td><input type="text" value="${member.name}" readonly="readonly"></td>
			</tr>
			
			<tr>
				<td>주소</td>
				<td><input type="text" id="address" value="${member.address}" readonly="readonly"></td>
			</tr>
			
			<tr>
				<td>전화번호</td>
				<td><input type="text" id="phone" value="${member.phone}" readonly="readonly"></td>
			</tr>
			<tr></tr>
		</table>
	</div>
	<hr>
	<div>
		<form action="order" method="post" onsubmit="return ordercheck()">
			<h2>배송지 정보</h2>
			<input type="checkbox" id="checkbox" > 주문자 정보와 동일합니까? 
			<table>
				<tr>
					<td>배송지 주소</td>
					<td><input type="text" id="deliver" name="address"></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><input type="text" id="phone2" name="phone"></td>
				</tr>
				
				<tr>
					<td>결제방법</td>
					<td>
					<select id="type" name="type">
						<option value="card">카드</option>
						<option value="phonebanking">핸드폰결제</option>
						<option value="internetbanking">인터넷뱅킹</option>
						<option value="virtualaccount">가상계좌</option>
					</select>
					</td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="결제"></td>
				</tr>
			</table>
			<input type="hidden" name="id" value="${member.id}">
			<input type="hidden" name="pname" value="${cart.pname}">
			<input type="hidden" name="numcount" value="${cart.numcount}">
			<input type="hidden" name="price" value="${cart.price}">
			<input type="hidden" name="totalprice" value="${cart.totalprice}">
			<input type="hidden" name="cno" value="${cart.cno}">
			<input type="hidden" value="${cart.pcode}" id="pcode" name="pcode">
		</form>
	</div>
</body>
</html>