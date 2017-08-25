<%@page import="jieun.pms.order.service.PageServiceImpl"%>
<%@page import="jieun.pms.order.service.PageService"%>
<%@page import="jieun.pms.order.domain.Page"%>
<%@page import="jieun.pms.order.domain.Order"%>
<%@page import="java.util.List"%>
<%@page import="jieun.pms.order.service.OrderServiceImpl"%>
<%@page import="jieun.pms.order.service.OrderService"%>
<jsp:include page="../common/actionHeader.jsp"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<link rel="stylesheet" href="../res/css/manager.css?var=1">
<%
	Page myPage = null;
	String currentPage = request.getParameter("currentPage");
	if(currentPage != null) myPage = new Page(Integer.parseInt(currentPage));
	else myPage = new Page();
	OrderService orderService = new OrderServiceImpl();
	
	PageService pageService = new PageServiceImpl(5, myPage);
	pageContext.setAttribute("pageMaker", pageService);
	pageContext.setAttribute("orders", orderService.getOrders(myPage));
	
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
				<c:forEach var="orderPost" items="${orders}">
				<tr height="40px">
					<td>${orderPost.orderDate}</td>
					<td>${orderPost.orderNo}</td>
					<td>${orderPost.payment}</td>
					<td>${orderPost.paymentOption}</td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				</c:forEach>
				
			</table>	
		</div>
	</div>
<%@ include file="../common/footer.jsp"%>