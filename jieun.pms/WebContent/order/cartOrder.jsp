<jsp:include page="../common/actionHeader.jsp"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<link rel="stylesheet" href="../res/css/order.css">
<body>
n:<%=request.getParameter("amount_n")%>/s:<%=request.getParameter("amount_s")%>/m:<%=request.getParameter("amount_m")%>/l:<%=request.getParameter("amount_l")%>/xl:<%=request.getParameter("amount_xl")%>//<%=request.getParameter("gubun")%>
//<%=request.getParameter("no")%>//<%=request.getParameter("name")%>//
<%
if(session.getAttribute("sessionId") == null || session.getAttribute("sessionId").equals("")){
%>
	<script>alert('로그인 후에 이용해주세요.'); location.href = '../member/login/login.jsp';</script>
<%
} else {
%>
<div class="payment">
	<form method="post" action="./orderResult.jsp">
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

		<tr>
			<td><input type="checkbox" name="select"></td>
			<td>곰돌이배낭</td>
			<td>S</td>
			<td><input type="number" name="amount" id="amount" value="1"></td>
			<td>20,000원</td>
			<td><input type="button" name="delete" value="X"></td>
		</tr>
		<tr>
			<td><input type="checkbox" name="select"></td>
			<td>헬로도기 핀브러쉬</td>
			<td></td>
			<td><input type="number" name="amount" id="amount" value="1"></td>
			<td>6,000원</td>
			<td><input type="button" name="delete" value="X"></td>
		</tr>
	</table>
	
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
	
	<table class="memInforTable">
		<tr>
			<td>주문하시는분<b>*</b></td>
			<td><input type="text" name="name" required="required" value="송은영"></td>
		</tr>

		<tr>
			<td>주소<b>*</b></td>
			<td>
				<input type="text" name="zipcode" value="12345">
				<input type="button" value="우편번호" />
			</td>
		</tr>
		<tr>
			<td></td>
			<td>
			<input type="text" size="30" name="streetadd" value="도로명주소">
			<input type="text" size="30" name="add" value="상세주소">
			</td>
		</tr>

		<tr>
			<td>휴대폰<b>*</b></td>
			<td>
			<select>
					<option value="010">010</option>
					<option value="011">011</option>
					<option value="016">016</option>
					<option value="018">018</option>
			</select>
			<input type="text" name="phone_num" size="6" required="required" value="8885" />
			 - <input type="text" name="phone_num" size="6" required="required" value="0409">
			</td>
		</tr>
		
		<tr>
			<td>이메일<b>*</b></td>
			<td>
			<input type = "text" name="email_id" id="email_id" value="eunyoung">
			 @ <input type = "text" name="email" id="email" value="naver.com"> &nbsp;&nbsp; 
				<select>
				<option> 직접입력 </option>
				<option value="naver" selected="selected"> naver.com </option>
				<option value="daum"> daum.net </option>
				<option value="nate"> nate.com </option>
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
				<input type="radio" name="delivery" value="mem" checked="checked"> 주문자 정보와 동일
		   		<input type="radio" name="delivery" value="new"> 새로운배송지
			</td>
		</tr>
		
		<tr>
			<td colspan="2"><hr></td>
		</tr>
		
		<tr>
			<td>받으시는분<b>*</b></td>
			<td><input type="text" name="name" required="required" value="송은영"></td>
		</tr>

		<tr>
			<td>주소<b>*</b></td>
			<td>
				<input type="text" name="zipcode" required="required" value="12345">
				<input type="button" required="required" value="우편번호" />
			</td>
		</tr>
		<tr>
			<td></td>
			<td>
			<input type="text" size="30" name="streetadd" required="required" value="도로명주소">
			<input type="text" size="30" name="add" required="required" value="상세주소">
			</td>
		</tr>

		<tr>
			<td>휴대폰<b>*</b></td>
			<td>
			<select>
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="018">018</option>
			</select>
			<input type="text" name="phone_num" size="6" value="8885" />
			 - <input type="text" name="phone_num" size="6" value="0409">
			</td>
		</tr>
	</table>
		
	<table class="paymentTable1">
		<tr>
			<td> 주문금액 </td>
			<td> 부가금액 </td>
			<td> 총 결제금액 </td>
		</tr>
		
		<tr>
			<td colspan="3"><hr></td>
		</tr>
		
		<tr>
			<td> <h3>26,000원</h3> </td>
			<td> <h3>2,500원</h3> </td>
			<td> <h3>28,500원</h3> </td>
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
			<td><input type="text" name="orderName" required="required" value=""></td>
			<td class="center"><h3>= 28,500원</h3></td>
		</tr>
		
		<tr>
			<td>입금은행</td>
			<td><select>
				<option value="bank">쿵샵은행:0000-000-0000 쿵이</option>
			</select></td>
			<td>
			<input type="checkbox" name="agree" required="required">
			결제내용을 확인하였으며, 구매진행에 동의합니다.</td>
		</tr>
		
		<tr>
			<td colspan="3" class="right">
				<input type="submit" name="payment" id="paybutton" value="결제하기" />
			</td>
		</tr>
	</table>
	</form>
	
</div>
<% } %>
<%@ include file="../common/footer.jsp"%>