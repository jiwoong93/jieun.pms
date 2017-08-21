<jsp:include page="../common/actionHeader.jsp"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" href="../res/css/manager.css?ver=2">
<script language="javascript">
	function showSub(obj) {
		f = document.forms.form1;

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
	
	function checkDisable(frm)
	{
	    if( frm.itemSize_s.checked == true ){
		   frm.textbox_s.disabled = false;
		} 
	    else 
		{
		   frm.textbox_s.disabled = true;
		}    
	    if( frm.itemSize_m.checked == true ){
			frm.textbox_m.disabled = false;
		} 
		else 
		{
			frm.textbox_m.disabled = true;
		}
	    if( frm.itemSize_l.checked == true ){
			frm.textbox_l.disabled = false;
		} 
		else 
		{
			frm.textbox_l.disabled = true;
		}
	    if( frm.itemSize_xl.checked == true ){
			frm.textbox_xl.disabled = false;
		} 
		else 
		{
			frm.textbox_xl.disabled = true;
		}
	}
	function div_OnOff(v){
		if(v == "size_no"){
			document.getElementById('sizeNo').style.display = ""; 
			document.getElementById('sizeYes').style.display = "none";
		}else{
			document.getElementById('sizeYes').style.display = "";
			document.getElementById('sizeNo').style.display = "none"; 
		} 
		
		 if(v == "size_yes"){
		   document.getElementById('sizeYes').style.display = "";
		   document.getElementById('sizeNo').style.display = "none";
		 }else{
			 document.getElementById('sizeNo').style.display = "";
		   document.getElementById('sizeYes').style.display = "none";
		 }
	}
	
</script>
<body>
<div class="modiDelProd">
	<form action="./action/actionProductRegist.jsp"  name="form1" >
	<h2>상품 등록</h2><br>
		<table class="regProduct">
			<tr>
				<td>상품ID</td>
				<td><input type="text" name="itemId" placeholder="상품 아이디를 입력해주세요" required="required"></td>
			</tr>
			<tr>
				<td>상품이름</td>
				<td><input type="text" name="itemName" placeholder="상품 이름을 입력해주세요" required="required"></td>
			</tr>
			<tr>
				<td>상품이미지</td>
				<td><input type="file" name="itemImg"></td>
			</tr>
			<tr>
				<td>상품상세이미지</td>
				<td><input type="file" name="itemImgDetail"></td>
			</tr>
			<tr>
				<td>카테고리</td>
				<td>
				
					<select name="category" onChange="showSub(this.options[this.selectedIndex].value);">
							<option value="category">카테고리</option>
							<option value="10">사료</option>
							<option value="20">간식</option>
							<option value="hygiene">위생</option>
							<option value="beauty">미용</option>
							<option value="50">의류</option>
							<option value="accessory">악세사리</option>
							<option value="70">장난감</option>
							<option value="80">하우스</option>
					</select> <select name="SUB1" style="display: none;">
							<option value="30">하위카테고리</option>
							<option value="31">배변</option>
							<option value="32">탈취제</option>
							<option value="33">귀·눈 위생</option>
					</select> <select name="SUB2" style="display: none;">
							<option value="40">하위카테고리</option>
							<option value="41">가위</option>
							<option value="42">브러쉬</option>
					</select> <select name="SUB3" style="display: none;">
							<option value="60">하위카테고리</option>
							<option value="61">자동줄·하네스</option>
							<option value="62">배낭</option>
							<option value="63">헤어핀·모자</option>
							<option value="64">양말·신발</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>판매가격</td>
				<td><input type="number" name="itemPrice" placeholder="판매 가격을 입력해주세요" required="required" min="0" max="999999">원</td>
			</tr>
			<tr>
				<td>사이즈 / 판매수량</td>
				<td>
				<div style="float:left;">
					<input type="radio" name="itemSize" value="size_no" onclick="div_OnOff(this.value);" checked="checked">없음 &nbsp; 
				</div>
				<div id="sizeNo">
					<input type="number" name="textbox" min="0" max="999">개 &nbsp; 
				</div>
				<div>
					<input type="radio" name="itemSize" value="size_yes" onclick="div_OnOff(this.value);">있음 &nbsp; 
				</div>
				<div id="sizeYes" style="display:none">
					<input type="checkbox" name="itemSize_s" value="s" onClick="checkDisable(this.form)">s &nbsp; 
					<input type="number" name="textbox_s" min="0" max="999"> 개&nbsp; 
					
					<input type="checkbox" name="itemSize_m" value="m" onClick="checkDisable(this.form)">m &nbsp; 
					<input type="number" name="textbox_m" min="0" max="999">개 &nbsp; 
					
					<input type="checkbox" name="itemSize_l" value="l" onClick="checkDisable(this.form)">l &nbsp; 
					<input type="number" name="textbox_l" min="0" max="999"> 개&nbsp; 
					
					<input type="checkbox" name="itemSize_xl" value="xl" onClick="checkDisable(this.form)">xl &nbsp;
					<input type="number" name="textbox_xl" min="0" max="999"> 개&nbsp;  
				</div>
				
				</td>
			</tr>
		</table>
		<button type="button">미리보기</button>
		<button type="submit">등록</button>
		<a href="./manageProduct.jsp"><button type="button">취소</button></a>
	</form>
</div>
</body>
<%@ include file="../common/footer.jsp"%>