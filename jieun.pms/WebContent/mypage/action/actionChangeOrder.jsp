
<%@page import="jieun.pms.order.service.OrderServiceImpl"%>
<%@page import="jieun.pms.order.service.OrderService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<%
	OrderService orderService = new OrderServiceImpl();
	int orderNo = Integer.parseInt(request.getParameter("no"));
	boolean change = orderService.changeDeal(orderNo);
	if(change == true){
%>		
		<script>alert('교환 신청이 완료되었습니다.'); location.href = '../orderlist.jsp';</script>
<%
	}
	else{
%>
		<script>alert('교환 신청에 실패하였습니다.'); location.href = '../orderlist.jsp';</script>
<%	
	}
	
%>
