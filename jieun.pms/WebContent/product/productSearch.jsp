<jsp:include page="../common/actionHeader.jsp" />
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html">
<link rel="stylesheet" href="../res/css/productSearch.css">
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
</script>
<body style="margin-top: 350px;">
	<form class="search" action="#" method="get" name="form1">
		<center>
			<table>
				<tr>
					<td align="center" rowspan="5" width="100">상세검색</td>
					<td align="left">검색어</td>
					<td><input type="text" name="searchtext" /></td>
					<td rowspan="5" width="100"><input class="search"
						type="submit" value="검색"></td>
				</tr>
				<tr align="left">
					<td>카테고리</td>
					<td><select name="category" onChange="showSub(this.options[this.selectedIndex].value);">
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
					</select></td>
				</tr>
				<tr align="left">
					<td>판매가격대</td>
					<td><input type="number" name="rowprice" />원 ~ <input type="number" name="highprice" />원</td>
				</tr>
				<tr align="left">
					<td>검색정렬기준</td>
					<td><select id="sort" name="sort">
							<option value="sort">정렬기준</option>
							<option value="new">신상품순</option>
							<option value="popular">인기순</option>
							<option value="row">낮은가격순</option>
							<option value="high">높은가격순</option>
							<option value="name">이름순</option>
					</select></td>
				</tr>
			</table>
		</center>
	</form>


	<div class="item" style="margin-top:500px">
		<center>
			<%
				for (int i = 1; i < 5; i++) {
					if (i == 1) {
			%>
			<div style="float: left; margin: 10px 10px 10px 155px;" width="85%">
				<%
					} else {
				%>
				<div style="float: left; margin: 10px;" width="85%">
					<%
						}
					%>
					<a href="./productdetail.jsp?no=<%=i%>" class="" id="best_<%=i%>"><img
						src="../res/img/new_item/new_<%=i%>.jpg" width="300px"
						height="300px"></a>
					<div>상품명</div>
					<div>가격</div>
				</div>
				<%
					}
				%>
			
		</center>
	</div>
	<br />
	<br />
	<%@ include file="../common/footer.jsp"%>