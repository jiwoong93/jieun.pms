<%@page import="jieun.pms.community.service.PostServiceImpl"%>
<%@page import="jieun.pms.community.service.PostService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<%	
	PostService postService = new PostServiceImpl();
	int itemNo = Integer.parseInt(request.getParameter("revNo"));
	boolean delete = postService.deleteProduct(itemNo);
	
	if(delete == true){
%>		
		<script>alert('상품이 삭제 되었습니다.'); location.href = './review.jsp';</script>
<%
	}
	else{
%>
		<script>alert('상품 삭제에 실패 하였습니다.'); location.href = '../reviewview.jsp';</script>
<%	
	}
			
%>