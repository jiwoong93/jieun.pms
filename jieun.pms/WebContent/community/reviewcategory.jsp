<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
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
	<form name="select_machine">
		<select name=" "
			onChange="showSub(this.options[this.selectedIndex].value);">
			<option value="category">카테고리</option>
			<option value="food">사료</option>
			<option value="snack">간식</option>
			<option value="hygiene">위생</option>
			<option value="beauty">미용</option>
			<option value="clothes">의류</option>
			<option value="accessory">악세사리</option>
			<option value="toy">장난감</option>
			<option value="house">하우스</option>
		</select> <select name="SUB1" style="display: none;">
			<option value="subCategory">하위카테고리</option>
			<option value="poo">배변</option>
			<option value="deo">탈취제</option>
			<option value="earNose">귀·눈 위생</option>
		</select> <select name="SUB2" style="display: none;">
			<option value="subCategory">하위카테고리</option>
			<option value="scissor">가위</option>
			<option value="brush">브러쉬</option>
		</select> <select name="SUB3" style="display: none;">
			<option value="subCategory">하위카테고리</option>
			<option value="string">자동줄·하네스</option>
			<option value="bag">배낭</option>
			<option value="hairAcc">헤어핀·모자</option>
			<option value="footAcc">양말·신발</option>
		</select> <input type="submit" value="선택">
	</form>
</body>
</html>