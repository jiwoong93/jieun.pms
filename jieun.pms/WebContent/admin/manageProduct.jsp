<jsp:include page="../common/actionHeader.jsp"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" href="../res/css/manager.css">
<body>
	<div class="mngSelling" style="margin-top:300px;">
		<div>
			<table class="mngSellingHeader">
				<th>상품 관리 페이지</th>
			</table>
		</div>
		<div>
			검색테이블
		</div>
		<div>
			<table class="mngSellingDetails" border="1">
				<tr height="30px"> 
					<td>주문일</td>
					<td>주문번호</td>
					<td>실결제금액</td>
					<td>결제수단</td>
					<td>결제</td>
					<td>취소</td>
					<td>배송</td>
					<td>교환</td>
					<td>거래완료</td>
				</tr>
				<tr height="40px">
					<td>2017-07-07</a></td>
					<td>170707-0000</td>
					<td>10,000</td>
					<td>신용카드</td>
					<td>O</td>
					<td>X</td>
					<td ><button name="startShipment" oncliclk="">배송시작</button></td>
					<td>X</td>
					<td>거래완료</td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</table>	
		</div>
	</div>