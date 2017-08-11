
<%@page import="jieun.pms.product.domain.Category"%>
<%@page import="jieun.pms.product.domain.Product"%>
<%@page import="java.util.List"%>
<%@page import="jieun.pms.product.service.ProductServiceImpl"%>
<%@page import="jieun.pms.product.service.ProductService"%>
<jsp:include page="../common/actionHeader.jsp"/>
<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<link rel="stylesheet" href="../res/css/productList.css">
<%
	ProductService productService = new ProductServiceImpl();
	String requestCategory = request.getParameter("category");
	List<Product> products = productService.getProducts(requestCategory);
	
	Category category = new Category(Integer.parseInt(requestCategory));
%>
<body>
<div class="item">
<div class="itemTitle">
<h2><%=category.getCategoryStr()%></h2>
</div>
<hr>

<% 
	if(products.size() != 0){
		for(int i=0; i<products.size();i++){
			if(i==0){
	%>
				<div style="float:left;" >
				<a href="./productdetail.jsp?name=<%=products.get(i).getItemName()%>" class="" id="<%=category.getCategoryStr() + products.get(i).getItemNo()%>">
				<img src="../res/img/product/<%=category.getCategoryStr()%>/<%=products.get(i).getItemImg()%>"></a>
				<div><%=products.get(i).getItemName() %></div>
				<div><%=products.get(i).getItemPrice() %></div>
				</div>
	<%		
			} 
			else { 
	%>
				<div style="float:left;">
	<%
				if(!(products.get(i-1).getItemName().equals(products.get(i).getItemName()))){
	%>				
					<a href="./productdetail.jsp?name=<%=products.get(i).getItemName()%>" class="" id="<%=category.getCategoryStr() + products.get(i).getItemNo()%>">
					<img src="../res/img/product/<%=category.getCategoryStr()%>/<%=products.get(i).getItemImg()%>"></a>
					<div><%=products.get(i).getItemName() %></div>
					<div><%=products.get(i).getItemPrice() %></div>
	<%			}
	%>			
				</div>
	<%		}
		}
	}
	else{
	%>
		<div>상품이 없습니다.</div>
	<%		
	}
	%>
</div>
</body>
<%@ include file="../common/footer.jsp"%>

