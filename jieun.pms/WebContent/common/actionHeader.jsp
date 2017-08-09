<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<%
	String currentId =(String)session.getAttribute("sessionId");
	if(currentId != null && currentId != ""){
		if(currentId.equals("admin")){
%>
<jsp:include page="manageHeader.jsp" />
<%
		}else{
%>
<jsp:include page="header.jsp" />
<%
		}
	}else{
%>
<jsp:include page="header.jsp" />
<%
	}
%>