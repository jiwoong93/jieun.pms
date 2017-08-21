<%@page import="jieun.pms.mypage.cart.service.CartServiceImpl"%>
<%@page import="jieun.pms.mypage.cart.service.CartService"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<%	
	CartService cartService = new CartServiceImpl();
	int cartNo = Integer.parseInt(request.getParameter("no"));
	boolean delete = cartService.deleteCart(cartNo);
	
	if(delete == true){
%>		
		<script>alert('상품이 삭제 되었습니다.'); location.href = '../cart.jsp';</script>
<%
	}
	else{
%>
		<script>alert('상품 삭제에 실패 하였습니다.'); location.href = '../cart.jsp';</script>
<%	
	}
			
%>