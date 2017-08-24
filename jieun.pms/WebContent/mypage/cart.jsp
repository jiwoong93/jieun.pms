<%@page import="jieun.pms.mypage.cart.domain.Cart"%>
<%@page import="java.util.List"%>
<%@page import="jieun.pms.mypage.cart.service.CartServiceImpl"%>
<%@page import="jieun.pms.mypage.cart.service.CartService"%>
<jsp:include page="../common/actionHeader.jsp"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<link rel="stylesheet" href="../res/css/cart.css">
<body>
<script>
	function submits(gubun){
		var f = document.getElementById("submitForm");
        f.action = "../order/cartOrder.jsp?gubun="+gubun;
        f.submit();
	}
</script>
<%
String cururlCart = request.getRequestURI().toString();
String pageNameCart = cururlCart.substring(cururlCart.lastIndexOf("/") + 1, cururlCart.length());
String pathCart = "";
if(pageNameCart.equals("main.jsp")){
	pathCart = "./";
} else if(pageNameCart.equals("login.jsp") || pageNameCart.equals("findId.jsp") || pageNameCart.equals("findPw.jsp") || pageNameCart.equals("join.jsp")) {
	pathCart = "../../";
} else {
	pathCart = "../";
}
%>
<%
if(session.getAttribute("sessionId") == null || session.getAttribute("sessionId").equals("")){
%>
	<script>alert('로그인 후에 이용해주세요.'); location.href = '<%=pathCart%>member/login/login.jsp?page=cart';</script>
<%
} else {
	
	CartService cartService = new CartServiceImpl();
	List<Cart> carts = cartService.getCarts((String)session.getAttribute("sessionId"));
%>
 <div class="mypage">
	<div class="mypageTitle">장바구니<hr></div>
 
	<div class="mypageMenu">
		<ul>
		
			<li><a href="./orderlist.jsp">주문내역</a><hr></li>
			<li><a href="./cart.jsp">장바구니</a><hr></li>
			<li><a href="./wishlist.jsp">위시리스트</a><hr></li>
			<li><a href="./mypost.jsp">내 게시물</a><hr></li>
			<li><a href="./passwordCheck.jsp">나의 정보</a><hr></li>
		</ul>
	</div>
	<div class="mypageContents">
		<form id="submitForm" method="post" action="../order/cartOrder.jsp">
		<table id="cartTable">
			<tr class="first">
				<td><input type="checkbox" name="selectAll"></td>
				<td>상품명</td>
				<td>선택옵션</td>
				<td>수량</td>
				<td>가격</td>
				<td>삭제</td>
			</tr>
			
			<tr><td colspan="6" id="line"><hr></td></tr>
			
			
				
				<%
					for(int i=0; i<carts.size();i++){
				%>		<tr>
						<td><input type="checkbox" name="selectItem" value="<%=carts.get(i).getItemNo()%>"><input type="hidden" name="allItemsNo" value="<%=carts.get(i).getItemNo()%>"><input type="hidden" name="cartNos<%=carts.get(i).getItemNo()%>" value="<%=carts.get(i).getCartNo()%>"></td>
						<td><%=carts.get(i).getProduct().getItemName()%></td>
				<%		if(carts.get(i).getProduct().getItemSize() != null){
				%>
							<td><%=carts.get(i).getProduct().getItemSize()%></td>
				<%
						}
						else{
				%>			<td>&nbsp;</td>	
				<%		}
				%>
						<td><input type="number" name="amount<%=carts.get(i).getItemNo() %>" value="<%=carts.get(i).getAmount()%>"></td>
						<td><%=carts.get(i).getProduct().getItemPrice()%></td>
						<td><a href="./action/actionCartDelete.jsp?no=<%=carts.get(i).getCartNo()%>"><input type="button" name="delete" value="X"></a></td>
						</tr>
				<%
					}
				%>	
			
		</table><br/><br/>
		
		<!-- <table id="cartTotTable">
			<tr>
				<td colspan="5" class="totline"> 총 상품금액 </td>
				<td> 26,000원</td>
			</tr>
			<tr>
				<td colspan="5" class="totline"> 배송비 </td>
				<td> + 2,500원</td>
			</tr>
			<tr>
				<td colspan="5" class="totline"> 결제예정금액 </td>
				<td> = 28,500원</td>
			</tr>
		</table><br/> -->
		
		<table class="buttonTable">
			<tr>
				<td>
					<input type="button" name="deleteAll" value="삭제">
				</td>
				<td class="right">
					<input type="button" name="paySelect" onclick="submits('select')" value="선택상품 결제"> 
					<input type="button" name="payAll" onclick="submits('all')" value="전체상품 결제">
				</td>
			</tr>
		</table>
		
		</form>
	</div>
</div><br/><br/><br/><br/>
<%
}
%>
<%@ include file="../common/footer.jsp"%>