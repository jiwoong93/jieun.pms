<<<<<<< HEAD
<%@ include file="../common/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<link rel="stylesheet" href="../res/css/orderResult.css">
<body>
<%
if(session.getAttribute("sessionId") == null || session.getAttribute("sessionId").equals("")){
%>
	<script>alert('로그인 후에 이용해주세요.'); location.href = '../member/login/login.jsp';</script>
<%
} else {
%>
<div class="paymentCk">
	<div class="orderMsg">
		<h2><b>송은영</b>고객님 상품주문이 <b>완료</b>되었습니다.</h2>
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
	
			<tr>
				<td rowspan="2">2017/00/00<br>[1234567]</td>
				<td>곰돌이배낭</td>
				<td>S</td>
				<td><input type="number" name="amount" id="amount" value="1" disabled></td>
				<td>20,000원</td>
				<td>상품준비중</td>
				<td><input type="button" name="delete" value="X"></td>
			</tr>
			
			<tr>
				<td>헬로도기 핀브러쉬</td>
				<td></td>
				<td><input type="number" name="amount" id="amount" value="1" disabled></td>
				<td>6,000원</td>
				<td>상품준비중</td>
				<td><input type="button" name="delete" value="X"></td>
			</tr>
		</table>
	</form>
</div>
<% } %>
=======
<%@ include file="../common/actionHeader.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<link rel="stylesheet" href="../res/css/orderResult.css">
<body>
<%
if(session.getAttribute("sessionId") == null || session.getAttribute("sessionId").equals("")){
%>
	<script>alert('로그인 후에 이용해주세요.'); location.href = '../member/login/login.jsp';</script>
<%
} else {
%>
<div class="paymentCk">
	<div class="orderMsg">
		<h2><b>송은영</b>고객님 상품주문이 <b>완료</b>되었습니다.</h2>
		<h2>이용해주셔서 감사합니다.</h2>
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
	
			<tr>
				<td rowspan="2">2017/00/00<br>[1234567]</td>
				<td>곰돌이배낭</td>
				<td>S</td>
				<td><input type="number" name="amount" id="amount" value="1" disabled></td>
				<td>20,000원</td>
				<td>상품준비중</td>
				<td><input type="button" name="delete" value="X"></td>
			</tr>
			
			<tr>
				<td>헬로도기 핀브러쉬</td>
				<td></td>
				<td><input type="number" name="amount" id="amount" value="1" disabled></td>
				<td>6,000원</td>
				<td>상품준비중</td>
				<td><input type="button" name="delete" value="X"></td>
			</tr>
		</table>
	</form>
</div>
<% } %>
>>>>>>> branch 'master' of https://github.com/jiwoong93/jieun.pms.git
<%@ include file="../common/footer.jsp"%>