<%@page import="jieun.pms.member.login.domain.Member"%>
<%@page import="jieun.pms.member.login.service.MemberServiceImpl"%>
<%@page import="jieun.pms.member.login.service.MemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html">
<%
	String memPw = request.getParameter("check_pw");
	String memId = session.getAttribute("sessionId").toString();	

	MemberService memberService = new MemberServiceImpl();
	Member member = memberService.getMember(memId);
	
	if(member.getMemPw().equals(memPw)){
%>
		<script>
			location.href='./myinfo.jsp?id=<%=memId%>';
		</script>
<%		
	} else {
%>
		<script>
			alert('비밀번호를 확인해주세요.');
			location.href='./passwordCheck.jsp';
		</script>
<%
	}
%>