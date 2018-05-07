<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<script type="text/javascript">
$(document).ready(function() {  
	$('#checkbtn').on('click',idcheckbtn);
	$('input').css('height','30px');
});
function check() {
	var eid = $('#id').val();
	var ename = $('#name').val();
	var epassword = $('#password').val();
	var epasswordc = $('#passwordc').val();
	var eemail1 = $('#email1').val();
	var eemail2 = $('#email2').val();
	

	if (eid == '') {
		alert('아이디를 입력해주세요.');
		return false;
	}
	
	if (ename == '') {
		alert('이름을 입력해주세요.');
		return false;
	}
	
	if (epassword  == '') {
		alert('비밀번호를 입력해주세요.');
		return false;
	}
	
	if (epassword != epasswordc) {
		alert('비밀번호 동일하게 입력해주세요.');
		return false;
	}
	
	if (eemail1 == '') {
		alert('이메일을 입력해주세요.');
		return false;
	}
	
	if (eemail2 == '') {
		alert('이메일을 입력해주세요.');
		return false;
	}
}

function emailadd() {
	 if (form.selectEmail.value == '1') {
		 form.email2.readonly = false;
		 form.email2.value = '';
         form.email2.focus();
      } else {
          form.email2.readonly = true;
          form.email2.value = form.selectEmail.value;
      }
}

function idcheckbtn() {
	ad = window.open('gocheckid','','width = 500px , height = 300px , top = 200px, left =500px');
}
</script>
<style type="text/css">
table {
	margin: auto;
}
.j_btn{
	border-radius: 20%;
}
#jointable tr td{
	width: 400px;
	padding: 10px;
}
#simplejoinlogo {
	border: 2px dotted #FFFACD;
	text-align: center;
	background-color: #FFFFF0;
}
</style>
</head>
<body>
	<div id="simplejoinlogo">
	<h1>간편가입</h1>
	</div>
	<br>
	<form name="form" action="join" method="post" onsubmit="return check();">
		<table id="jointable">
			<tr>
				<th>아이디</th>
				<td>
					<input type="text" id="id" name="id" placeholder="아이디" readonly="readonly">
					<input type="button" value="아이디 중복 체크" id="checkbtn" class="j_btn">
				</td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input type="text" id="name" name="name" placeholder="이름"></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" id="password" name="password" placeholder="비밀번호"></td>
			</tr>
			<tr>
				<th>비밀번호 확인</th>
				<td><input type="password" id="passwordc" name="passwordc" placeholder="비밀번호 확인"></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td>
					<input type="text" name="email1" id="email1" style="width:100px" placeholder="이메일"> @
					<input type="text" name="email2" id="email2" style="width:100px;">
					<select style="width:100px;margin-right:10px" name="selectEmail" id="selectEmail" onchange="emailadd()">
						<option value="1">직접입력</option>
						<option value="naver.com" selected >naver.com</option>
						<option value="hanmail.net">hanmail.net</option>
						<option value="hotmail.com">hotmail.com</option>
						<option value="nate.com">nate.com</option>
						<option value="yahoo.co.kr">yahoo.co.kr</option>
						<option value="empas.com">empas.com</option>
						<option value="dreamwiz.com">dreamwiz.com</option>
						<option value="freechal.com">freechal.com</option>
						<option value="lycos.co.kr">lycos.co.kr</option>
						<option value="korea.com">korea.com</option>
						<option value="gmail.com">gmail.com</option>
						<option value="hanmir.com">hanmir.com</option>
						<option value="paran.com">paran.com</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: center;">
					<input class="j_btn" type="submit" value="join">		
				</td>
			</tr>
		</table>
	</form>
</body>
</html>