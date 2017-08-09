<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" href="../css/manager.css">
<body>
<%
	String name = (String)session.getAttribute("sessionName");
%>
<div class="mngMain">
<button name="mngSelling" onclick="javascript:location.href='managingSelling.jsp';"> 판매관리 </button>
<button name="mngProducts" onclick="javascript:location.href='managingProduct.jsp';"> 상품관리 </button>
<button name="mngMembers" onclick="javascript:location.href='managingMember.jsp';"> 회원관리 </button>
&nbsp;&nbsp;&nbsp;&nbsp;<%= name %>관리자님 <button name="logout" onclick="javascript:location.href='login/logout.jsp';"> 로그아웃 </button>
</div>
	<div class="mngSelling">
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