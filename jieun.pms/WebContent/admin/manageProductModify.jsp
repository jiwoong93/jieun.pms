<%@page import="jieun.pms.product.domain.Category"%>
<%@page import="jieun.pms.product.domain.Product"%>
<%@page import="jieun.pms.product.service.ProductServiceImpl"%>
<%@page import="jieun.pms.product.service.ProductService"%>
<jsp:include page="../common/actionHeader.jsp"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" href="../res/css/manager.css?ver=2">
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
<%
	ProductService productService = new ProductServiceImpl();
	int itemNo = Integer.parseInt(request.getParameter("no").trim());
	Product product = productService.getProductNo(itemNo);

	Category category = new Category(Integer.parseInt(product.getCategory()));
%>
<body>
<div class="modiDelProd">
	<form>
		<h2>상품 수정/삭제</h2><br>
			<table class="regProduct">
				<tr>
					<td>상품번호</td>
					<td><input type="text" name="itemName" value="<%=product.getItemNo()%>"></td>
				</tr>
				<tr>
					<td>상품이름</td>
					<td><input type="text" name="itemName" value="<%=product.getItemName() %>"></td>
				</tr>
				<tr>
					<td>상품이미지</td>
					<td><input type="file" name="itemImg" value="<%=product.getItemImg()%>"></td>
				</tr>
				<tr>
					<td>상품상세이미지</td>
					<td><input type="file" name="itemImgDetail" value="<%=product.getItemImgDetail()%>"></td>
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
					<td>상품수량</td>
					<td><input type="select" name="itemPrice" value="<%=product.getItemAmount()%>" >개</td>
				</tr>
				<tr>
					<td>판매가격</td>
					<td><input type="select" name="itemPrice" value="<%=product.getItemPrice()%>">원</td>
				</tr>
				<tr>
					<td>사이즈</td>
					<td><%=product.getItemSize()%></td>
				</tr>
			</table>
			<button type="button">미리보기</button>
			<button type="submit">수정</button>
			<a href="./manageProduct.jsp"><button type="button">취소</button></a>
			<button type="button">삭제</button>
		</form>
	</div>
</body>
<%@ include file="../common/footer.jsp"%>