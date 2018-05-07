<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="resources/js/jquery-3.2.1.min.js"></script>
<title>아이디중복확인</title>
<style type="text/css">
h2 {
	text-align: center;
}
table {
	margin: auto;
	margin-top: 80px;
}
div {
	margin: auto;
}
</style>
<script type="text/javascript">
$('#h3').css('color','red');
function check() {
	var id = $('#id').val();
	if (id == '') {
		alert('아이디란을 입력해주세요.');
		return false;
	}
}
function usethis(id) {
	opener.document.getElementById('id').value = id;
	window.close();
}
</script>
</head>
<body>
	<form action="idcheck" onsubmit="return check();">
		 <table>
		  	<tr>
		 		<td>
		 			<h2> [ 아이디 중복 확인 ] </h2>
		 		</td>
		 	</tr>
		 	<tr>
		 		<td>
		 			<input type="text" id="id" name = "id" value="${id}">
					<input type="submit" value="확인">
		 		</td>	
		 	</tr>
		 </table>
	</form>
	<div>
		<c:if test="${idok == true}">
			<h3>${id}는 사용 가능한 아이디 입니다.</h3> <input type="button" value="사용하기" onclick="usethis('${id}')">
		</c:if>
		
		<c:if test="${idok == false }">
			<h3>${id}는 사용 불가능한 아이디 입니다.</h3>
		</c:if>
	</div>
</body>
</html>