<%@page import="jieun.pms.product.domain.CategoryKor"%>
<%@page import="jieun.pms.product.domain.Category"%>
<%@page import="jieun.pms.product.service.ProductServiceImpl"%>
<%@page import="jieun.pms.product.domain.Product"%>
<%@page import="java.util.List"%>
<%@page import="jieun.pms.product.service.ProductService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<script language="javascript">
	function showSub(obj) {
		f = document.forms.f1;

		switch(obj){
		case '위생': 
			f.SUB1.style.display = ""; f.SUB1.disabled = false;
			f.SUB2.style.display = "none";
			f.SUB3.style.display = "none";
			break;
		case '미용': 
			f.SUB1.style.display = "none";
			f.SUB2.style.display = ""; f.SUB2.disabled = false;
			f.SUB3.style.display = "none";
			break;
		case '악세사리': 
			f.SUB1.style.display = "none";
			f.SUB2.style.display = "none";
			f.SUB3.style.display = ""; f.SUB3.disabled = false;
			break;
		default : 
			f.SUB1.style.display = "none"; f.SUB1.disabled = true;
			f.SUB2.style.display = "none"; f.SUB1.disabled = true;
			f.SUB3.style.display = "none"; f.SUB1.disabled = true;
			break;
		}
	}

	function setOpener(){
	    var file1=document.getElementById("file1");
	    var file2=document.getElementById("file2").value.split('/');
	    
	    opener.setValue(file1.value, file2[0], file2[1]);
	    self.close();
	  }

</script>
<body>
<%
	ProductService productService = new ProductServiceImpl();
	List<Product> products = productService.getProducts("50");
	List<Product> allList = productService.getAllProducts();

%>
<center>
	<form name="f1" action="">
		<select name="itembox" id="file1" onChange="showSub(this.options[this.selectedIndex].value);">
			<option id="cate" >카테고리</option>
			<% 
				for(int i=0; i<allList.size(); i++){
					if(allList.get(i).getCategory().equals("10") || allList.get(i).getCategory().equals("20") || allList.get(i).getCategory().equals("30") || allList.get(i).getCategory().equals("40") || allList.get(i).getCategory().equals("50") || allList.get(i).getCategory().equals("60") || allList.get(i).getCategory().equals("70") || allList.get(i).getCategory().equals("80")){
						CategoryKor category = new CategoryKor(Integer.parseInt(allList.get(i).getCategory()));
			%>
						<option value="<%=category.getCategoryStr() %>"><%=category.getCategoryStr() %></option>
			<%
					}
				}
			%>
			<!-- <option value="사료">사료</option>
			<option value="간식">간식</option>
			<option value="위생">위생</option>
			<option value="미용">미용</option>
			<option value="의류">의류</option>
			<option value="악세사리">악세사리</option>
			<option value="장난감">장난감</option>
			<option value="하우스">하우스</option> -->
		</select> 
		<select name="SUB1" style="display: none;" disabled>
			<option value="">하위카테고리</option>
			<option value="배변">배변</option>
			<option value="탈취제">탈취제</option>
			<option value="귀·눈 위생">귀·눈 위생</option>
		</select> 
		<select name="SUB2" style="display: none;" disabled>
			<option value="">하위카테고리</option>
			<option value="가위">가위</option>
			<option value="브러쉬">브러쉬</option>
		</select> 
		<select name="SUB3" style="display: none;" disabled>
			<option value="">하위카테고리</option>
			<option value="자동줄·하네스">자동줄·하네스</option>
			<option value="배낭">배낭</option>
			<option value="헤어핀·모자">헤어핀·모자</option>
			<option value="양말·신발">양말·신발</option>
		</select>
		<select name="SUB4" id="file3">
			<option value="">==상품선택==</option>
			<% 
				for(int i=0; i<products.size(); i++){
			%>
					<option value="<%=products.get(i).getItemName()%>/<%=products.get(i).getItemNo()%>"><%=products.get(i).getItemName()%></option>

			<%
				}
			%>
		</select>
		
		<input type="button" value="선택" onClick="javascript:setOpener()">
	</form>
	</center>
</body>
</html>