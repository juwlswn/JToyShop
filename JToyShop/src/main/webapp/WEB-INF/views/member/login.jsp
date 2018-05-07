<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">
function rightcheck() {
	
	var	id = $('#id').val();
	var pw = $('#password').val();
	
	if (id == '') {
		alert('아이디를 입력해주세요.');
		return false;
	}
	
	if (pw== '') {
		alert('아이디를 입력해주세요.');
		return false;
	}
	
}
</script>
<style type="text/css">
#logindiv {
	width: 470px;
	height: 250px;
	background-image: url(resources/img/minion.PNG);
	margin: auto;
	border-radius: 12px;
}
.logtable {
	margin: auto;
	text-align: center;
}
.button
{
  display: inline-block;
  margin: auto;
  padding: 15px 25px;
  font-size: 24px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #ffffff;
  background-color: #FFA07A;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999999;
}
.button:hover
{
    background-color: #FFDAB9;
}
.button:active
{
  background-color: #DB7093;
  box-shadow: 0 5px #666666;
  transform: translateY(4px);
}
#logbottomimg{
	margin-left: 500px;
	border-radius: 40%;
}
</style>
	<div id="logindiv">
	<form action="login" method="post" onclick="return rightcheck()">
		<table class="logtable">
			<tbody>
				<tr>
					<th><span class="s">ID</span></th>
					<td><input type="text" name="id" placeholder="로그인"></td>
				</tr>
				<tr>
					<th><span class="s">PW</span></th>
					<td><input type="password" name="password" placeholder="비밀번호"></td>
				</tr>
			</tbody>
			<tr>
				<td colspan="2">
					<input type="submit" value="login" class="button">
				</td>
			</tr>
		</table>
	</form>
	</div>
	<img id="logbottomimg" src="data:image/jpeg;base64,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">
