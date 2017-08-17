<%@page import="jieun.pms.member.join.service.JoinServiceImpl"%>
<%@page import="jieun.pms.member.join.service.JoinService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html">
<%
	String memId = request.getParameter("id");

	JoinService joinService = new JoinServiceImpl();
	
	if(joinService.delMember(memId) == 1){
		session.invalidate();
%>
		
		<script>
			alert('탈퇴 성공');
			location.href="../../main.jsp";
		</script>
<%	
	} else {
%>
		<script>
			alert('탈퇴 실패 관리자에게 문의 하세요.');
			location.href="./myinfo.jsp?id=<%=memId%>";
		</script>
<%
	}
%>