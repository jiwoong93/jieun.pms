<jsp:include page="../common/actionHeader.jsp"/>
<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<link rel="stylesheet" href="../res/css/productList.css">
<body>
<div class="item">
<div class="itemTitle">
<h2>TITLE</h2>
</div>
<hr>
<% 
	for(int i=1; i<5; i++){
		if(i==1){
%>
			<div style="float:left;" >
<%		} else { %>
			<div style="float:left;">
<%		} %>
			<a href="../productdetail.jsp?no=<%= i %>" class="" id="best_<%=i%>"><img src="../res/img/new_item/new_<%=i%>.jpg"></a>
			<div>상품명</div>
			<div>가격</div>
		</div>
<%
	}
%>
</div>
</body>
<%@ include file="../common/footer.jsp"%>