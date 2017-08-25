<%@page import="java.util.ArrayList"%>
<%@page import="jieun.pms.order.domain.OrderDate"%>
<%@page import="java.sql.Date"%>
<%@page import="jieun.pms.order.domain.Order"%>
<%@page import="java.util.List"%>
<%@page import="jieun.pms.order.service.OrderServiceImpl"%>
<%@page import="jieun.pms.order.service.OrderService"%>
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
	<script>alert('로그인 후에 이용해주세요.'); location.href = '<%=pathOrder%>member/login/login.jsp?page=mypage';</script>
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
			<li><a href="./passwordCheck.jsp">나의  정보</a><hr></li>
		</ul>
	</div>
	
	<div class="mypageContents">
		<form  method="get" action="./orderlist.jsp">
		<input type="date" name="startDate"> ~ <input type="date" name="endDate">
		<input type="submit" name="search" value="조회">
		</form>
		<%
			OrderService orderService = new OrderServiceImpl();
			String search = request.getParameter("search");
			OrderDate orderDate = new OrderDate();
			orderDate.setMemId((String)session.getAttribute("sessionId"));
			List<Order> orders = new ArrayList<>();
		%>
			<table id="orderTable">
				<tr class="first">
					<td>주문번호</td>
					<td>주문날짜</td>
					<td>총 구매금액</td>
					<td>주문상태</td>
					<td>운송장번호</td>
				</tr>
		<%
			if(search != null && !search.equals("") && search.equals("조회")){
				orderDate.setStartDate(request.getParameter("startDate") +" 00:00:00");
				orderDate.setEndDate(request.getParameter("endDate")+" 23:59:59");
				orders = orderService.orderDate(orderDate);
			}
			else{
				orders = orderService.getMemOrders((String)session.getAttribute("sessionId"));
			}
		
		%>
				<tr><td colspan="6" id="line"><hr></td></tr>
<% 
			for(int i=0; i<orders.size();i++){
%>
				<tr>
					<td><%=orders.get(i).getOrderNo()%></td>
					<td><%=orders.get(i).getOrderDate()%></td>
					<td><%=orders.get(i).getPayment()%></td>
<%							if(orders.get(i).getStatus().equals("0")){
%>
							<td>취소상품</td>
							<td></td>
<%	
						}else if(orders.get(i).getStatus().equals("1")){
%>
							<td>상품준비중 <a href="./action/actionCancelOrder.jsp?no=<%=orders.get(i).getOrderNo()%>"><input type="button" name="delete" value="취소"></a></td>
							<td></td>
<%		
						}else if(orders.get(i).getStatus().equals("2")){
%>
							<td>교환상품</td>
							<td></td>
<%									
						}else if(orders.get(i).getStatus().equals("3")){
%>
							<td>배송완료 <a href="./action/actionChangeOrder.jsp?no=<%=orders.get(i).getOrderNo()%>"><input type="button" name="change" value="교환"></a></td>
							<td>123-456-8910</td>
<%									
						}else{
%>
							<td></td>
							<td></td>
<%	
							
						} 
%>
				</tr>
<%
			}
		%>
			</table>
		<%
		%>
		
	</div>
</div><br/><br/><br/><br/>
<%
}
%>
<%@ include file="../common/footer.jsp"%>