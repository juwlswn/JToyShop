<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="<c:url value="/resources/bootstrap/css/bootstrap.css"/>">
	<link rel="stylesheet" href="<c:url value="/resources/bootstrap/css/bootstrap-theme.css"/>">
	<script type="text/javascript" src="<c:url value="/resources/js/jquery-3.2.1.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/bootstrap/js/bootstrap.min.js"/>"></script>
	<title>JToyShop</title>
	<script type="text/javascript">
	$(document).ready(function() { 

		$('.carousel').carousel({
			  interval: 2000
		});
		
		$('#logbtn').on('click',call1);
		$('#joinbtn').on('click',call2);
		$('#gologout').on('click',call3);
		$('#goupdate').on('click',call4);  
		$('#gomanager').on('click',call5);
		$('.p_menu').on('click',call6); 
		$('#goinsertp').on('click',call7); 
		$('#godeletep').on('click',call8);
		$('#gocartlist').on('click',call9); 
		$('#gomypage').on('click',mypage);
		$('#boychar').on('click',boychar);
		$('#girlchar').on('click',girlchar);
		$('#kidult').on('click',kidult);   
		$('#sale').on('click',sale);
		$('#gocartlist').on('click',gocartlist);
	});
	
	function boychar() {
		location.href = "./?jsp=productList&category=boychar";
	}
	function girlchar() {
		location.href = "./?jsp=productList&category=girlchar";
	}
	function kidult() {
		location.href = "./?jsp=productList&category=kidult";
	}
	function sale() {
		location.href = "./?jsp=productList&category=sale";
	}
	
	function call1() {
		location.href = '/toy?jsp=gologin';
	}
	
	function call2() {
		location.href = '/toy?jsp=gojoin';
	}
	function call3() {
		var a = confirm('로그아웃 하시겠습니까?');
		
		if (a == true) {
			location.href = 'logout';
		}
	}
	function call4() {
		location.href = "/toy?jsp=goupdateCheck";
	}
	function call5() {
		location.href = "/toy?jsp=gomanager";
	}
	function call6() {
		location.href = "/toy?jsp=productList";
	}
	function call7() {
		location.href = "/toy?jsp=goaddproduct";
	}
	function call8() {
		location.href = "/toy?jsp=godeleteproduct";
	}
	function call9() {
		location.href = 'gocartlist';
	}
	function gohome() {
		location.href = "/toy";
	}
	function mypage() {
		location.href = "/toy?jsp=gomypage"
	}
	function gocartlist() {
		location.href = "/toy?jsp=gocartlist";
	}
	function cardelbtn(cno) {
		var a = confirm('삭제 하시겠습니까?');
		if (a == true) {
			location.href = "deletecart?cno=" + cno;	
		
		}
	}
	function buyit(cno) {
		var a = confirm('구매 하시겠습니까??');
		if (a == true) {
			location.href = "/toy?jsp=gobuy&cno=" + cno;	
		}
	}
	</script>
	<style type="text/css">
	@import url(//fonts.googleapis.com/earlyaccess/hanna.css);
	body{
		font-family: 'Hanna', sans-serif;
	}
	hr {
		border: solid 2px gray;
	}
	
	#hr2 {
		border: solid 2px red;
		clear: both;
	}
	#div1 {
		float: left;	
		margin-left: 20px;
	}
	#div2 {
		float: right;
		margin-right: 20px;
	}
	
	.topmenu {
		cursor: pointer;
		font-size: 12px;
	}
	
	img{
		margin: auto;
	}
	
	#t2{
		margin: auto;
	}
	#t2 td{
		width: 160px;
	}
	.jumbotron {
		background-color: white;
		background-image: url('resources/img/logo.png');
		background-repeat: no-repeat;
		background-size: 160px;
		background-position: center;
	}
	.p_menu {
		cursor: pointer;
	}
	.p_menu:hover {
		text-decoration: underline;
		color: gray;
	}
	#footer1 {
		float: left;
		margin-left: 300px;
	}
	#footer2 {
		float: right;
		margin-right: 300px;
	}
	#footer3 {
		background-color: #353535;
		height: 100px;
	}
	#f_p{
	color: white;
	text-align: center;
	}
	#clear{
	clear: both;
	}
	#leftmenu {
	width: 200px;
	height: 600px;
	border-right: solid; 
	border-radius: 20%;
	float: left;
}
	#toTop{
		background:none; 
		position:fixed; 
		bottom:1px; 
		right:1px;
		cursor:pointer; 
		text-decoration:none; 
		border-radius:5px; 
		-moz-border-radius:5px; 
		-webkit-border-radius:5px; 
		padding:5px}

	</style>
</head>
<body>
<hr>
<c:if test="${loginId == null}">
<div id="div1">
	<table>
		<tr>
			<td class="topmenu">Q&A</td>
			<td>·</td>
			<td class="topmenu">상품후기</td>
			<td>·</td>
			<td class="topmenu">자주하는질문</td>
			<td>·</td>
			<td class="topmenu">공지사항</td>
		</tr>
	</table>
</div>

<div id="div2">
	<table>
		<tr>
			<td class="topmenu" id="logbtn">로그인</td>
			<td>·</td>
			<td class="topmenu" id="joinbtn">회원가입</td>
		</tr>
	</table>
</div>
</c:if>

<c:if test="${loginId != null}">
<div id="div1">
	<table>
		<tr>
			<td class="topmenu">Q&A</td>
			<td>·</td>
			<td class="topmenu">상품후기</td>
			<td>·</td>
			<td class="topmenu">자주하는질문</td>
			<td>·</td>
			<td class="topmenu">공지사항</td>
		</tr>
	</table>
</div>

<div id="div2">
	<table>
		<tr>
			<td>${loginId}(${loginName})님</td>
			<td>·</td>
			<td class="topmenu" id="goupdate">회원정보 수정</td>
			<td>·</td>
			<td class="topmenu" id="gomypage">마이페이지</td>
			<td>·</td>
			<td class="topmenu" id="gocartlist">장바구니</td>
			<td>·</td>
			<td class="topmenu" id="gologout">로그아웃</td>
			<c:if test="${manager != null}">
			<td>·</td>
			<td class="topmenu" id="gomanager">관리자페이지</td>
			</c:if>
		</tr>
	</table>
</div>
</c:if>
<br>
<br>

<div class="container">
	<div class="jumbotron" onclick="gohome();">
	</div>
</div>

<hr>
<!-- nav end -->

<c:if test="${jsp == 'index'}">
	<%@ include file="index.jsp" %>
</c:if>
<c:if test="${jsp == 'goupdateCheck'}">
	<%@ include file="member/updateCheckForm.jsp" %>
</c:if>
<c:if test="${jsp == 'goupdateForm'}">
	<%@ include file="member/updateForm.jsp" %>
</c:if>
<c:if test="${jsp == 'gologin'}">
	<%@ include file = "member/login.jsp" %>
</c:if>
<c:if test="${jsp == 'gojoin'}">
	<%@ include file = "member/joinForm.jsp" %>
</c:if> 
<c:if test="${jsp == 'goaddproduct'}">
	<%@ include file = "product/addproduct.jsp" %>
</c:if>
<c:if test="${jsp == 'gomanager'}">
	<%@ include file = "product/manager.jsp" %>
</c:if>
<c:if test="${jsp == 'productList'}">
	<%@ include file = "product/productList.jsp" %>
</c:if>
<c:if test="${jsp == 'godeleteproduct'}">
	<%@ include file = "product/deleteForm.jsp" %>
</c:if>

<c:if test="${jsp == 'goreadproduct'}">
	<%@ include file = "product/detailList.jsp" %>
</c:if> 

<c:if test="${jsp == 'gocartlist'}">
	<%@ include file = "product/gocartList.jsp" %>
</c:if>

<c:if test="${jsp == 'gobuy'}">
	<%@ include file = "product/orderList.jsp"%>
</c:if>

<c:if test="${jsp == 'gomypage'}">
	<%@ include file = "member/mypage.jsp"%>
</c:if>

<!-- footer begin -->
<hr id="hr2">

<a id="toTop" href="#"><img src="resources/img/up-arrow-icon.png" width="55" height="55" alt="맨 위로"></a>

 <div id="clear">
 	<div id="footer1">
 	<h5>CUSTOMER CENTER</h5>
 	<h6>고객센터</h6>
 	<h2>010-4663-2861</h2>
 	<p>평일 : 08:30 ~ 18:00</p>
 	<p>주말, 공휴일 휴무</p>
 	</div>
 	<div id="footer2">
 	<h5>교환/반품 주소</h5>
 	<h5>인천 광역시 부평구 부일로 113-11</h5>
 	<h5>T.010-4663-2861</h5>
 	<p>교환, 반품 상품을 보내기 전에</p>
 	<p>고객센터로 연락주시기 바랍니다.</p>
 	</div>
 </div>
 <br><br><br><br><br><br><br><br><br>
<div id="footer3">
<br>
<p id="f_p">당사의 모든 제작물의 저작권은 JToyShop에 있으며, 무단복제나 도용은 저작권법(제97조5항)에 의해 금지되고 있습니다. 이를 위반시 법적인 책임을 받을 수 있습니다.</p>
<p id="f_p">Made By JinJu</p>
</div>
</body>
</html>
