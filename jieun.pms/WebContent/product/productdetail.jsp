<%@ include file="../common/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<link rel="stylesheet" href="../res/css/productdetail.css"></link>
<body style="margin-top: 350px;">
	<div class="itemImg">
			<img src="../res/img/best_item/best_1.jpg" width="300px" height="300px">
		</div>

		<div class="itemDetail">
			<table class="itemInfo">
				<tr align="left">
					<th>상품명</th>
					<td>:</td>
					<td></td>
				</tr>
				<tr align="left">
					<th>가격</th>
					<td>:</td>
					<td></td>
				</tr>
				<tr align="left">
					<th>사이즈</th>
					<td>:</td>
					<td>S, M, L, XL</td>
				</tr>
				<tr align="left">
					<th>선택</th>
					<td>:</td>
					<td><select id="itemsize" name="itemsize">
							<option value="">선택</option>
							<option value="S">S</option>
							<option value="M">M</option>
							<option value="L">L</option>
							<option value="XL">XL</option>
					</select></td>
				</tr>
			</table>
		</div>
		<br />
		<br />
		<br />
		<table class="itemOrder">
			<tr>
				<td>선택옵션&nbsp;</td>
				<td>수량&nbsp;</td>
				<td>가격&nbsp;</td>
			</tr>
			<tr>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;M</td>
				<td>&nbsp;2</td>
				<td>65,000</td>
			</tr>
			<tr>
				<th>총</th>
				<td>:</td>
				<td>65,000</td>
			</tr>
		</table>
		</div>
		<div class="choose">
			<a href="../mypage/wishlist.jsp"><input type="button" name="wishlist" value="위시리스트" width="100px" height="45px" /></a>
			<a href="../mypage/cart.jsp"><input type="button" name="" value="장바구니" width="100px" height="45px" /></a>
			<a href="../order/order.jsp"><input type="button" name="order" value="결제하기" width="100px" height="45px" /></a>
		</div>
		<br>
		<hr width="61%">
		<center>상품설명</center>
		<div class="itemDetail">
			<a href="#"><img src="../res/img/best_item/best_1.jpg" width="800px"
				height="500px"></a>
		</div>
		<div class="mypageTitle">
			<hr width="61%">
			<br/><h3><center>REVIEW</center></h3>
			<div class="mypageContents">
				<table class="community_table" border="1">
					<tr>
						<td width="50" height="40" align="center">번호</td>
						<td width="500" align="center">제목</td>
						<td width="100" align="center">작성자</td>
						<td width="150" align="center">작성일</td>
						<td width="50" align="center">조회</td>
					</tr>
					<tr>
						<td height="30" align="center">1</td>
						<td align="center">개별로</td>
						<td align="center">여기별로</td>
						<td align="center">2017/09/06</td>
						<td align="center">456</td>
					</tr>
				</table>

				<!-- 검색 -->
				<div class="comu_search">
					<input type="text" class="textbox" size="18"> <input
						type="submit" value="검색" /><br />
				</div>

				<!-- 좌우버튼 -->
				<div class="comu_button">
					<input type="button" value="◀" /> <input type="button" value="▶" />
				</div>

				<!-- 글쓰기 -->
				<div class="comu_write">
					<a href="./board.jsp"><input type="button" value="글쓰기"></a>
				</div>
			</div>
		</div>
<br/><br/>
<%@ include file="../common/footer.jsp"%>