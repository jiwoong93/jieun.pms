<%@page import="jieun.pms.community.domain.Comm"%>
<%@page import="jieun.pms.community.domain.Post"%>
<%@page import="jieun.pms.product.service.ProductServiceImpl"%>
<%@page import="jieun.pms.product.service.ProductService"%>
<%@page import="jieun.pms.community.service.PostServiceImpl"%>
<%@page import="jieun.pms.community.service.PostService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<link rel="stylesheet" href="../../res/css/community.css?ver=18">
<form action="./action/actionReviewComm.jsp?revNo=${post.revNo}">
<input type="hidden" name="revNo" value="<%=request.getParameter("revNo")%>">
<table class="board_table4" width="615" border="1"
	style="border-collapse: collapse; margin-left: 15px">
	<tr>
		<td width="93" style="text-align: center">댓글작성</td>
		<td width="50">
		<input type="text" name="revComment" style="width: 450px; border: 0px;" />
		<%
                  String currentIdc = (String) session.getAttribute("sessionId");
                  if (currentIdc != null && currentIdc != "") {
               %>
		<input type="submit" value="등록">
<%                  }
               %>
		</td>
	</tr>
</table>
</form>
