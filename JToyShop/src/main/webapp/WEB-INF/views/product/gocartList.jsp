<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style type="text/css">
#carttable{
	margin: auto;
}
</style>
<div>
	<h2 style="text-align: center;">[ CART ]</h2>
	<br>
	<form action="order" method="post">
		<table id="carttable">
			<tr>
				<th>번호</th>
				<th>상품이름</th> 
				<th>수량</th>
				<th>구매자</th>
				<th>상품가격</th>
				<th>총 상품 가격</th>
				<th>날짜</th>
				<th colspan="2">버튼</th>
			</tr>
			
			<c:forEach var="cart" items="${cList}">
				<tr>
					<td><input type="text" value="${cart.cno}" id="cno" name="cno" readonly="readonly" style="width: 50px;"></td>
					<td><input type="text" value="${cart.pname}" id="pname" name="pname" readonly="readonly" style="width: 200px;"></td>
					<td><input type="text" value="${cart.numcount}" id="numcount" name="numcount" readonly="readonly" style="width: 50px;"></td>
					<td><input type="text" value="${cart.id}" id="id" name="id" readonly="readonly" style="width: 100px;"></td>
					<td><input type="text" value="${cart.price}" id="price" name="price" readonly="readonly" style="width: 100px;"></td>
					<td><input type="text" value="${cart.totalprice}" id="totalprice" name="totalprice" readonly="readonly" style="width: 100px;"></td>
					<td><input type="text" value="${cart.inputdate}" id="inputdate" name="inputdate" readonly="readonly" style="width: 150px;">
						<input type="hidden" value="${cart.pcode}" id="pcode" name="pcode">
					</td>
					<td><input type="button" value="삭제" onclick="cardelbtn('${cart.cno}')"></td>
					<td><input type="button" value="구매" onclick="buyit('${cart.cno}')"></td>
				</tr>
			</c:forEach>
		</table>
	</form>
</div>
