<%@page import="jieun.pms.community.notice.domain.Post"%>
<%@page import="jieun.pms.community.notice.service.PostServiceImpl"%>
<%@page import="jieun.pms.community.notice.service.PostService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<%
	PostService postService = new PostServiceImpl();
	Post post = new Post();
	post.setNoticeSubject(request.getParameter("noticeSubject"));
	post.setNoticeFileName(request.getParameter("noticeFilename"));
	post.setNoticeContents(request.getParameter("noticeContents"));
	
	boolean insert = postService.insertNotice(post);
	if(insert == true){
%>		
		<script>alert('게시물이 등록되었습니다.'); location.href = '../notice.jsp';</script>
<%
	}else{
%>		
		<script>alert('게시물 등록에 실패하였습니다.'); location.href = '../notice.jsp';</script>
<%	
	}
%>