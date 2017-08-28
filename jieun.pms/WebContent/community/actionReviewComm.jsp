<%@page import="jieun.pms.community.domain.Post"%>
<%@page import="jieun.pms.community.domain.Comm"%>
<%@page import="jieun.pms.community.service.PostServiceImpl"%>
<%@page import="jieun.pms.community.service.PostService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	PostService postservice = new PostServiceImpl();
	Comm comm = new Comm();
	
	comm.setRevNo(Integer.parseInt(request.getParameter("revNo")));
	comm.setRevComment(request.getParameter("revComment"));
	comm.setMemId((String)session.getAttribute("sessionId"));
	
	boolean insertComm = postservice.insertComm(comm);

	if(insertComm == true){
		%>
<script>alert('댓글이 등록되었습니다.'); location.href = './reviewview.jsp';</script>
<%
			}
			else{
		%>
<script>alert('댓글 등록이 실패 하였습니다. 댓글 내용을 다시 입력하세요.'); location.href = './reviewview.jsp';</script>
<%	
			}
		%>