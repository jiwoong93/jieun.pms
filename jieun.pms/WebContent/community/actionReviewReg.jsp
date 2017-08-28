<%@page import="jieun.pms.community.domain.Post"%>
<%@page import="java.util.List"%>
<%@page import="jieun.pms.product.domain.Product"%>
<%@page import="jieun.pms.product.service.ProductService"%>
<%@page import="jieun.pms.product.service.ProductServiceImpl"%>
<%@page import="jieun.pms.community.service.PostServiceImpl"%>
<%@page import="jieun.pms.community.service.PostService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<%
	PostService postservice = new PostServiceImpl();
	ProductService productservice = new ProductServiceImpl();
	Post review = new Post();
		
	String itemName = request.getParameter("itemName"); 
	List<Product> product = productservice.getProduct(itemName);
	
	review.setRevContents(request.getParameter("revContents"));
	review.setMemId((String)session.getAttribute("sessionId"));
	review.setItemNo(product.get(0).getItemNo());
	review.setRevFilename(request.getParameter("revFilename"));
	review.setRevSubject(request.getParameter("revSubject"));
		
	boolean insert = postservice.insertReview(review);
	
	if(insert == true){
%>		
		<script>alert('게시물이 등록되었습니다.'); location.href = './review.jsp';</script>
<%
	}
	else{
%>
		<script>alert('게시물 등록이 실패 하였습니다. 게시물 내용을 다시 입력하세요.'); location.href = './reviewboard.jsp';</script>
<%	
	}
%>

