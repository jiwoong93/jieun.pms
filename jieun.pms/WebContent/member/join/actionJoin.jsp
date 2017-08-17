<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="jieun.pms.member.join.service.JoinServiceImpl"%>
<%@page import="jieun.pms.member.join.service.JoinService"%>
<%@page import="jieun.pms.member.join.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html">
<%
	request.setCharacterEncoding("UTF-8");

	String memId = request.getParameter("mem_id");
	String memLevel = "1";
	String memName = request.getParameter("mem_name");
	String memPw = request.getParameter("mem_pw");
	String memEmail = request.getParameter("mem_email1") + "@" + request.getParameter("mem_email2") ;
	String memBirth = request.getParameter("mem_birth");
	String memPhone = request.getParameter("mem_phone1") + request.getParameter("mem_phone2") + request.getParameter("mem_phone3");
	String memGender = request.getParameter("mem_gender");
	String memZipcode = request.getParameter("mem_zipcode");
	String memStreet = request.getParameter("mem_street");
	String memAddr = request.getParameter("mem_addr");
	String dogCode = request.getParameter("dog_code");
	String regDate = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
	
	Member member = new Member(memId, memLevel, memName, memPw, memEmail, memBirth, memPhone, memGender, memZipcode, memStreet, memAddr, dogCode, regDate);
	JoinService joinService = new JoinServiceImpl();
	if(joinService.addMember(member) == 1){
%>
		<script>alert('가입 성공!'); location.href = '../login/login.jsp';</script>
<%  
	} else {
%>
		<script>alert('가입 실패!'); location.href = '../login/login.jsp';</script>
<%
	}
%>

	