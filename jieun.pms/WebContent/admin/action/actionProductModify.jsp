<%@page import="jieun.pms.product.domain.Product"%>
<%@page import="jieun.pms.product.service.ProductServiceImpl"%>
<%@page import="jieun.pms.product.service.ProductService"%>
<%@page import="jieun.pms.member.login.service.MemberServiceImpl"%>
<%@page import="jieun.pms.member.login.service.MemberService"%>
<%@page import="jieun.pms.member.login.dao.mapper.LoginMapper"%>
<%@page import="jieun.pms.member.login.domain.Member"%>
<%@page import="jieun.pms.config.Configuration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<%
	int itemNum = Integer.parseInt(request.getParameter("no"));
	ProductService productService = new ProductServiceImpl();
	Product product = productService.getProductNo(itemNum);
	product.setItemName(request.getParameter("itemName"));
	product.setItemImg(request.getParameter("itemImg"));
	product.setItemImgDetail(request.getParameter("itemImgDetail"));
	
	if(request.getParameter("category").equals("hygiene")){
		product.setCategory(request.getParameter("SUB1"));
	}
	else if(request.getParameter("category").equals("beauty")){
		product.setCategory(request.getParameter("SUB2"));
	}
	else if(request.getParameter("category").equals("accessory")){
		product.setCategory(request.getParameter("SUB3"));
	}
	else if(request.getParameter("category").equals("category")){
		product.setCategory(null);
	}
	else{
		product.setCategory(request.getParameter("category"));
	}
	
	product.setItemAmount(Integer.parseInt(request.getParameter("itemAmount")));
	product.setItemPrice(Integer.parseInt(request.getParameter("itemPrice")));
	boolean update = productService.updateProduct(product);
	
	if(update == true){
%>		
		<script>alert('상품 정보가 수정되었습니다.'); location.href = '../manageProduct.jsp';</script>
<%
	}
	else{
%>
		<script>alert('상품 정보 수정에 실패 하였습니다.'); location.href = '../manageProductModify.jsp';</script>
<%	
	}
	
%>
