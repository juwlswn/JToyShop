<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style type="text/css">
#passcheck table{
	margin: auto;
}
#passcheck {
	text-align: center;
}
#passcheck table tr td{
	padding: 10px;
}
</style>
<div id="passcheck">
	 <h2>[ 회원 정보 보호를 위해 비밀번호를 입력해주세요. ]</h2>
	<form action="goupdateForm" method="post">
	<table>
		 <tr>
		 	<td>
				아이디
		 	</td>
		 	<td>
		 		<input type="text" id="id" name="id" value="${loginId}" readonly="readonly">
		 	</td>
		 </tr>
		 
		 <tr>
		 	<td>
		 		비밀번호
		 	</td>
		 	<td>
		 		<input type="password" id="password" name="password">
		 	</td>
		 </tr>
		 <tr>
		 	<td colspan="2" style="text-align: center;">
		 		<input type="submit" value="확인">
		 	</td>
		 </tr>
	</table>
	</form>
</div>