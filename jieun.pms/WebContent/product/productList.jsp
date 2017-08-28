
<%@page import="jieun.pms.product.service.ProductPageServiceImpl"%>
<%@page import="jieun.pms.product.service.ProductPostServiceImpl"%>
<%@page import="jieun.pms.product.service.ProductPostService"%>
<%@page import="jieun.pms.product.service.ProductPageService"%>
<%@page import="jieun.pms.product.domain.ProductPage"%>
<%@page import="jieun.pms.product.domain.Category"%>
<%@page import="jieun.pms.product.domain.Product"%>
<%@page import="java.util.List"%>
<%@page import="jieun.pms.product.service.ProductServiceImpl"%>
<%@page import="jieun.pms.product.service.ProductService"%>
<jsp:include page="../common/actionHeader.jsp"/>
<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<link rel="stylesheet" href="../res/css/productList.css?var=10">
<%
	ProductService productService = new ProductServiceImpl();
	String requestCategory = request.getParameter("category");
	int intCategory = Integer.parseInt(requestCategory);
	List<Product> products = productService.getProducts(requestCategory);
	
	Category category = new Category(intCategory);
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
	<%			if(intCategory >30 && intCategory<40){
	%>
					<a href="./productdetail.jsp?name=<%=products.get(i).getItemName()%>" class="" id="<%=category.getCategoryStr() + products.get(i).getItemNo()%>">
					<img src="../res/img/product/Bath/<%=category.getCategoryStr()%>/<%=products.get(i).getItemImg()%>"></a>
					<div>
					<% 
						if(products.get(i).getItemAmount() == 0){
					%>
						<del><%=products.get(i).getItemName() %></del><font color=red>(품절)</font>
					<%
						}else
					%>
						<%=products.get(i).getItemName() %>
					</div>
					<div><%=products.get(i).getItemPrice() %>원</div>
	<%	
				}
				else if(intCategory>40 && intCategory<50){
	%>
					<a href="./productdetail.jsp?name=<%=products.get(i).getItemName()%>" class="" id="<%=category.getCategoryStr() + products.get(i).getItemNo()%>">
					<img src="../res/img/product/Beauty/<%=category.getCategoryStr()%>/<%=products.get(i).getItemImg()%>"></a>
					<div>
					<% 
						if(products.get(i).getItemAmount() == 0){
					%>
						<del><%=products.get(i).getItemName() %></del><font color=red>(품절)</font>
					<%
						}else
					%>
						<%=products.get(i).getItemName() %>
					</div>
					<div><%=products.get(i).getItemPrice() %>원</div>
	<%	
				}
				else if(intCategory>60 && intCategory<70){
	%>
					<a href="./productdetail.jsp?name=<%=products.get(i).getItemName()%>" class="" id="<%=category.getCategoryStr() + products.get(i).getItemNo()%>">
					<img src="../res/img/product/Accessory/<%=category.getCategoryStr()%>/<%=products.get(i).getItemImg()%>"></a>
					<div>
					<% 
						if(products.get(i).getItemAmount() == 0){
					%>
						<del><%=products.get(i).getItemName() %></del><font color=red>(품절)</font>
					<%
						}else
					%>
						<%=products.get(i).getItemName() %>
					</div>
					<div><%=products.get(i).getItemPrice() %>원</div>
	<%	
				}
				else{
	%>
					<a href="./productdetail.jsp?name=<%=products.get(i).getItemName()%>" class="" id="<%=category.getCategoryStr() + products.get(i).getItemNo()%>">
					<img src="../res/img/product/<%=category.getCategoryStr()%>/<%=products.get(i).getItemImg()%>"></a>
					<div>
					<% 
						if(products.get(i).getItemAmount() == 0){
					%>
						<del><%=products.get(i).getItemName() %></del><font color=red>(품절)</font>
					<%
						}else
					%>
						<%=products.get(i).getItemName() %>
					</div>
					<div><%=products.get(i).getItemPrice() %>원</div>
	<%	
				}
	%>			</div>
	<%
			} 
			else { 
	%>
				<div style="float:left;">
	<%
				if(!(products.get(i-1).getItemName().equals(products.get(i).getItemName()))){
	%>				
				<div style="float:left;" >
	<%			if(intCategory >30 && intCategory<40){
	%>
					<a href="./productdetail.jsp?name=<%=products.get(i).getItemName()%>" class="" id="<%=category.getCategoryStr() + products.get(i).getItemNo()%>">
					<img src="../res/img/product/Bath/<%=category.getCategoryStr()%>/<%=products.get(i).getItemImg()%>"></a>
					<div>
					<% 
						if(products.get(i).getItemAmount() == 0){
					%>
						<del><%=products.get(i).getItemName() %></del><font color=red>(품절)</font>
					<%
						}else
					%>
						<%=products.get(i).getItemName() %>
					</div>
					<div><%=products.get(i).getItemPrice() %>원</div>
	<%	
				}
				else if(intCategory>40 && intCategory<50){
	%>
					<a href="./productdetail.jsp?name=<%=products.get(i).getItemName()%>" class="" id="<%=category.getCategoryStr() + products.get(i).getItemNo()%>">
					<img src="../res/img/product/Beauty/<%=category.getCategoryStr()%>/<%=products.get(i).getItemImg()%>"></a>
					<div>
					<% 
						if(products.get(i).getItemAmount() == 0){
					%>
						<del><%=products.get(i).getItemName() %></del><font color=red>(품절)</font>
					<%
						}else
					%>
						<%=products.get(i).getItemName() %>
					</div>
					<div><%=products.get(i).getItemPrice() %>원</div>
	<%	
				}
				else if(intCategory>60 && intCategory<70){
	%>
					<a href="./productdetail.jsp?name=<%=products.get(i).getItemName()%>" class="" id="<%=category.getCategoryStr() + products.get(i).getItemNo()%>">
					<img src="../res/img/product/Accessory/<%=category.getCategoryStr()%>/<%=products.get(i).getItemImg()%>"></a>
					<div>
					<% 
						if(products.get(i).getItemAmount() == 0){
					%>
						<del><%=products.get(i).getItemName() %></del><font color=red>(품절)</font>
					<%
						}else
					%>
						<%=products.get(i).getItemName() %>
					</div>
					<div><%=products.get(i).getItemPrice() %>원</div>
	<%	
				}
				else{
	%>
					<a href="./productdetail.jsp?name=<%=products.get(i).getItemName()%>" class="" id="<%=category.getCategoryStr() + products.get(i).getItemNo()%>">
					<img src="../res/img/product/<%=category.getCategoryStr()%>/<%=products.get(i).getItemImg()%>"></a>
					<div>
					<% 
						if(products.get(i).getItemAmount() == 0){
					%>
						<del><%=products.get(i).getItemName() %></del><font color=red>(품절)</font>
					<%
						}else
					%>
						<%=products.get(i).getItemName() %>
					</div>
					<div><%=products.get(i).getItemPrice() %>원</div>
	<%	
				}
	%>			</div>
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

