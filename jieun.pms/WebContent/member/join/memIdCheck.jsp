<%@page import="jieun.pms.member.join.service.JoinServiceImpl"%>
<%@page import="jieun.pms.member.join.service.JoinService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html">
<%
	String memId = request.getParameter("id");
	if(memId != null || !(memId.equals(null))){
		JoinService joinService = new JoinServiceImpl();
		if(joinService.countMember(memId) == 0){
%>
			<script>alert('사용 가능한 아이디 입니다.'); history.back();</script>
<%		
		} else {
%>
			<script>alert('이미 사용중인 아이디 입니다.'); location.href = './join.jsp';</script>
<%
		}
	} else {
%>
		<script>alert('아이디를 확인해 주세요.'); location.href = './join.jsp';</script>
<%
	}
%>
