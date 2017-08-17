<%@page import="jieun.pms.product.domain.Product"%>
<%@page import="jieun.pms.product.service.ProductServiceImpl"%>
<%@page import="jieun.pms.product.service.ProductService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<%
	ProductService productService = new ProductServiceImpl();
	String category = "";
	if(request.getParameter("category").equals("hygiene")){
		category = request.getParameter("SUB1");
	}
	else if(request.getParameter("category").equals("beauty")){
		category = request.getParameter("SUB2");
	}
	else if(request.getParameter("category").equals("accessory")){
		category = request.getParameter("SUB3");
	}
	else if(request.getParameter("category").equals("category")){
		category = null;
	}
	else{
		category = request.getParameter("category");
	}
	
	String size = "";
	if(request.getParameter("itemSize") != null || request.getParameter("itemSize").equals("")){
		size = request.getParameter("itemSize");
	}
	else{
		size = null;
	}
	
	Product product = new Product(request.getParameter("itemId"),request.getParameter("itemName"),request.getParameter("itemImg"),request.getParameter("itemImgDetail"),category,Integer.parseInt(request.getParameter("itemPrice")),Integer.parseInt(request.getParameter("itemAmount")),size);
	boolean insert = productService.insertProduct(product);
	if(insert == true){
%>		
		<script>alert('상품이 등록되었습니다.'); location.href = 'manageProduct.jsp';</script>
<%
	}
	else{
%>
		<script>alert('상품 등록이 실패 하였습니다. 상품 정보를 다시 입력하세요.'); location.href = 'manageProductRegist.jsp';</script>
<%	
	}
%>