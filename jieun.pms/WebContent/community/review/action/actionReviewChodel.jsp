<%@page import="java.util.List"%>
<%@page import="jieun.pms.community.service.PostServiceImpl"%>
<%@page import="jieun.pms.community.service.PostService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<%	
	PostService postService = new PostServiceImpl();
	String[] reviewNum = request.getParameterValues("revNo");
	int ckeck = 0;
	
	for(int i=0; i<reviewNum.length; i++){
		int reviewNo = Integer.parseInt(reviewNum[i]);
		int delComm = postService.deleteProductComm(reviewNo);
		boolean delete = postService.deleteProduct(reviewNo);
		if(delete = true) ckeck++;
	}
	if(ckeck == reviewNum.length){
%>		
		<script>alert('게시물이 삭제 되었습니다.'); location.href = '../review.jsp';</script>
<%

	}
	else{
%>
		<script>alert('게시물 삭제에 실패 하였습니다.'); location.href = './review.jsp';</script>
<%	
	}

%>