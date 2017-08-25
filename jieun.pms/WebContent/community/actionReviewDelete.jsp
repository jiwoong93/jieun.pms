<%@page import="jieun.pms.community.service.PostServiceImpl"%>
<%@page import="jieun.pms.community.service.PostService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<%
	PostService postservice = new PostServiceImpl();
	int revNo = Integer.parseInt(request.getParameter("revNo"));
	out.println(revNo);
	%>