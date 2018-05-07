<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">
function productdel(pcode) {
	location.href = "productdel?pcode=" +pcode;
}
function goboardList(page) {
	 //location.href ="goboardList?page="+page;
	 var form =document.createElement("form");
	 form.action ="toy/?jsp=godeleteproduct";
	 
	 form.method ="get";
	 
	 var hiddenpage =document.createElement("input");
	 hiddenpage.name ="page";
	 hiddenpage.value =page;
	 hiddenpage.type="hidden";
	  
	 form.appendChild(hiddenpage);
	 
	 document.body.appendChild(form);
	 form.submit();
	 
	 
	}

</script>
<style type="text/css">
#pro_deltable {
	margin: auto;
	font-size: 20px;
}

#pro_deltable tr td{
	width: 130px;
}

</style>
<div id="leftmenu" style="text-align: center;">
	<h4><a id="goinsertp">상품등록</a></h4>
	<h4><a id="godeletep">상품삭제</a></h4>
	<h4><a>상품수정</a></h4>
	<h4><a>회원관리</a></h4>
	<h4><a>주문관리</a></h4>
</div>

<div>
	<h2 style="text-align: center;">상품 삭제 페이지</h2>
	<hr>
	<table id="pro_deltable">
		<tr>
			<th>상품코드</th>
			<th>상품명</th>
			<th>수량</th>
			<th>카테고리</th>
			<th>가격</th>
			<th>총 판매수</th>
			<th>등록일</th>
		</tr>
		
		<c:forEach var="product" items="${pList}">
		<tr>
			<td>${product.pcode}</td>
			<td>${product.pname}</td>
			<td>${product.num}</td>
			<td>${product.category}</td>
			<td>${product.price}</td>
			<td>${product.pcount}</td>
			<td>${product.inputdate}</td>
			<td><input type="button" value="삭제" onclick="productdel('${product.pcode}')"></td>
		</tr>
		</c:forEach>
		
		<tr>
			<td colspan="1">
				<input type="button" value="prev" onclick="goboardList('${cpage-1}')">
			</td>
			
			<td colspan="3">
				<c:forEach begin="1" end="${boardcount}" step="10" varStatus="s">
				<c:if test="${cpage == s.count}">
					<a href="./?jsp=godeleteproduct&page=${s.count}"><b>[${s.count}]</b></a>		
				</c:if>
				<c:if test="${cpage != s.count}">
					<a href="./?jsp=godeleteproduct&page=${s.count}">[${s.count}]</a>	
				</c:if>
				</c:forEach>
			</td>
			
			<td colspan="1">
				<input type="button" value="next" onclick="goboardlist('${cpage+1}')">			
			</td>
		</tr>
	</table>
</div>