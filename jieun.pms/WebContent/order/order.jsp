<%@page import="jieun.pms.order.service.OrderServiceImpl"%>
<%@page import="jieun.pms.order.service.OrderService"%>
<%@page import="jieun.pms.member.update.service.UpdateServiceImpl"%>
<%@page import="jieun.pms.member.update.domain.UpdateMember"%>
<%@page import="jieun.pms.member.update.service.UpdateService"%>
<%@page import="java.util.List"%>
<%@page import="jieun.pms.product.domain.Product"%>
<%@page import="jieun.pms.product.service.ProductServiceImpl"%>
<%@page import="jieun.pms.product.service.ProductService"%>
<jsp:include page="../common/actionHeader.jsp"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<link rel="stylesheet" href="../res/css/order.css">
<body>
<script>
	function cleartext(){
		document.getElementById('recive_name').value='';
		document.getElementById('recive_zipcode').value='';
		document.getElementById('recive_street').value='';
		document.getElementById('recive_addr').value='';
		document.getElementById('recive_phone1').value='010';
		document.getElementById('recive_phone2').value='';
		document.getElementById('recive_phone3').value='';
	}
	
	function move(){
		document.getElementById('recive_name').value=document.getElementById('order_name').value;
		document.getElementById('recive_zipcode').value=value=document.getElementById('order_zipcode').value;
		document.getElementById('recive_street').value=value=document.getElementById('order_street').value;
		document.getElementById('recive_addr').value=value=document.getElementById('order_addr').value;
		document.getElementById('recive_phone1').value=value=document.getElementById('order_phone1').value;
		document.getElementById('recive_phone2').value=value=document.getElementById('order_phone2').value;
		document.getElementById('recive_phone3').value=value=document.getElementById('order_phone3').value;
	}
</script>
<% request.setCharacterEncoding("UTF-8"); %>
<%
if(session.getAttribute("sessionId") == null || session.getAttribute("sessionId").equals("")){
%>
	<script>alert('로그인 후에 이용해주세요.'); location.href = '../member/login/login.jsp';</script>
<%
} else {
%>
<%
	ProductService productService = new ProductServiceImpl();
	int itemNo = Integer.parseInt(request.getParameter("no"));
	Product product = productService.getProductNo(itemNo);
	String[] allItemId = product.getItemId().split("/");
	String sId="", mId="", lId="", xlId="", items_no="";
	
	String amountn="", amounts="", amountm="", amountl="", amountxl="";
	if(request.getParameter("gubun")=="noSize" || request.getParameter("gubun").equals("noSize")){
		amountn = request.getParameter("amount_n");
	} else {
		amounts = request.getParameter("amount_s");
		amountm = request.getParameter("amount_m");
		amountl = request.getParameter("amount_l");
		amountxl = request.getParameter("amount_xl");
	}
%>
<div class="payment">
	<form method="post" action="./orderResult.jsp">
	<input type="hidden" name="amount" value="<%=amountn+amounts+amountm+amountl+amountxl%>">
	<input type="hidden" name="gubun" value="<%=request.getParameter("gubun")%>">
	<input type="hidden" name="itemNo" value="<%=itemNo%>">
	<table class="itemTable">
		<tr>
			<td><input type="checkbox" name="selectAll"></td>
			<td>상품명</td>
			<td>선택옵션</td>
			<td>수량</td>
			<td>가격</td>
			<td>삭제</td>
		</tr>
		
		<tr>
			<td colspan="6"><hr></td>
		</tr>
<%
	if(request.getParameter("gubun")=="noSize" || request.getParameter("gubun").equals("noSize")){%>
		<tr>
			<td><input type="checkbox" name="select"></td>
			<td><%=product.getItemName()%></td>
			<td>x</td>
			<td><input type="number" name="amountN" value="<%=amountn%>" readonly></td>
			<td><%=Integer.parseInt(amountn)*product.getItemPrice()%>원</td>
			<td><input type="button" name="deleteN" value="X"></td>
		</tr><% 		
	} else {
		if(amounts != "" || !amounts.equals("")){
			sId = allItemId[0];
			Product products = productService.getProductId(allItemId[0]+"/s");
			items_no = items_no+"s/"+products.getItemNo()+",";
%>
			<tr>
				<td><input type="checkbox" name="select"></td>
				<td><%=product.getItemName()%></td>
				<td>S</td>
				<td><input type="number" name="amountS" value="<%=amounts%>" readonly></td>
				<td><%=Integer.parseInt(amounts)*product.getItemPrice()%>원</td>
				<td><input type="button" name="deleteS" value="X"></td>
			</tr>
<%
		}
		if(amountm != "" || !amountm.equals("")){
			mId = allItemId[1];
			Product productm = productService.getProductId(allItemId[0]+"/m");
			items_no = items_no+"m/"+productm.getItemNo()+",";
%>
			<tr>
				<td><input type="checkbox" name="select"></td>
				<td><%=product.getItemName()%></td>
				<td>M</td>
				<td><input type="number" name="amountM" value="<%=amountm%>" readonly></td>
				<td><%=Integer.parseInt(amountm)*product.getItemPrice()%>원</td>
				<td><input type="button" name="deleteM" value="X"></td>
			</tr>
<%					
		}
		if(amountl != "" || !amountl.equals("")){
			lId = allItemId[1];
			Product productl = productService.getProductId(allItemId[0]+"/l");
			items_no = items_no+"l/"+productl.getItemNo()+",";
%>
			<tr>
				<td><input type="checkbox" name="select"></td>
				<td><%=product.getItemName()%></td>
				<td>L</td>
				<td><input type="number" name="amountL" value="<%=amountl%>" readonly></td>
				<td><%=Integer.parseInt(amountl)*product.getItemPrice()%>원</td>
				<td><input type="button" name="deleteL" value="X"></td>
			</tr>
<%			
		}
		if(amountxl != "" || !amountxl.equals("")){
			xlId = allItemId[1];
			Product productxl = productService.getProductId(allItemId[0]+"/xl");
			items_no = items_no+"xl/"+productxl.getItemNo()+",";
%>
			
			<tr>
				<td><input type="checkbox" name="select"></td>
				<td><%=product.getItemName()%></td>
				<td>XL</td>
				<td><input type="number" name="amountXL" value="<%=amountxl%>" readonly></td>
				<td><%=Integer.parseInt(amountxl)*product.getItemPrice()%>원</td>
				<td><input type="button" name="deleteXL" value="X"></td>
			</tr>
<%			
		}
	}
%>
	</table>
	<input type="hidden" name="sId" value="<%=sId%>">
	<input type="hidden" name="mId" value="<%=mId%>">
	<input type="hidden" name="lId" value="<%=lId%>">
	<input type="hidden" name="xlId" value="<%=xlId%>">
	<input type="hidden" name="items_no" value="<%=items_no%>">
<%
	String memId = session.getAttribute("sessionId").toString();
	UpdateService updateService = new UpdateServiceImpl();
	UpdateMember orderMember = updateService.selectMember(memId);
%>
	<div class="button">
		<div id="deleteButton">
			<input type="button" name="delete" value="삭제">
		</div>
		<div id="cartButton">
			<input type="button" name="tocart" value="장바구니로 이동" onclick="javascript:location.href='../mypage/cart.jsp';">
		</div>
	</div>

	<div id="memInforTitle">
		주문정보
	</div>
	<div id="required">
		<b>*</b>필수입력사항
	</div>
	<input type="hidden" name="order_id" value="<%=orderMember.getMemId()%>">
	<table class="memInforTable">
		<tr>
			<td>주문하시는분<b>*</b></td>
			<td><input type="text" id="order_name" name="order_name" required="required" value="<%=orderMember.getMemName()%>"></td>
		</tr>

		<tr>
			<td>주소<b>*</b></td>
			<td>
				<input type="text" id="order_zipcode" value="<%=orderMember.getMemZipcode()%>">
				<input type="button" value="우편번호" />
			</td>
		</tr>
		<tr>
			<td></td>
			<td>
			<input type="text" size="30" id="order_street" value="<%=orderMember.getMemStreet()%>">
			<input type="text" size="30" id="order_addr" value="<%=orderMember.getMemAddr()%>">
			</td>
		</tr>

		<tr>
			<td>휴대폰<b>*</b></td>
			<td>
			<%
		   		String phone = orderMember.getMemPhone();
		   		String phone1 = phone.substring(0, 3);
		   		String phone2 = phone.substring(3, 7);
		   		String phone3 = phone.substring(7, 11);
	   		%>
			
			<select id="order_phone1">
					<option value="010" <%=phone1.equals("010")?"selected":"" %>>010</option>
					<option value="011" <%=phone1.equals("011")?"selected":"" %>>011</option>
					<option value="016" <%=phone1.equals("016")?"selected":"" %>>016</option>
					<option value="018" <%=phone1.equals("018")?"selected":"" %>>018</option>
			</select>
			<input type="text" id="order_phone2" size="6" required="required" value="<%=phone2%>" />
			 - <input type="text" id="order_phone3" size="6" required="required" value="<%=phone3%>">
			</td>
		</tr>
		
		<tr>
			<td>이메일<b>*</b></td>
			<td>
			<%
		   		String[] email = orderMember.getMemEmail().split("@");
		   	%>
			<input type = "text" id="order_email1" value="<%=email[0]%>">
			 @ <input type = "text" id="order_email2" value="<%=email[1]%>"> &nbsp;&nbsp; 
				<select>
				<option> 직접입력 </option>
				<option value="naver.com" <%=email[1].equals("naver.com")?"selected":"" %>> naver.com </option>
				<option value="daum.net" <%=email[1].equals("daum.net")?"selected":"" %>> daum.net </option>
				<option value="nate.com" <%=email[1].equals("nate.com")?"selected":"" %>> nate.com </option>
				</select>
			</td>
		</tr>
		
		<tr>
			<td></td>
			<td>
			<p>이메일을 통해 주문처리과정을 보내드립니다.<br>
			이메일 주소란에는 반드시 수신가능한 이메일주소를 입력해 주세요.</p>
			</td>
		</tr>
	</table>
	
	<div class="deliveryTitle">
		배송정보
	</div>
	
	<table class="deliveryInfoTable">
		<tr>
			<td colspan="2">
				<input type="radio" name="delivery" value="new" checked="checked" onclick="cleartext();"> 새로운배송지
				<input type="radio" name="delivery" value="mem" onclick="move();"> 주문자 정보와 동일
			</td>
		</tr>
		
		<tr>
			<td colspan="2"><hr></td>
		</tr>
		
		<tr>
			<td>받으시는분<b>*</b></td>
			<td><input type="text" name="recive_name" id="recive_name" required="required" value=""></td>
		</tr>

		<tr>
			<td>주소<b>*</b></td>
			<td>
				<input type="text" name="recive_zipcode" id="recive_zipcode" required="required" value="">
				<input type="button" required="required" value="우편번호" />
			</td>
		</tr>
		<tr>
			<td></td>
			<td>
			<input type="text" size="30" name="recive_street" id="recive_street" required="required" value="">
			<input type="text" size="30" name="recive_addr" id="recive_addr" required="required" value="">
			</td>
		</tr>

		<tr>
			<td>휴대폰<b>*</b></td>
			<td>
			<select name="recive_phone1" id="recive_phone1">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="018">018</option>
			</select>
			<input type="text" name="recive_phone2" id="recive_phone2" size="6" value="" />
			 - <input type="text" name="recive_phone3" id="recive_phone3" size="6" value="">
			</td>
		</tr>
	</table>
		
	<table class="paymentTable1">
		<tr>
			<td> 주문금액 </td>
			<td> 택배비 </td>
			<td> 총 결제금액 </td>
		</tr>
		
		<tr>
			<td colspan="3"><hr></td>
		</tr>
		
		<tr>
		<%
			int price =0;
			if(request.getParameter("gubun")=="noSize" || request.getParameter("gubun").equals("noSize")){
				price = Integer.parseInt(amountn)*product.getItemPrice();
			} else {
				if(amounts != "" || !amounts.equals("")){
					price = price + Integer.parseInt(amounts)*product.getItemPrice();
				}
				if(amountm != "" || !amountm.equals("")){
					price = price + Integer.parseInt(amountm)*product.getItemPrice();
				}
				if(amountl != "" || !amountl.equals("")){
					price = price + Integer.parseInt(amountl)*product.getItemPrice();
				}
				if(amountxl != "" || !amountxl.equals("")){
					price = price + Integer.parseInt(amountxl)*product.getItemPrice();
				}
			}
			int baesong = 2500;
			int totalPrice = price+baesong;
		%>
			<td> <h3><%=price %>원</h3> </td>
			<td> <h3><%=baesong %>원</h3> </td>
			<td> <h3><%=totalPrice %>원</h3> </td>
		</tr>
		
	</table>
	
	<table class="paymentTable2">
		<tr>
			<td colspan="2" width="700px">
				<input type="radio" name="paymentOption" value="1" checked="checked"> 무통장입금
		   		<input type="radio" name="paymentOption" value="2"> 카드결제 <hr>
			</td>
			<td class="center"><h3>최종결제금액</h3></td>
		</tr>
		
		<tr>
			<td>입금자명</td>
			<td><input type="text" name="bank_Name" required="required" value=""></td>
			<td class="center"><h3>= <%=totalPrice %>원</h3><input type="hidden" name="totalPrice" value="<%=totalPrice%>"></td>
		</tr>
		
		<tr>
			<td>입금은행</td>
			<td><select name="bank">
				<option value="shinhanbank">신한은행:15724-445-321465 이동구</option>
				<option value="kookminbank">국민은행:14613-64651-73 임지나</option>
				<option value="wooribank">우리은행:2163-1387-123475 정명재</option>
			</select></td>
			<td>
			<input type="checkbox" name="agree" required="required">
			결제내용을 확인하였으며, 구매진행에 동의합니다.</td>
		</tr>
		
		<tr>
			<td colspan="3" class="right">
				<input type="submit" value="결제하기" />
			</td>
		</tr>
	</table>
	</form>
	
</div>
<% } %>
<%@ include file="../common/footer.jsp"%>