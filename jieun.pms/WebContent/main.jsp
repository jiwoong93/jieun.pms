<jsp:include page="./common/actionHeader.jsp"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<link rel="stylesheet" href="./res/css/main.css?var=14">
<script src="./res/js/main.js"></script>
<body>
<% request.setCharacterEncoding("UTF-8"); %>
<div class="slideshow">
    <div class="slideshow-slides">
        <a href="" class="slide" id="slide-1"><img src="./res/img/banner/banner_1.jpg" alt=""></a>
        <a href="" class="slide" id="slide-2"><img src="./res/img/banner/banner_2.jpg" alt=""></a>
        <a href="" class="slide" id="slide-3"><img src="./res/img/banner/banner_3.jpg" alt=""></a>
    </div>
    <div class="slideshow-nav">
        <a href="#" class="prev">Prev</a>
        <a href="#" class="next">Next</a> 
    </div>
    <div class="slideshow-indicator"></div>
</div>


<div class="item">
	<h3>내가 제일 잘나가</h3>
	<hr width="1300px">
	
	<% 
		for(int i=1; i<5; i++){
			if(i==1){
	%>
				<div class="itemImg">
	<%		} else { %>
				<div class="itemImg">
	<%		} %>
				<a href="./product/productdetail.jsp?no=<%= i %>" class="" id="best_<%=i%>"><img src="./res/img/best_item/best_<%=i%>.jpg"></a>
				<div>상품명</div>
				<div>가격</div>
				</div>
	<%
		}
	%>
				</div>
</div>

<div class="item">				
	<h3>새로 들어온 아가들</h3>
	<hr width="1300px">
	<% 
		for(int i=1; i<5; i++){
			if(i==1){
	%>
				<div class="itemImg">
	<%		} else { %>
				<div class="itemImg">
	<%		} %>
				<a href="./product/productdetail.jsp?no=<%= i %>" class="" id="new_<%=i%>"><img src="./res/img/new_item/new_<%=i%>.jpg"></a>
				<div>상품명</div>
				<div>가격</div>
				</div>
	<%
		}
	%>
				</div>
</div>

<div class="background"></div>

<div class="item2">
	<h3>어맛! 이건 꼭 사야해!</h3>
	<hr width="1300px">
	<% 
		for(int i=1; i<5; i++){
			if(i==1){
	%>
				<div class="itemImg">
	<%		} else { %>
				<div class="itemImg">
	<%		} %>
				<a href="./product/productdetail.jsp?no=<%= i %>" class="" id="must_<%=i%>"><img src="./res/img/must_item/must_<%=i%>.jpg"></a>
				<div>상품명</div>
				<div>가격</div>
				</div>
	<%
		}
	%>
				</div>
</div>

</body>
<%@ include file="./common/footer.jsp"%>