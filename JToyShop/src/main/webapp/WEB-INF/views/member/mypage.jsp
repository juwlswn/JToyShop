<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마이페이지</title>
<style type="text/css">
#ordertab {
	border: 1px solid black;
	float: left;
	margin-left: 30px;
	margin-top: 30px;
}
</style>
</head>
<body>
<h1 style="text-align: center;">[주문 내역]</h1>
<div>
		
		<c:forEach var="o" items="${oList}">
		<form action="goorderdel" method="post">
		<table id="ordertab">
		<tr>
			<th>주문자</th>
			<td><input type="text" value="${o.id}"></td>
		</tr>
		
		<tr>
			<th>제품명</th>
			<td><input type="text" value="${o.pname}"></td>
		</tr>
		
		<tr>
			<th>수량</th>
			<td><input type="text" value="${o.numcount}"></td>
		</tr>
		
		<tr>
			<th>가격</th>
			<td><input type="text" value="${o.price}"></td>
		</tr>
		
		<tr>
			<th>총가격</th>
			<td><input type="text" value="${o.totalprice}"></td>
		</tr>
		
		<tr>
			<th>주소</th>
			<td><input type="text" value="${o.address}"></td>
		</tr>
		
		<tr>
			<th>전화번호</th>
			<td><input type="text" value="${o.phone}"></td>
		</tr>
		
		<tr>
			<th>결제타입</th>
			<td><input type="text" value="${o.type}"></td>
		</tr>
		
		<tr>
			<th>주문일자</th>
			<td><input type="text" value="${o.inputdate}"></td>
		</tr>
		
		<tr>
			<td colspan="2" style="text-align: right;">
				<input type="hidden" value="${o.pcode}" name="pcode">
				<input type="hidden" value="${o.ono}" name="ono">
				<input type="submit" value="주문취소">
			</td>
		</tr>
		</table>
		</form>
		</c:forEach>
</div>
<br>
</body>
</html>