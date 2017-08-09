<jsp:include page="../common/actionHeader.jsp"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<link rel="stylesheet" href="../res/css/productSearch.css"></link>

<body style="margin-top: 350px;">
<div class="item" style="margin-bottom: 500px">
<center>
	<div style="float:left; margin:10px 10px 10px 155px;" width="85%">
		<div style="float:left; margin:10px;" width="85%">
			<a href="../order/01.html" class="" id="best_1"><img src="../res/img/best_item/best_1.jpg" width="300px" height="300px"></a>
			<div>상품명</div>
			<div>가격</div>
		</div>
	</div>
	
	<div style="float:left; margin:10px 10px 10px 155px;" width="85%">
		<div style="float:left; margin:10px;" width="85%">
			<a href="../order/01.html" class="" id="best_2"><img src="../res/img/best_item/best_2.jpg" width="300px" height="300px"></a>
			<div>상품명</div>
			<div>가격</div>
		</div>
	</div>
	
	<div style="float:left; margin:10px 10px 10px 155px;" width="85%">
		<div style="float:left; margin:10px;" width="85%">
			<a href="../order/01.html" class="" id="best_3"><img src="../res/img/best_item/best_3.jpg" width="300px" height="300px"></a>
			<div>상품명</div>
			<div>가격</div>
		</div>
	</div>
</center>
</div>
</body>
=======
<%@ include file="../common/actionHeader.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html">
<link rel="stylesheet" href="../res/css/search.css">
<body style="margin-top: 350px;">
<form  class="search" action="#" method="get">
<center>
<table >
	<tr>
 		<td align="center" rowspan="5" width="100">상세검색</td>
		<td align="left">검색어</td><td><input type="text" name="itemname"/></td>
		<td rowspan="5" width="100"><input class="search" type="submit" value="검색" ></td>
	</tr>
	<tr align="left">
 		<td >상품분류</td>
 			<td>
 				<select id="category" name="category">
 					<option value="food">사료</option>
 					<option value="snack">간식</option>
 					<option value="bath">위생</option>
 					<option value="beauty">미용</option>
 					<option value="cloth">의류</option>
 					<option value="accessory">악세사리</option>
 					<option value="toy">장난감</option>
 					<option value="house">하우스</option>
 				</select>
 			</td>
	</tr> 
	<tr align="left">
 		<td>판매가격대</td>
 		<td><input type="number" name="rowprice"/>원 ~ <input type="number" name="highprice"/>원</td>
	</tr> 
	<tr align="left">
 		<td>검색정렬기준</td>
 			<td>
 				<select id="sort" name="sort" >
 					<option value="new">신상품순</option>
 					<option value="popular">인기순</option>
 					<option value="row">낮은가격순</option>
 					<option value="high">높은가격순</option>
 					<option value="name">이름순</option>
 				</select>
 			</td>
	</tr> 
</table>
</center>
</form>


<div class="item">
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
<br/><br/>
<%@ include file="../common/footer.jsp"%>
>>>>>>> branch 'master' of https://github.com/jiwoong93/jieun.pms.git
