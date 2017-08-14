<%@page import="jieun.pms.member.join.service.JoinServiceImpl"%>
<%@page import="jieun.pms.member.join.service.JoinService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html">
<%
	String memId = request.getParameter("id");

	JoinService joinService = new JoinServiceImpl();
	joinService.delMember(memId);
	
%>
<script>
	alert('탈퇴 성공');
	location.href="./manageMem.jsp?ck=1";
</script>