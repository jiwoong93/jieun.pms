<jsp:include page="../common/actionHeader.jsp"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" href="../res/css/manager.css?ver=8">
<link rel="stylesheet" href="../res/css/search.css?ver=5">
<body>
	<div class="mngSelling">
		<div class="mngSellingHeader">
			<h2>상품 관리 페이지<hr></h2>
		</div>
	<form  class="search" action="#" method="get">
		<table >
			<tr>
		 		<td align="center" rowspan="5" width="100">상세검색</td>
				<td align="left">검색어</td><td><input type="text" name="itemname"/></td>
				<td rowspan="5" width="100"><input class="search" type="submit" value="검색" ></td>
			</tr>
			<tr align="left">
		 		<td >상품분류</td>
		 			<td>
		 				<select id="category" name="category">
		 					<option value="food">사료</option>
		 					<option value="snack">간식</option>
		 					<option value="bath">위생</option>
		 					<option value="beauty">미용</option>
		 					<option value="cloth">의류</option>
		 					<option value="accessory">악세사리</option>
		 					<option value="toy">장난감</option>
		 					<option value="house">하우스</option>
		 				</select>
		 			</td>
			</tr> 
			<tr align="left">
		 		<td>판매가격대</td>
		 		<td><input type="number" name="rowprice"/>원 ~ <input type="number" name="highprice"/>원</td>
			</tr> 
			<tr align="left">
		 		<td>검색정렬기준</td>
		 			<td>
		 				<select id="sort" name="sort" >
		 					<option value="new">신상품순</option>
		 					<option value="popular">인기순</option>
		 					<option value="row">낮은가격순</option>
		 					<option value="high">높은가격순</option>
		 					<option value="name">이름순</option>
		 				</select>
		 			</td>
			</tr> 
		</table>
	</form>
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
<%@ include file="../common/footer.jsp"%>