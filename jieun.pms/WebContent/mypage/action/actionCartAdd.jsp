<%@page import="jieun.pms.product.service.ProductServiceImpl"%>
<%@page import="jieun.pms.product.service.ProductService"%>
<%@page import="jieun.pms.product.domain.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<%
	ProductService productService = new ProductServiceImpl();
	String itemName = request.getParameter("name").trim();
	List<Product> products = productService.getProduct(itemName);
%>
<%=session.getAttribute("sessionId")%>/<%=products.get(0).getItemNo()%>/<%=products.get(0).getItemPrice()%>