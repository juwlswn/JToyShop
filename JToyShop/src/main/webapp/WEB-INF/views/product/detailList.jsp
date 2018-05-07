<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">
$(document).ready(function() {
	$('#rp_showbtn').on('click', function() {
		$('#rp_showdv').slideToggle('slow');
	});
	$('#rp_bt').on('click',replyinsert);
	inint();
	
});	
function numadd() {
	var price = $('#price').val();
	var numcount = $('#numcount').val();
	var result = price * numcount + 2500;
	
	$('#totalprice').val(result);
}

function replyinsert() {
	var context = $('#context').val();
	var id = $('#id').val();
	var pcode = $('#pcode').val();
	
	$.ajax({
		url: 'insertreply',
		method: 'post',
		type: 'text',
		data: {pcode:pcode , id:id , context:context},
		success: function(result) {
			/* if (result =='1') {
				alert('저장 성공');
			}
			else {
				alert('컨트롤러에는 접속했으나 디비저장 실패');
			}
			alert('저장 성공');*/
			alert('저장 성공');
		}, 
		error: function() {
			alert('저장 실패');
		}
	});
}

 function inint() {
	var pcode = $('#pcode').val();
	
	$.ajax({
		url: 'replylist' ,
		method: 'get',
		data : {pcode:pcode},
		datatype: 'json',
		success: function(msg){
		
			var str = '<table id = "i">';	
			str += '<tr>';
			str += '<th>' + '작성자' + '</th>';
			str += '<th>' + '내용' + '</th>';
			str += '<th>' + '등록일' + '</th>';
			str += '</tr>';
			$.each(msg, function(key, item) {
				str += '<tr>';
				str += '<td>' + item.id + '</td>';
				str += '<td>' + item.context + '</td>';
				str += '<td>' + item.inputdate + '</td>';
				str += '</tr>';
			});
			str += '</table>';
			
			$('#listDiv').html(str);
		},
		error:function(err){
			alert('에러');
			console.log(err);
		}
	});
} 
			

</script>
<style type="text/css">
#proimg {
	float: left;
}
#detailimg{
	width: 600px;
}
#detailtable tr td{
	padding: 30px;
}
#detailtable{
	margin-left: 100px;
	margin: auto;
	margin-top: 80px;
}
.ft {
	border-bottom: 1px solid gray;
}
#b1
{
    border: none;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    font-size: 20px;
    border-radius: 12px;
    background-color: white; 
    color: black; 
    border: 5px solid yellow;
}
#i {
	width: 500px;
}
</style>
	<div id="proimg">
		<img src="productfile/${product.savedfile}" id="detailimg">
	</div>
	
	<div>
		<form name="form2" action="gocart" method="post">
		<table id="detailtable">
			<tr><td style="background-color: #FFE4E1; border-radius: 30%"><input type="text" style="background-color:#FFE4E1; text-align: center;" id="pname" name="pname" value="${product.pname}" readonly="readonly"><td></tr> 
			<tr class="ft"><td><input style="background-color:#FFE4E1;" type="text" id="price" name="price" value="${product.price}" readonly="readonly">원</td></tr>
			<tr class="ft"><td>배송비: 고정 (2500원)</td></tr>
			<tr class="ft">
				<td>
					수량: 
						<select name="numcount" id="numcount" onchange="numadd();">
						<option value="0" >선택하기</option>
						<option value="1">1개</option>
						<option value="2">2개</option>
						<option value="3">3개</option>
						<option value="4">4개</option>
						<option value="5">5개</option>
						</select>
				</td>
				
			</tr>
			<tr class="ft">
				<td>
					총 금액: 상품 + 2500 <br> =<input type="text" style="background-color:#FFE4E1;" id="totalprice" name = "totalprice">원
				</td>
			</tr>
			<tr>
				<td style="text-align: center;">
					<input type="submit" value="장바구니담기" id="b1">
				</td>
			</tr>
		</table>
		<input type="hidden" id="id" name="id" value="${loginId}">
		<input type="hidden" id="pcode" name="pcode" value="${product.pcode}">
		</form>
	</div>
	<hr>
	<h2>-- 상품문의 댓글 --</h2><input type="button" id="rp_showbtn" value="댓글 숨기기">
	<br><br><br>
	<div id="rp_showdv">
	<form>
	${loginId} : <input type="text" id="context" name="context"> 
	<c:if test="${loginId != null}">
	<input type="button" value="저장" id="rp_bt">
	</c:if>
	<c:if test="${loginId == null}">
	<p style="color: red;">댓글은 로그인 후에 이용이 가능합니다.</p>
	</c:if>
	<input type="hidden" id="id" name="id" value="${loginId}">
	<input type="hidden" id="pcode" name="pcode" value="${product.pcode}">
	</form>
	<hr>
	<div id="listDiv">
	

	
	</div>
	</div>