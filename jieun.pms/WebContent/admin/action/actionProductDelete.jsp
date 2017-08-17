<%@page import="jieun.pms.product.service.ProductServiceImpl"%>
<%@page import="jieun.pms.product.service.ProductService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<%	
	ProductService productService = new ProductServiceImpl();
	int itemNo = Integer.parseInt(request.getParameter("no"));
	boolean delete = productService.deleteProduct(itemNo);
	
	if(delete == true){
%>		
		<script>alert('상품이 삭제 되었습니다.'); location.href = '../manageProduct.jsp';</script>
<%
	}
	else{
%>
		<script>alert('상품 삭제에 실패 하였습니다.'); location.href = '../manageProduct.jsp';</script>
<%	
	}
			
%>