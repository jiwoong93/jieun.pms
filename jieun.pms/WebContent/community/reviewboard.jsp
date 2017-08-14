<%@page import="java.util.ArrayList"%>
<%@page import="jieun.pms.product.domain.Category"%>
<%@page import="jieun.pms.product.domain.Product"%>
<%@page import="java.util.List"%>
<%@page import="jieun.pms.product.service.ProductServiceImpl"%>
<%@page import="jieun.pms.product.service.ProductService"%>
<jsp:include page="../common/actionHeader.jsp" />
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset=UTF-8">
<link rel="stylesheet" href="../res/css/community.css?ver=1">

</head>
<script language="javascript">
	function showSub(obj) {
		f = document.forms.select_machine;
		
		if (obj == "30") {
			f.SUB1.style.display = "";
			f.SUB2.style.display = "none";
			f.SUB3.style.display = "none";
			f.SUB4.style.display = "";
		} else if (obj == "40") {
			f.SUB1.style.display = "none";
			f.SUB2.style.display = "";
			f.SUB3.style.display = "none";
			f.SUB4.style.display = "";
		} else if (obj == "60") {
			f.SUB1.style.display = "none";
			f.SUB2.style.display = "none";
			f.SUB3.style.display = "";
			f.SUB4.style.display = "";
		} else {
			f.SUB1.style.display = "none";
			f.SUB2.style.display = "none";
			f.SUB3.style.display = "none";
			f.SUB4.style.display = "";
		}
		
	}
</script>
<%
	ProductService productService = new ProductServiceImpl();
	List<Product> products = new ArrayList<Product>();

	if(session.getAttribute("reviewCategory") == null || session.getAttribute("reviewCategory").equals("")){
		
	}
	else{
		String selectCategory = (String)session.getAttribute("reviewCategory");
		products = productService.getProducts(selectCategory);
		
	}
%>

<body>
	<form enctype="multipart/form-data" name="select_machine">
		<div class="mypage">
			<div class="mypageTitle">
				REVIEW
				<hr>
			</div>

			<div class="mypageMenu">
				<ul>
					<li><a href="./community.jsp">NOTICE</a>
						<hr></li>
					<li><a href="./q&a.jsp">Q&A</a>
						<hr></li>
					<li><a href="./review.jsp">REVIEW</a>
						<hr></li>
				</ul>
			</div>

			<div class="mypageContents">
				<table class="board_table" border="1">
					<tr>
						<td>
							<div class="board_head">
								제목: <input type="text" size="79"
									placeholder="제목에 상품이름을 반드시 적어주세요!" />
							</div> <br> &nbsp;&nbsp;&nbsp;카테고리: 
							<select name="category" onChange="showSub(this.options[this.selectedIndex].value);">
								<option value="category">카테고리</option>
								<option value="10">사료</option>
								<option value="20">간식</option>
								<option value="30">위생</option>
								<option value="40">미용</option>
								<option value="50">의류</option>
								<option value="60">악세사리</option>
								<option value="70">장난감</option>
								<option value="80">하우스</option>
						</select> <select name="SUB1" style="display: none;">
								<option value="subCategory">하위카테고리</option>
								<option value="31">배변</option>
								<option value="32">탈취제</option>
								<option value="33">귀·눈 위생</option>
						</select> <select name="SUB2" style="display: none;">
								<option value="subCategory">하위카테고리</option>
								<option value="41">가위</option>
								<option value="42">브러쉬</option>
						</select> <select name="SUB3" style="display: none;">
								<option value="subCategory">하위카테고리</option>
								<option value="61">자동줄·하네스</option>
								<option value="62">배낭</option>
								<option value="63">헤어핀·모자</option>
								<option value="64">양말·신발</option>
						</select>
						<select name="SUB4" style="display: none;">
								<option value="subCategory">상품</option>
						</select>

							<table class="board_table2" border="1" align="center">
								<tr>
									<!-- 파일첨부 -->
									<td height="10" align="center"><input type="file"
										name="filename"><br></td>
								</tr>
								<tr>
									<td height="202" colspan="4"><textarea
											style="resize: none; width: 610px; height: 420px;"></textarea></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				<div class="qnaborder_button">
					<a href="./review.jsp"><input type="button" value="목록" /></a> <input
						type="submit" value="등록" />
				</div>
			</div>
		</div>
	</form>
</body>
</html>
<%@ include file="../common/footer.jsp"%>