
<%@page import="jieun.pms.order.service.OrderServiceImpl"%>
<%@page import="jieun.pms.order.service.OrderService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<%
	OrderService orderService = new OrderServiceImpl();
	int orderNo = Integer.parseInt(request.getParameter("no"));
	boolean cancel = orderService.cancelDeal(orderNo);
	if(cancel == true){
%>		
		<script>alert('주문이 취소되었습니다.'); location.href = '../orderlist.jsp';</script>
<%
	}
	else{
%>
		<script>alert('주문 취소에 실패하였습니다.'); location.href = '../orderlist.jsp';</script>
<%	
	}
	
%>
