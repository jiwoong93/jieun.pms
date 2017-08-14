<%@page import="jieun.pms.member.update.service.UpdateServiceImpl"%>
<%@page import="jieun.pms.member.update.service.UpdateService"%>
<%@page import="jieun.pms.member.update.domain.UpdateMember"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html">
<%
	request.setCharacterEncoding("UTF-8");
	
	String memId = request.getParameter("memId");
	String memLevel = request.getParameter("memLevel");
	String memName = request.getParameter("memName");
	String memPw = request.getParameter("memPw");
	String memEmail = request.getParameter("memEmail1") + "@" + request.getParameter("memEmail2") ;
	String memBirth = request.getParameter("memBirth");
	String memPhone = request.getParameter("memPhone1") + request.getParameter("memPhone2") + request.getParameter("memPhone3");
	String memGender = request.getParameter("memGender");
	String memZipcode = request.getParameter("memZipcode");
	String memStreet = request.getParameter("memStreet");
	String memAddr = request.getParameter("memAddr");
	String dogCode = request.getParameter("dogCode");
	String regDate = request.getParameter("regDate");
	
	UpdateMember updateMember = new UpdateMember(memId, memLevel, memName, memPw, memEmail, memBirth, memPhone, memGender, memZipcode, memStreet, memAddr, dogCode, regDate);
	UpdateService updateService = new UpdateServiceImpl();
	
	if(updateService.updateMember(updateMember) == 1){
%>
		<script>
			alert('수정성공');
			window.opener.location.reload(); self.close();
		</script>
<%
	} else {
%>
		<script>
			alert('수정실패 개발자에게 문의 하세요.');
			window.opener.location.reload(); self.close();
		</script>
<%
	}
%>