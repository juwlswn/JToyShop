<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <style type="text/css">
    	#car {
    		width: 100%;
    		padding-left: 0px;
    		padding-right: 0px;
    	}
		.im {
		width: 150px;
		height: 250px;
		margin-left: 50px;
		border-radius: 20px;
		cursor: pointer;
		}
		.girlchardiv{
		clear: both;
		}
		#content {
		width: 1200px;
		margin-left: 60px;
		}
		.tab {
		float: left;
		margin-right: 40px;
		}
		.tab tr td {
		text-align: center;
		height : 40px;
		}
		.kidultdiv{
		clear: both;
		}
    </style>
<table id="t2">
			<tr>
				<td class="p_menu"><h5>전체상품</h5></td>
				<td class="p_menu" id="boychar"><h5>남아캐릭터</h5></td>
				<td class="p_menu" id="girlchar"><h5>여아캐릭터</h5></td>
				<td class="p_menu" id="kidult"><h5>키덜트/취미</h5></td>
				<td class="p_menu" id="sale"><h5>SALE</h5></td>
			</tr>
</table>
		<br>
	<div class="container" id="car">
				<div id="my-slider" class="carousel slide" data-ride="carousel">
					<!-- indicators dot nov -->
					<ol class="carousel-indicators">
						<li data-target="#my-slider" data-slide-to="0" class="active"></li>
						<li data-target="#my-slider" data-slide-to="1"></li>
						<li data-target="#my-slider" data-slide-to="2"></li>
					</ol>
					<!-- wrapper for slides -->
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<img class="d-block w-100" src="<c:url value="/resources/img/m_img4.png"/>">
						</div>
						<div class="item">
							<img class="d-block w-100" src="<c:url value="/resources/img/m_img5.PNG"/>">
						</div>
						<div class="item">
							<img class="d-block w-100" src="<c:url value="/resources/img/m_img6.png"/>">
						</div>
					</div>
					<!-- controls or next and prev buttons -->
					<a class="left carousel-control" href="#my-slider" role="button" data-slide="prev">
						<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a>
					<a class="right carousel-control" href="#my-slider" role="button" data-slide="next">
						<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Nest</span>
					</a>
				</div>
			</div>
	<br>
	<div id="content">
			<div class ="boychardiv">
			<h3>남아캐릭터</h3>	
				<c:forEach var="product" items="${pList}">
						<c:if test="${product.category == 'boychar'}">
							<table class="tab">
								<tr>
									<td><a href="/toy?jsp=goreadproduct&pcode=${product.pcode}"><img  class="im" src="productfile/${product.savedfile}" style= "display:block;"></a></td>
								</tr>
								<tr><td><a href="/toy?jsp=goreadproduct&pcode=${product.pcode}">${product.pname}</a></td></tr>
								<tr><td>${product.price}원</td></tr>
							</table>
						</c:if>
				</c:forEach>
			</div>
			
			
			<div class ="girlchardiv">
			<h3>여아캐릭터</h3>
				<c:forEach var="product" items="${pList}">
						<c:if test="${product.category == 'girlchar'}">
							<table class="tab">
								<tr>
									<td><a href="/toy?jsp=goreadproduct&pcode=${product.pcode}"><img  class="im" src="productfile/${product.savedfile}" style= "display:block;"></a></td>
								</tr>
								<tr><td><a href="/toy?jsp=goreadproduct&pcode=${product.pcode}">${product.pname}</a></td></tr>
								<tr><td>${product.price}원</td></tr>
							</table>
						</c:if>
				</c:forEach>
			</div>
			
			
			<div class="kidultdiv">
			<h3>키덜트/취미</h3>
				<c:forEach var="product" items="${pList}">
						<c:if test="${product.category == 'kidult'}">
							<table class="tab">
								<tr>
									<td><a href="/toy?jsp=goreadproduct&pcode=${product.pcode}"><img  class="im" src="productfile/${product.savedfile}" style= "display:block;"></a></td>
								</tr>
								<tr><td><a href="/toy?jsp=goreadproduct&pcode=${product.pcode}">${product.pname}</a></td></tr>
								<tr><td>${product.price}원</td></tr>
							</table>
						</c:if>
				</c:forEach>
			</div>
			
			<div class="kidultdiv">
			<h3>세일</h3>
				<c:forEach var="product" items="${pList}">
						<c:if test="${product.category == 'sale'}">
							<table class="tab">
								<tr>
									<td><a href="/toy?jsp=goreadproduct&pcode=${product.pcode}"><img  class="im" src="productfile/${product.savedfile}" style= "display:block;"></a></td>
								</tr>
								<tr><td><a href="/toy?jsp=goreadproduct&pcode=${product.pcode}">${product.pname}</a></td></tr>
								<tr><td>${product.price}원</td></tr>
							</table>
						</c:if>
				</c:forEach>
			</div>
	</div>
	<br>
