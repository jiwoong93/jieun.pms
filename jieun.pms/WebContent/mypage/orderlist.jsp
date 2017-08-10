<jsp:include page="../common/actionHeader.jsp"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<link rel="stylesheet" href="../res/css/orderlist.css">
<body>
<%
String cururlOrder = request.getRequestURI().toString();
String pageNameOrder = cururlOrder.substring(cururlOrder.lastIndexOf("/") + 1, cururlOrder.length());
String pathOrder = "";
if(pageNameOrder.equals("main.jsp")){
	pathOrder = "./";
} else if(pageNameOrder.equals("login.jsp") || pageNameOrder.equals("findId.jsp") || pageNameOrder.equals("findPw.jsp") || pageNameOrder.equals("join.jsp")) {
	pathOrder = "../../";
} else {
	pathOrder = "../";
}
%>
<%
if(session.getAttribute("sessionId") == null || session.getAttribute("sessionId").equals("")){
%>
	<script>alert('로그인 후에 이용해주세요.'); location.href = '<%=pathOrder%>member/login/login.jsp';</script>
<%
} else {
%>
<div class="mypage">
	<div class="mypageTitle">주문내역<hr></div>

	<div class="mypageMenu">
		<ul>
			<li><a href="./orderlist.jsp">주문내역</a><hr></li>
			<li><a href="./cart.jsp">장바구니</a><hr></li>
			<li><a href="./wishlist.jsp">위시리스트</a><hr></li>
			<li><a href="./mypost.jsp">내 게시물</a><hr></li>
			<li><a href="./myinfo.jsp">나의  정보</a><hr></li>
		</ul>
	</div>
	
	<div class="mypageContents">
		<form  method="get" action="./orderlist.jsp">
		<input type="date" name="startDate"> ~ <input type="date" name="lastDate">
		<input type="submit" name="search" value="조회">
		</form>
		<table id="orderTable">
			<tr class="first">
				<td>주문번호</td>
				<td>주문날짜</td>
				<td>총 구매금액</td>
				<td>주문상태</td>
				<td>운송장번호</td>
			</tr>
			
			<tr><td colspan="6" id="line"><hr></td></tr>
			
			<tr>
				<td>1234567</td>
				<td>2017/00/00</td>
				<td>25,000</td>
				<td>상품준비중 <input type="button" name="delete" value="X"></td>
				<td><a href="http://www.cjlogistics.com">000-000-0000</a></td>
			</tr>
		</table>
	</div>
</div><br/><br/><br/><br/>
<%
}
%>
<%@ include file="../common/footer.jsp"%>