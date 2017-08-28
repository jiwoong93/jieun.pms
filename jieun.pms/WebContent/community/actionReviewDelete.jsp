<%@page import="jieun.pms.community.service.PostServiceImpl"%>
<%@page import="jieun.pms.community.service.PostService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<%	
	PostService postService = new PostServiceImpl();
	int reviewNo = Integer.parseInt(request.getParameter("revNo"));
	int delComm = postService.deleteProductComm(reviewNo);
	boolean delete = postService.deleteProduct(reviewNo);
	
	if(delete == true){
%>		
		<script>alert('게시물이 삭제 되었습니다.'); location.href = './review.jsp';</script>
<%
	}
	else{
%>
		<script>alert('게시물 삭제에 실패 하였습니다.'); location.href = '../reviewview.jsp';</script>
<%	
	}
			
%>