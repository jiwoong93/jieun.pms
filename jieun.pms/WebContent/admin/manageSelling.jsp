<%@page import="jieun.pms.order.domain.Order"%>
<%@page import="java.util.List"%>
<%@page import="jieun.pms.order.service.OrderServiceImpl"%>
<%@page import="jieun.pms.order.service.OrderService"%>
<jsp:include page="../common/actionHeader.jsp"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<link rel="stylesheet" href="../res/css/manager.css?var=1">
<%
	OrderService orderService = new OrderServiceImpl();
	List<Order> orders = orderService.getOrders();
	int sumPayment = orderService.sumTotal();
	int countPayment = orderService.countTotal();
	int sumReal = orderService.sumReal();
	int countReal = orderService.countReal();
	
%>

<body>
	<div class="mngSelling">
		<div class="mngSellingHeader">
				<h2>판매 관리 페이지<hr></h2>
		</div>
		<div>
			<table class="mngSellingCount" border="1">
				<tr>
					<td colspan="3" > 총 실결재금액 / 건수 </td>
					<td> <fmt:formatNumber value="<%=sumPayment%>" pattern="#,###"/>/ <%=countPayment%> 건</td>
					<td> 실 주문금액 / 건수 </td>
					<td> <fmt:formatNumber value="<%=sumReal%>" pattern="#,###"/>/ <%=countReal%> 건</td>
				</tr>
			</table>
		</div>
		<div>
			<table class="mngSellingDetails" border="1">
				<tr height="30px"> 
					<td>주문일</td>
					<td>주문번호</td>
					<td>실결제금액</td>
					<td>결제수단</td>
					<td>상태</td>
					<td>배송</td>
					<td>거래완료</td>
				</tr>
				<%
					for(int i=0; i<orders.size();i++){
				%>
					<tr height="40px">
						<td><%=orders.get(i).getOrderDate()%></td>
						<td><%=orders.get(i).getOrderNo()%></td>
						<td><%=orders.get(i).getPayment()%></td>
						
				<%
						if(orders.get(i).getPaymentOption().equals("1")){
				%>			<td>카드</td>
				<%		}else if(orders.get(i).getPaymentOption().equals("2")){
				%>			<td>현금</td>
				<%		}else{
				%>			<td></td>
				<%	
						}
						
				 		if(orders.get(i).getStatus().equals("1")){
				%>			<td>결제완료</td>
							<td><a href="./action/actionCompleteDeal.jsp?no=<%=orders.get(i).getOrderNo()%>"><input type="button" id="start<%=i%>" value="배송시작"/></a></td>
							<td></td>
				<%			
						}
				 		else if(orders.get(i).getStatus().equals("0")){
				%>			<td>취소</td>
							<td ></td>
							<td ></td>
				<%			
						}else if(orders.get(i).getStatus().equals("3")){
				%>			<td>결제완료</td>
							<td ><input type="button" id="end<%=i%>" value="배송완료" disabled="disabled"/></td>
							<td >거래완료</td>
				<%			
						}
				 		else if(orders.get(i).getStatus() == null){
				%>			<td></td>
							<td ></td>
							<td ></td>
				<%			
						}
				%> 			
	
					</tr>
				<%	
					}
				%>
			</table>	
		</div>
	</div>
<%@ include file="../common/footer.jsp"%>