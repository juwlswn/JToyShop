<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="<c:url value="/resources/js/jquery-3.2.1.min.js"/>"></script>
<script type="text/javascript">
	function del(member) {
		window.open("memberdel","delcheck","width=300px, height= 200px");
	}
</script>
<style type="text/css">
#updatetable{
	margin: auto;
	border: 1px solid black;
}
#updatetable tr td{
	padding: 10px;
}
</style>


<div id="updatediv">
<form action="update" method="post">
	<table id="updatetable">
	 	<tr>
	 		<td><h2>[ 회원정보 ]</h2></td>
	 	</tr>
		<tr>
			<th>아이디</th>
			<td>
				<input type="text" id="id" name="id" value="${member.id}" readonly="readonly">
			</td>
		</tr>
		<tr>
			<th>이름</th>
			<td><input type="text" id="name" name="name" value="${member.name}"></td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><input type="password" id="password" name="password" value="${member.password}"></td>
		</tr>
		<tr>
			<th>이메일</th>
			<td>
				<input type="text" name="email1" id="email1" style="width:100px" value="${email1}"> @
				<input type="text" name="email2" id="email2" style="width:100px;" value="${email2}">
			</td>
		</tr>
		
		<tr>
			<th>주소</th>
			<td>
			
			<input type="text" id="address" name="address" value="${member.address}">
			</td>
		</tr>
		
		<tr>
			<th>전화번호</th>
			<td>
			<input type="text" id="phone" name="phone" placeholder="예)01012345678" value="${member.phone}"><br>
			</td>
		</tr>
		
		<tr>
			<th>생년월일</th>
			<td>
			<input type="text" id="birth" name="birth" placeholder="예)19950509" value="${member.birth}">
			</td>
		</tr>
		<tr>
			<th colspan="2">
			<input type="submit" value="수정하기">
			<input type="button" value="회원탈퇴" onclick="del('${member}');">
			</th>
		</tr>
	</table>
</form>
</div>