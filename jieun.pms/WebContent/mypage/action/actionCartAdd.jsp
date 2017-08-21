<%@page import="java.util.ArrayList"%>
<%@page import="jieun.pms.product.service.ProductServiceImpl"%>
<%@page import="jieun.pms.product.service.ProductService"%>
<%@page import="jieun.pms.product.domain.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html">
<% request.setCharacterEncoding("UTF-8"); %>

<%
	if(session.getAttribute("sessionId") == null || session.getAttribute("sessionId").equals(null)){
%>
		<script>alert('로그인후에 이용 가능 합니다.');</script>
<%
	} else {
		ProductService productService = new ProductServiceImpl();
		String itemName = request.getParameter("name").trim();
		List<Product> products = productService.getProduct(itemName);
		
		//사이즈가 없는 단일 상품인 경우
		if(request.getParameter("gubun") == "noSize" || request.getParameter("gubun").equals("noSize")){
			String amount = request.getParameter("amount_n");
			out.println(amount);
		} else { //사이즈가 있는 상품인 경우
			String sizeS = request.getParameter("size_S") + request.getParameter("amount_s");
			String sizeM = request.getParameter("size_M") + request.getParameter("amount_m");
			String sizeL = request.getParameter("size_L") + request.getParameter("amount_l");
			String sizeXL = request.getParameter("size_XL") + request.getParameter("amount_xl");

			String size = sizeS + "&" +  sizeM + "&" + sizeL + "&" + sizeXL;
			
			out.println(size);
		}
		
		
%>
		<%=session.getAttribute("sessionId")%>/<%=products.get(0).getItemId()%>/<%=products.get(0).getItemPrice()%>
		<script></script>
<%
	}
%>
