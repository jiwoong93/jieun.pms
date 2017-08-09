<jsp:include page="../common/actionHeader.jsp"/>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<link rel="stylesheet" href="../res/css/manager.css">
<script language="javascript">
	function showSub(obj) {
		f = document.forms.select_machine;

		if (obj == "hygiene") {
			f.SUB1.style.display = "";
			f.SUB2.style.display = "none";
			f.SUB3.style.display = "none";
		} else if (obj == "beauty") {
			f.SUB1.style.display = "none";
			f.SUB2.style.display = "";
			f.SUB3.style.display = "none";
		} else if (obj == "accessory") {
			f.SUB1.style.display = "none";
			f.SUB2.style.display = "none";
			f.SUB3.style.display = "";
		} else {
			f.SUB1.style.display = "none";
			f.SUB2.style.display = "none";
			f.SUB3.style.display = "none";
		}
	}
</script>
<body>
<form class="select_machine" action="./03.html">
	<h2>상품 등록</h2><br>
		<table class="regProduct">
			<tr>
				<td>상품이름</td>
				<td><input type="text" name="" placeholder="상품 이름을 입력해주세요"></td>
			</tr>
			<tr>
				<td>상품이미지</td>
				<td><input type="file" name="" value="사진첨부"></td>
			</tr>
			<tr>
				<td>상품상세이미지</td>
				<td><input type="file" name="" value="사진첨부"></td>
			</tr>
			<tr>
				<td>상세설명</td>
				<td><input type="text" name=""
					placeholder="상품에 대한 상세설명을 작성해주세요"></td>
			</tr>
			<tr>
				<td>카테고리</td>
				<td>
				
					<select name=" " onChange="showSub(this.options[this.selectedIndex].value);">
						<option value="category">카테고리</option>
						<option value="food">사료</option>
						<option value="snack">간식</option>
						<option value="hygiene">위생</option>
						<option value="beauty">미용</option>
						<option value="clothes">의류</option>
						<option value="accessory">악세사리</option>
						<option value="toy">장난감</option>
						<option value="house">하우스</option>
					</select>
					<select name="SUB1" style="display:none;">
						<option value="subCategory">하위카테고리</option>
						<option value="poo">배변</option>
						<option value="deo">탈취제</option>
						<option value="earNose">귀·눈 위생</option>
					</select> 
					<select name="SUB2" style="display: none;">
						<option value="subCategory">하위카테고리</option>
						<option value="scissor">가위</option>
						<option value="brush">브러쉬</option>
					</select> 
					<select name="SUB3" style="display: none;">
						<option value="subCategory">하위카테고리</option>
						<option value="string">자동줄·하네스</option>
						<option value="bag">배낭</option>
						<option value="hairAcc">헤어핀·모자</option>
						<option value="footAcc">양말·신발</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>판매가격</td>
				<td><input type="select" name="" placeholder="판매 가격을 입력해주세요">원</td>
			</tr>
			<tr>
				<td>판매수량</td>
				<td><input type="text" name="" placeholder="판매 수량을 입력해주세요">개</td>
			</tr>
			<tr>
				<td>사이즈</td>
				<td><input type="checkbox" name="" value="xs">xs &nbsp;
					<input type="checkbox" name="" value="s">s &nbsp; <input
					type="checkbox" name="" value="m">m &nbsp; <input
					type="checkbox" name="" value="l">l &nbsp; <input
					type="checkbox" name="" value="xl">xl &nbsp; <input
					type="text" name="">kg &nbsp; <input type="text" name="">g
				</td>
			</tr>
		</table>
		<button type="button">미리보기</button>
		<button type="submit">등록</button>
		<a href="./03.html"><button type="button">취소</button></a>
	</form>
</body>