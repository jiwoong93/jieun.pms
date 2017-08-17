<%@page import="jieun.pms.product.domain.Product"%>
<%@page import="jieun.pms.product.service.ProductServiceImpl"%>
<%@page import="jieun.pms.product.service.ProductService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<%
	ProductService productService = new ProductServiceImpl();
	Product product = new Product();
%>