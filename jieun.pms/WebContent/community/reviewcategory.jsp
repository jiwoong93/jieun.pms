<%@page import="jieun.pms.category.service.CategoryServiceImpl"%>
<%@page import="jieun.pms.category.service.CategoryService"%>
<%@page import="jieun.pms.category.domain.Category"%>
<%@page import="jieun.pms.category.domain.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<script language="javascript">
	function showSub(obj) {
		var cate1 = obj.split('/');
		location.href='./reviewcategory.jsp?cate1='+ cate1[1];
	}
	
	function subVal(obj) {
		var cate2 = obj.split('/');
		location.href='./reviewcategory.jsp?cate1='+ cate2[0] + '&cate2=' + cate2[2];
	}

	function setOpener(){
	    var file1=document.getElementById("file1").value.split('/');
	    var file2=document.getElementById("file3").value.split('/');
	    
	    opener.setValue(file1[0], file2[0], file2[1]);
	    self.close();
	  }
</script>
<body>
<%
	String cate1 = request.getParameter("cate1");
	String cate2 = request.getParameter("cate2");
	CategoryService categoryService = new CategoryServiceImpl();
	List<Category> firstCategorys = categoryService.firstCate();
	List<Category> secondCategorys = categoryService.secondCate();
	List<Product> products;

%>
<center>
	<form name="f1">
		<select name="itembox" id="file1" onChange="showSub(this.options[this.selectedIndex].value);">
			<option value="">카테고리</option>
			<% 
				for(int i=0; i<firstCategorys.size(); i++){
			%>
						<option value="<%=firstCategorys.get(i).getCateTitle()%>/<%=firstCategorys.get(i).getCateNo()%>" <%=firstCategorys.get(i).getCateNo().equals(cate1)?"selected":""%> ><%=firstCategorys.get(i).getCateTitle()%></option>
			<%
				}
			%>
		</select> 
		
		<% if(!(cate1 == null || cate1.equals(null))){ 
			List<Category> selectCate = categoryService.selectSecondCate(cate1);
			if(selectCate.size() != 0){
		%>
			<select id="file2" name="SUB" onchange="subVal(this.options[this.selectedIndex].value);">
				<option value="">카테고리</option>
				<%
					for(int i=0; i<selectCate.size(); i++){
				%>
						<option value="<%=cate1 %>/<%=selectCate.get(i).getCateTitle()%>/<%=selectCate.get(i).getCateNo()%>" <%=selectCate.get(i).getCateNo().equals(cate2)?"selected":""%> ><%=selectCate.get(i).getCateTitle()%></option>
				<%
					}
				%>
			</select> 
			<%} %>
		<% } %>
		<select name="SUB4" id="file3">
			<option value="">==상품선택==</option>
		<!-- 아무것도 선택하지 않았을 경우 -> 전체 상품 -->
		<% if((cate1 == null || cate1.equals(null)) && (cate2 == null || cate2.equals(null))){ 
			products = categoryService.cateAllProducts();
				for(int i=0; i<products.size(); i++){
		%>
					<option value="<%=products.get(i).getItemName()%>/<%=products.get(i).getItemNo()%>"><%=products.get(i).getItemName() %></option>
		<%
				}
		%>
			
		<!-- 카테고리 처음것만 선택한 경우 -->
		<% } else if(!(cate1 == null || cate1.equals(null)) && (cate2 == null || cate2.equals(null))){ 
			products = categoryService.cateSecondProducts(cate1);
			for(int i=0; i<products.size(); i++){
		%>
				<option value="<%=products.get(i).getItemName()%>/<%=products.get(i).getItemNo()%>"><%=products.get(i).getItemName() %></option>
		<%
			}
		%>
			
		<!-- 카테고리를 두개 다 선택한 경우 -->
		<% } else if(!(cate1 == null || cate1.equals(null)) && !(cate2 == null || cate2.equals(null))){ products = categoryService.cateSecondProducts(cate1.substring(0));
			products = categoryService.cateProducts(cate2);
			for(int i=0; i<products.size(); i++){
		%>
				<option value="<%=products.get(i).getItemName()%>/<%=products.get(i).getItemNo()%>"><%=products.get(i).getItemName() %></option>
		<%
			}
		%>
		<% } %>
		</select>
		
		<input type="button" value="선택" onClick="javascript:setOpener()">
	</form>
	</center>
</body>
</html>