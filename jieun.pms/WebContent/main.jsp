<jsp:include page="./common/actionHeader.jsp"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html">
<link rel="stylesheet" href="./res/css/main.css?ver=2">
<script src="./res/js/main.js"></script>
<body>
<% request.setCharacterEncoding("UTF-8"); %>
<div class="slideshow">
    <div class="slideshow-slides">
        <a href="" class="slide" id="slide-1"><img src="./res/img/banner/banner_1.jpg" alt="" width="1280px" height="300px"></a>
        <a href="" class="slide" id="slide-2"><img src="./res/img/banner/banner_2.jpg" alt="" width="1280px" height="300px"></a>
        <a href="" class="slide" id="slide-3"><img src="./res/img/banner/banner_3.jpg" alt="" width="1280px" height="300px"></a>
    </div>
    <div class="slideshow-nav">
        <a href="#" class="prev">Prev</a>
        <a href="#" class="next">Next</a> 
    </div>
    <div class="slideshow-indicator"></div>
</div>


<div class="item">
<center>내가 제일 잘나가</center>
<hr border=3 width="83%">
<center>
<ul>
<% 
	for(int i=1; i<5; i++){
		if(i==1){
%>
			<div style="float:left; margin:10px 10px 10px 220px;" width="85%">
<%		} else { %>
			<div style="float:left; margin:10px;" width="85%">
<%		} %>
			<a href="./product/productdetail.jsp?no=<%= i %>" class="" id="best_<%=i%>"><img src="./res/img/best_item/best_<%=i%>.jpg" width="300px" height="300px"></a>
			<div>상품명</div>
			<div>가격</div>
		</div>
<%
	}
%>
</ul>
</center>
</div>
<div class="item">
<center>새로 들어온 아가들</center>
<hr border=3 width="83%">
<center>
<% 
	for(int i=1; i<5; i++){
		if(i==1){
%>
			<div style="float:left; margin:10px 10px 10px 220px;" width="85%">
<%		} else { %>
			<div style="float:left; margin:10px;" width="85%">
<%		} %>
			<a href="./product/productdetail.jsp?no=<%= i %>" class="" id="best_<%=i%>"><img src="./res/img/new_item/new_<%=i%>.jpg" width="300px" height="300px"></a>
			<div>상품명</div>
			<div>가격</div>
		</div>
<%
	}
%>
</center>

</div>

<div class="item2">
<center>어맛! 이건 꼭 사야해!</center>
<hr border=3 width="83%">
<center>
<% 
	for(int i=1; i<5; i++){
		if(i==1){
%>
			<div style="float:left; margin:10px 10px 10px 220px;" width="85%">
<%		} else { %>
			<div style="float:left; margin:10px;" width="85%">
<%		} %>
			<a href="./product/productdetail.jsp?no=<%= i %>" class="" id="nust_<%=i%>"><img src="./res/img/must_item/must_<%=i%>.jpg" width="300px" height="300px"></a>
			<div>상품명</div>
			<div>가격</div>
		</div>
<%
	}
%>
</center>
</div>

<%@ include file="./common/footer.jsp"%>