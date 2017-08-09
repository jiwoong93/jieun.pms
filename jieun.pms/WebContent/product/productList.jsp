<jsp:include page="../common/actionHeader.jsp"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<link rel="stylesheet" href="../res/css/productSearch.css"></link>

<body style="margin-top: 350px;">
<div class="item" style="margin-bottom: 500px">
<center>
<% 
	for(int i=1; i<5; i++){
		if(i==1){
%>
			<div style="float:left; margin:10px 10px 10px 155px;" width="85%">
<%		} else { %>
			<div style="float:left; margin:10px;" width="85%">
<%		} %>
			<a href="./productdetail.jsp?no=<%= i %>" class="" id="best_<%=i%>"><img src="../res/img/new_item/new_<%=i%>.jpg" width="300px" height="300px"></a>
			<div>상품명</div>
			<div>가격</div>
		</div>
<%
	}
%>
</center>
</div>
</body>