<%@page import="jieun.pms.mypage.wishlist.service.WishlistServiceImpl"%>
<%@page import="jieun.pms.mypage.wishlist.service.WishlistService"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<%	
	WishlistService wishService = new WishlistServiceImpl();
	int wishNo = Integer.parseInt(request.getParameter("no"));
	boolean delete = wishService.deleteWishlist(wishNo);
	
	if(delete == true){
%>		
		<script>alert('상품이 삭제 되었습니다.'); location.href = '../wishlist.jsp';</script>
<%
	}
	else{
%>
		<script>alert('상품 삭제에 실패 하였습니다.'); location.href = '../wishlist.jsp';</script>
<%	
	}
			
%>