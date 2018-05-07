<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="<c:url value="/resources/js/jquery-3.2.1.min.js"/>"></script>
<title>Insert title here</title>
<script type="text/javascript">
$(document).ready(function() {
	$('#no').on('click',no_del);
});
function no_del() {
	window.close();
}
function yes() {
	this.window.close();
	opner.location.href = "goupdateForm";
}
</script>
<style type="text/css">
body {
	background-image: url(resources/img/mdelimg.PNG);
	background-size: 320px;
	background-repeat: no-repeat;
}
</style>
</head>
<body>
	<div>
		<form action="delete">
			<input type="submit" value="아무리 생각해도 탈퇴" onsubmit="return yes();">
			<input type="button" value="는 싫어요" id="no">
		</form>
	</div>
</body>
</html>