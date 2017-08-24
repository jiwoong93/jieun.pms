<%@page import="jieun.pms.product.service.ProductServiceImpl"%>
<%@page import="jieun.pms.product.service.ProductService"%>
<%@page import="jieun.pms.product.domain.Product"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="jieun.pms.order.domain.Order"%>
<%@page import="jieun.pms.order.service.OrderServiceImpl"%>
<%@page import="jieun.pms.order.service.OrderService"%>
<%@ include file="../common/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<link rel="stylesheet" href="../res/css/orderResult.css">
<body>
<% request.setCharacterEncoding("UTF-8"); %>
<%
if(session.getAttribute("sessionId") == null || session.getAttribute("sessionId").equals("")){
%>
	<script>alert('로그인 후에 이용해주세요.'); location.href = '../member/login/login.jsp';</script>
<%
} else {
	//주문정보 db저장 및 출력
	//db저장 (memId, itemNo, orderDate, orderName, orderPhone, orderAmount, payment, paymentOption, orderZipcode, orderStreet, orderAddr, transport(null), status(0))
	OrderService orderService = new OrderServiceImpl();
	int orderNo = orderService.orderSeq();
	String memId = session.getAttribute("sessionId").toString();
	String itemNo = "";
	String amount="";
	String amountN="", amountS="", amountM="", amountL="", amountXL="";
if(request.getParameter("op") == "cart" || request.getParameter("op").equals("cart")){
	//파라미터 받아서 0번째만 ,로 구분해서 itemNo
	String[] paraValue = request.getParameter("itemInfo").split(",");
	for(int i=0; i<paraValue.length; i++){
		String[] no = paraValue[i].split("/");
		itemNo = itemNo + no[0] + ",";
	}
} else {
	if(request.getParameter("gubun")=="noSize" || request.getParameter("gubun").equals("noSize")){
		itemNo = request.getParameter("itemNo");
		amountN = request.getParameter("amountN");
	} else if(request.getParameter("gubun")=="size" || request.getParameter("gubun").equals("size")) {
		amountS = request.getParameter("amountS");
		amountM = request.getParameter("amountM");
		amountL = request.getParameter("amountL");
		amountXL = request.getParameter("amountXL");
		String[] itemsNo = request.getParameter("items_no").split(",");
		for(int i=0; i<itemsNo.length; i++){
			String[] sizeNo = itemsNo[i].split("/");
			itemNo = itemNo + sizeNo[1] + ",";
			switch(sizeNo[0]){
				case "s" : amount=amount+sizeNo[1]+"/"+request.getParameter("amountS")+","; break;
				case "m" : amount=amount+sizeNo[1]+"/"+request.getParameter("amountM")+","; break;
				case "l" : amount=amount+sizeNo[1]+"/"+request.getParameter("amountL")+","; break;
				case "xl" : amount=amount+sizeNo[1]+"/"+request.getParameter("amountXL")+","; break;
			}
		}
	}
}
	String orderDate = new SimpleDateFormat("yyyy-MM-dd HH:MM:ss").format(new Date());
	String orderName = request.getParameter("recive_name");
	String orderPhone = request.getParameter("recive_phone1")+request.getParameter("recive_phone2")+request.getParameter("recive_phone3");
if(request.getParameter("op") == "cart" || request.getParameter("op").equals("cart")){
	//파라미터 받은값 그대로 amount
	amount = request.getParameter("itemInfo");
} else {
	if(request.getParameter("gubun")=="noSize" || request.getParameter("gubun").equals("noSize")){
		amount = request.getParameter("amount");
	}
}
	int payment = Integer.parseInt(request.getParameter("totalPrice"));
	String paymentOption = request.getParameter("paymentOption");
	String orderZipcode = request.getParameter("recive_zipcode");
	String orderStreet = request.getParameter("recive_street");
	String orderAddr = request.getParameter("recive_addr");
	String transport = "";
	String status = "1";
	Order order = new Order(orderNo,memId,itemNo,orderDate,orderName,orderPhone,amount,payment,paymentOption,orderZipcode,orderStreet,orderAddr,transport,status);
	orderService.addOrder(order);
	ProductService productService = new ProductServiceImpl();
	Product product = null;
if(request.getParameter("op") == "cart" || request.getParameter("op").equals("cart")){
} else {
	if(request.getParameter("gubun")=="noSize" || request.getParameter("gubun").equals("noSize")){
		product = productService.getProductNo(Integer.parseInt(itemNo));
	}
}
	
	//출력
%>
<div class="paymentCk">
	<div class="orderMsg">
		<h2><b><%=request.getParameter("order_name")%></b>고객님 상품주문이 <b>완료</b>되었습니다.</h2>
		<h2>이용해주셔서 감사합니다.</h2>
		<br><br>
		<a href="../mypage/orderlist.jsp"><input type="button" value="주문내역확인"></a>
	</div>
	
	<form method="get" action="./.jsp">
		<table class="orderCkTable">
			<tr>
				<td>주문날짜<br>[주문번호]</td>
				<td>상품명</td>
				<td>선택옵션</td>
				<td>수량</td>
				<td>가격</td>
				<td>주문상태</td>
				<td>주문취소</td>
			</tr>
			
			<tr>
				<td colspan="7"><hr></td>
			</tr>
<% if(request.getParameter("op") == "cart" || request.getParameter("op").equals("cart")){
	String[] productValue = request.getParameter("itemInfo").split(",");
	for(int i=0; i<productValue.length; i++){
		String[] productno = productValue[i].split("/");
		Product products = productService.getProductNo(Integer.parseInt(productno[0]));
%>
		<tr>
			<td><%=order.getOrderDate()%><br>[<%=order.getOrderNo()%>]</td>
			<td><%=products.getItemName()%></td>
			<td>
				<% 
					if(products.getItemSize() != null){
						out.println(products.getItemSize());
					}
				%>
			</td>
			<td><%=request.getParameter("amount"+productno[0])%></td>
			<td><%=products.getItemPrice()*Integer.parseInt(request.getParameter("amount"+productno[0]))%>원</td>
			<td>상품준비중</td>
			<td><input type="button" name="delete" value="X"></td>
		</tr>
<%
	}
} else {
	if(request.getParameter("gubun")=="noSize" || request.getParameter("gubun").equals("noSize")){ %>
	<tr>
		<td rowspan="2"><%=order.getOrderDate() %><br>[<%=order.getOrderNo()%>]</td>
		<td><%=product.getItemName() %></td>
		<td></td>
		<td><input type="number" name="amount" id="amount" value="<%=amount%>" disabled></td>
		<td><%=payment%>원</td>
		<td>상품준비중</td>
		<td><input type="button" name="delete" value="X"></td>
	</tr>
<% } else if(request.getParameter("gubun")=="size" || request.getParameter("gubun").equals("size")) { 
	String[] itemsNo = request.getParameter("items_no").split(",");
	for(int i =0; i<itemsNo.length; i++){
		String[] sizeNo = itemsNo[i].split("/");
		Product productAll = productService.getProductNo(Integer.parseInt(sizeNo[1]));
%>
		<tr>
			<td><%=order.getOrderDate()%><br>[<%=order.getOrderNo()%>]</td>
			<td><%=productAll.getItemName()%></td>
			<td><%=productAll.getItemSize()%></td>
			<td>
			<% 
				switch(productAll.getItemSize()){
					case "s" :%><input type="number" name="amounts" id="amounts" value="<%=amountS%>" disabled> <%break;
					case "m" :%><input type="number" name="amountm" id="amountm" value="<%=amountM%>" disabled> <%break;
					case "l" :%><input type="number" name="amountl" id="amountl" value="<%=amountL%>" disabled><%break;
					case "xl" :%><input type="number" name="amountxl" id="amountxl" value="<%=amountXL%>" disabled><%break;
				}
			%>
				
			</td>
			<td>
			<%
				switch(productAll.getItemSize()){
					case "s" :%><%=productAll.getItemPrice()*Integer.parseInt(amountS)%>원<%break;
					case "m" :%><%=productAll.getItemPrice()*Integer.parseInt(amountM)%>원<%break;
					case "l" :%><%=productAll.getItemPrice()*Integer.parseInt(amountL)%>원<%break;
					case "xl" :%><%=productAll.getItemPrice()*Integer.parseInt(amountXL)%>원<%break;
				}
			%>
			</td>
			<td>상품준비중</td>
			<td><input type="button" name="delete" value="X"></td>
		</tr>
<% 		}
	} 
}
%>
		</table>
	</form>
</div>
<% } %>
<%@ include file="../common/footer.jsp"%>