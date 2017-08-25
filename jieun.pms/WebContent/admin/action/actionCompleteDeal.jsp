<%@page import="jieun.pms.order.service.OrderServiceImpl"%>
<%@page import="jieun.pms.order.service.OrderService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<%
	OrderService orderService = new OrderServiceImpl();
	int orderNo = Integer.parseInt(request.getParameter("no"));
	boolean update = orderService.completeDeal(orderNo);
	if(update == true){
%>		
		<script>alert('배송이 시작되었습니다.'); location.href = '../manageSelling.jsp';</script>
<%
	}
	else{
%>
		<script>alert('배송에 실패하였습니다.'); location.href = '../manageSelling.jsp';</script>
<%	
	}
	
%>
