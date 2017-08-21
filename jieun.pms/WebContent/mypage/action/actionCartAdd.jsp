<%@page import="jieun.pms.mypage.cart.service.CartServiceImpl"%>
<%@page import="jieun.pms.mypage.cart.service.CartService"%>
<%@page import="jieun.pms.mypage.cart.domain.Cart"%>
<%@page import="java.util.ArrayList"%>
<%@page import="jieun.pms.product.service.ProductServiceImpl"%>
<%@page import="jieun.pms.product.service.ProductService"%>
<%@page import="jieun.pms.product.domain.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html">
<% request.setCharacterEncoding("UTF-8"); 
	
	if(session.getAttribute("sessionId") == null || session.getAttribute("sessionId").equals(null)){
%>
      <script>alert('로그인후에 이용 가능 합니다.'); location.href = '../../member/login/login.jsp';</script>
<%
   } else {
      ProductService productService = new ProductServiceImpl();
      String itemName = request.getParameter("name").trim();
      List<Product> products = productService.getProduct(itemName);
      Cart cart = new Cart();
      CartService cartService = new CartServiceImpl();
      cart.setMemId((String)session.getAttribute("sessionId"));
      
      //사이즈가 없는 단일 상품인 경우
      if(request.getParameter("gubun") == "noSize" || request.getParameter("gubun").equals("noSize")){
         String amountStr = request.getParameter("amount_n");
    	 int amount = Integer.parseInt(amountStr);
         cart.setItemNo(products.get(0).getItemNo());
         cart.setAmount(amount);
         
         boolean insert = cartService.insertCart(cart);
         if(insert == true){
 %>		
       	 		<script>alert('장바구니에 담겼습니다.'); location.href = '../cart.jsp';</script>
<%    	 }
        else{
%>
        	 	<script>alert('장바구니에 담는 것에 실패 하였습니다.'); location.href = '../../product/productdetail.jsp';</script>
<%	
      	}
      } else { //사이즈가 있는 상품인 경우
         int count = 0;
         if(request.getParameter("size_S") != null){
        	 String amountStr = request.getParameter("amount_s");
        	 int amount = Integer.parseInt(amountStr);
             cart.setItemNo(products.get(0).getItemNo());
             cart.setAmount(amount);
             boolean insert = cartService.insertCart(cart);
             if(insert == true){
            	 count++;
             }
             else{
            	count -= 10; 
             }
         }
         if(request.getParameter("size_M") != null){
        	 String amountStr = request.getParameter("amount_m");
        	 int amount = Integer.parseInt(amountStr);
             cart.setItemNo(products.get(1).getItemNo());
             cart.setAmount(amount);
             boolean insert = cartService.insertCart(cart);
             if(insert == true){
            	 count++;
             }
             else{
            	count -= 10; 
             }
         }
         if(request.getParameter("size_L") != null){
        	 String amountStr = request.getParameter("amount_l");
        	 int amount = Integer.parseInt(amountStr);
             cart.setItemNo(products.get(2).getItemNo());
             cart.setAmount(amount);
             boolean insert = cartService.insertCart(cart);
             if(insert == true){
            	 count++;
             }
             else{
            	count -= 10; 
             }
         }
         if(request.getParameter("size_XL") != null){
        	 String amountStr = request.getParameter("amount_xl");
        	 int amount = Integer.parseInt(amountStr);
             cart.setItemNo(products.get(3).getItemNo());
             cart.setAmount(amount);
             boolean insert = cartService.insertCart(cart);
             if(insert == true){
            	 count++;
             }
             else{
            	count -= 10; 
             }
         }
         if(count>0){
 %>		
        	<script>alert('장바구니에 담겼습니다.'); location.href = '../cart.jsp';</script>
<%    	 }
		 else{
%>
        	<script>alert('장바구니에 담는 것에 실패 하였습니다.'); location.href = '../../product/productdetail.jsp';</script>
<%	
        }
      }
   }
%>