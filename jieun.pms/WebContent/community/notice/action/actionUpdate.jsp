<%@page import="jieun.pms.community.notice.domain.Post"%>
<%@page import="jieun.pms.community.notice.service.PostServiceImpl"%>
<%@page import="jieun.pms.community.notice.service.PostService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<%
	PostService postService = new PostServiceImpl();
	Post post = new Post();
	post.setNoticeNo(Integer.parseInt(request.getParameter("noticeNo")));
	post.setNoticeSubject(request.getParameter("noticeSubject"));
	post.setNoticeContents(request.getParameter("noticeContent"));
	
	boolean update = postService.updateNotice(post);
	
	if(update == true){
%>		
		<script>alert('게시물이 수정되었습니다.'); location.href = '../noticeview.jsp?noticeNo=<%=request.getParameter("noticeNo")%>';</script>
<%
	}else{
%>		
		<script>alert('게시물 수정에 실패하였습니다.'); location.href = '../noticeview.jsp';</script>
<%	
	}
%>