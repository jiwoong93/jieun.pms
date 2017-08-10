<%@page import="jieun.pms.member.login.service.MemberServiceImpl"%>
<%@page import="jieun.pms.member.login.service.MemberService"%>
<%@page import="jieun.pms.member.login.dao.mapper.LoginMapper"%>
<%@page import="jieun.pms.member.login.domain.Member"%>
<%@page import="jieun.pms.config.Configuration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<%
	
	String memId = request.getParameter("mem_id");
	String memPw = request.getParameter("mem_pw");
	MemberService memberService = new MemberServiceImpl();
	Member member = memberService.getMember(memId);
%>	
<% 	
	if(member.getMemId().equals(memId)){ %>
<% 		if(member.getMemPw().equals(memPw)){  
			session.setAttribute("sessionId", member.getMemId());
			session.setAttribute("sessionPw", member.getMemPw());
			response.sendRedirect("../../main.jsp");
 		} else { 
%>			<script>alert('비밀번호를 확인하세요.'); location.href = 'login.jsp';</script>
<%			
 		}
	} else { %>
		<script>alert('아이디를 확인하세요.'); location.href = 'login.jsp';</script>
<% 		
	}  
%>

