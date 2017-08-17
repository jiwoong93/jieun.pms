<%@page import="jieun.pms.product.domain.Category"%>
<%@page import="jieun.pms.product.domain.Product"%>
<%@page import="java.util.List"%>
<%@page import="jieun.pms.product.service.ProductServiceImpl"%>
<%@page import="jieun.pms.product.service.ProductService"%>
<jsp:include page="../common/actionHeader.jsp"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<link rel="stylesheet" href="../res/css/productdetail.css?var=6"></link>
<%

	ProductService productService = new ProductServiceImpl();
	String itemName = request.getParameter("name").trim();
	List<Product> products = productService.getProduct(itemName);
	
	Category category = new Category(Integer.parseInt(products.get(0).getCategory()));

%>
<body>
<div class="productDetail">
	<div class="titleImg">
			<img src="../res/img/product/<%=category.getCategoryStr()%>/<%=products.get(0).getItemImg()%>">
	</div>

	<div class="itemInfo">
		<table class="itemInfoTable">
			<tr>
				<td colspan="2"> <hr> </td>
			</tr>
			<tr>
				<td colspan="2" class="center"> <%=products.get(0).getItemName()%> </td>
			</tr>
			<tr>
				<td colspan="2"> <hr> </td>
			</tr>
			<tr>
				<td colspan="2" class="center"> <h1><%=products.get(0).getItemPrice()%>&nbsp;<b>\</b></h1> </td>
			</tr>
			<tr><td colspan="2"></td></tr>
			<tr>
				<td>상품명</td>
				<td><%=products.get(0).getItemName()%></td>
			</tr>
			<tr>
				<td>판매가</td>
				<td><%=products.get(0).getItemPrice()%>원</td>
			</tr>
			<tr>
<%
				if(products.get(0).getItemSize() == null || products.get(0).getItemSize().equals("")){

				}
				else{
%>
					<td>사이즈</td>
					<td><select id="select">
							<option value="">선택</option>
							<option value="S">S</option>
							<option value="M">M</option>
							<option value="L">L</option>
							<option value="XL">XL</option>
					</select></td>
<%
				}
%>	
			</tr>
		</table>
		<table class="itemInfoTable2">
			<tr>
				<td colspan="3"> <hr> </td>
			</tr>
			<tr>
				<td width="220px">상품명</td>
				<td width="80px">수량</td>
				<td width="100px">판매가</td>
			</tr>
			<tr>
				<td colspan="3"> <hr> </td>
			</tr>
			<tr>
				<td><%=products.get(0).getItemName()%></td>
				<td><input type="number" name="amount" id="amount" value="1"></td>
				<td><%=products.get(0).getItemPrice()%>원</td>
			</tr>
			<tr>
				<td colspan="3"> <hr> </td>
			</tr>
			<tr>
				<td colspan="3" class="right"> <h2><b>TOTAL</b> 30,000원</h2> </td>
			</tr>
		</table>
		
		<div class="Button">
			<a href="../order/order.jsp"><input type="button" id="orderButton" value="BUY NOW"></a><br>
			<a href="../mypage/wishlist.jsp"><input type="button" id="wishlistButton" value="위시리스트"></a>
			<a href="../mypage/cart.jsp"><input type="button" id="cartButton" value="장바구니"></a>
		</div>
		
	</div>
	
<hr width="1300px">

</div>	

		<div class="itemDetail">
			상품상세설명부분<br>
			<%
				String[] productDetail = products.get(0).getItemImgDetail().split("/");
				for(int i=0;i<productDetail.length;i++){
			%>
					<img src="../res/img/product/<%=category.getCategoryStr()%>/<%=productDetail[i]%>"><br>
			<%	}
			%>
		</div>
		
<hr width="1300px">		

<div class="review">
	<h3><center>REVIEW</center></h3>
	
	<div class="contents">
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
				<a href="../community/board.jsp"><input type="button" value="글쓰기"></a>
		</div>
	</div>
</div>
</body>
<%@ include file="../common/footer.jsp"%>