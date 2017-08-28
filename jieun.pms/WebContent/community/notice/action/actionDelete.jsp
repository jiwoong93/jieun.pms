<%@page import="jieun.pms.community.notice.service.PostServiceImpl"%>
<%@page import="jieun.pms.community.notice.service.PostService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<%
	PostService postService = new PostServiceImpl();
	String[] noticeNo = request.getParameterValues("noticeNo");
	int check = 0;
	for(int i=0; i<noticeNo.length;i++){
		int noticeNum = Integer.parseInt(noticeNo[i]);
		boolean delete = postService.deleteNotice(noticeNum);
		if(delete==true) check++;
	}
	
	if(check == noticeNo.length){
%>		
		<script>alert('게시물이 삭제되었습니다.'); location.href = '../notice.jsp';</script>
<%
	}else{
%>		
		<script>alert('게시물이 삭제에 실패하였습니다.'); location.href = '../notice.jsp';</script>
<%	
	}
%>