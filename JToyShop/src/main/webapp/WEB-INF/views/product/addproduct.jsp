<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<form action="pro_insert" method="post" enctype="multipart/form-data">
		<table>
			<tr>
				<td>상품 코드</td>
				<td><input type="text" id="pcode" name="pcode"></td>
			</tr>
			
			<tr>	
				<td>상품명</td>
				<td><input type="text" id="pname" name="pname"></td>
			</tr>
			
			<tr>	
				<td>수량</td>
				<td><input type="text" id="num" name="num"></td>
			</tr>
			
			<tr>	
				<td>가격</td>
				<td><input type="text" id="price" name="price"></td>
			</tr>
			<tr>	
				<td>카테고리</td>
				<td>
					<select id="category" name="category">
						<option value="boychar">남아캐릭터</option>
						<option value="girlchar">여아캐릭터</option>
						<option value="kidult">키덜트/취미</option>
						<option value="sale">세일</option> 
					</select>
				</td>
			</tr>
			<tr>	
				<td></td>
				<td><input type="file" name="upload"></td>
			</tr>
			
		</table>
		<input type="submit" value="저장">
	</form>