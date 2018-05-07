<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품리스트</title>
<style type="text/css">
.im {
		width: 150px;
		height: 250px;
		margin-left: 50px;
		border-radius: 20px;
		cursor: pointer;
		float: left;
}
.tab {
		float: left;
		margin-right: 40px;
		}
.tab tr td {
		text-align: center;
		height : 40px;
}
</style>
</head>
<body>
	<table id="t2">
			<tr>
				<td class="p_menu"><h5>전체 상품</h5></td>
				<td class="p_menu" id="boychar"><h5>남아캐릭터</h5></td>
				<td class="p_menu" id="girlchar"><h5>여아캐릭터</h5></td>
				<td class="p_menu" id="kidult"><h5>키덜트/취미</h5></td>
				<td class="p_menu" id="sale"><h5>SALE</h5></td>
			</tr>
</table>
<div id="content">
		<c:forEach var="product" items="${pList}">
			<table class="tab">
				<tr>
					<td><a id="imgclick" href="/toy?jsp=goreadproduct&pcode=${product.pcode}"><img  class="im" id="imgclick" src="productfile/${product.savedfile}" style= "display:block;"></a></td>
				</tr>
				<tr><td><a id="imgclick" href="/toy?jsp=goreadproduct&pcode=${product.pcode}">${product.pname}</a></td></tr>
				<tr><td>${product.price}원</td></tr>
			</table>
		</c:forEach>
</div>
</body>
</html>