<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<%
	String cururl = request.getRequestURI().toString();
	String pageName = cururl.substring(cururl.lastIndexOf("/") + 1, cururl.length());
	String path = "";
	if(pageName.equals("main.jsp")){
		path = "./";
	} else if(pageName.equals("login.jsp") || pageName.equals("findId.jsp") || pageName.equals("findPw.jsp") || pageName.equals("join.jsp")) {
		path = "../../";
	} else {
		path = "../";
	}

	String currentId =(String)session.getAttribute("sessionId");
	if(currentId != null && currentId != ""){
		if(currentId.equals("admin")){
%>
			<jsp:include page="<%= path %>common/manageHeader.jsp" />
<%
		}else{
%>
			<jsp:include page="<%= path %>common/header.jsp" />
<%
		}
	}else{
%>
		<jsp:include page="<%= path %>common/header.jsp" />
<%
	}
%>