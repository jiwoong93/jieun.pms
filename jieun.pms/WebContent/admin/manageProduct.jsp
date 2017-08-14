<%@page import="jieun.pms.product.service.ProductPostServiceImpl"%>
<%@page import="jieun.pms.product.service.ProductPostService"%>
<%@page import="jieun.pms.product.service.ProductPageServiceImpl"%>
<%@page import="jieun.pms.product.service.ProductPageService"%>
<%@page import="jieun.pms.product.domain.ProductPage"%>
<%@page import="jieun.pms.product.domain.Category"%>
<%@page import="jieun.pms.product.domain.Product"%>
<%@page import="java.util.List"%>
<%@page import="jieun.pms.product.service.ProductServiceImpl"%>
<%@page import="jieun.pms.product.service.ProductService"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../common/actionHeader.jsp"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" href="../res/css/managerProduct.css?ver=5">
<%
	/* ProductService productService = new ProductServiceImpl();
	String requestCategory = request.getParameter("category");
	List<Product> products = productService.getProducts(requestCategory);

	Category category = new Category(Integer.parseInt(requestCategory)); */

	ProductPage productPage = null;
	String currentPage = request.getParameter("currentPage");
	if(currentPage != null) productPage = new ProductPage(Integer.parseInt(currentPage));
	else productPage = new ProductPage();
	
	ProductPageService productPageService = new ProductPageServiceImpl(5,productPage);
	pageContext.setAttribute("productPageMaker", productPageService);
	ProductPostService productPostService = new ProductPostServiceImpl();
	pageContext.setAttribute("productPosts", productPostService.listProducts(productPage));
%>
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
				<td rowspan="5" width="100"><input class="search" type="submit" value="검색"></td>
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
		<table class="mngPrdDetails" border="1">
				<thred>
				<tr height="30px"> 
					<td>상품No</td>
					<td>카테고리</td>
					<td>상품이름</td>
					<td>상품크기</td>
					<td>남은수량</td>
					<td>판매수량</td>
					<td colspan="2"></td>
				</tr>
				</thred>
				<tbody>
				<c:forEach var="productPost" items="${productPosts}">
				<tr height="40px">
					<td>${productPost.itemNo}</td>
					<td>${productPost.category}</td>
					<td>${productPost.itemName}</td>
					<td>${productPost.itemSize}</td>
					<td>${productPost.itemAmount}</td>
					<td>판매수량</td>
					<td ><a href="./manageProductModify.jsp?no=${productPost.itemNo}"><button name="modifyPrd" >수정</button></a></td>
					<td ><button name="deletePrd" >삭제</button></td>
				</tr>
				</c:forEach>
				</tbody>
			</table>
			<div class="paging">
				<ul class="pagination">

					<c:if test="${productPageMaker.prev}">
						<li style="float: left;"><a
							href="manageProduct.jsp?currentPage=${productPageMaker.startPage-1}">&laquo;</a>&nbsp;&nbsp;&nbsp;</li>
					</c:if>

					<c:forEach begin="${productPageMaker.startPage}" end="${productPageMaker.endPage}" var="idx">
						<li style="float:left;" <c:out value="${productPageMaker.page.currentPage==idx ? 'class=active' : ''}"/>>
							&nbsp;&nbsp;&nbsp;
							<a href="manageProduct.jsp?currentPage=${idx}">${idx}</a>
						</li>
					</c:forEach>

					<c:if test="${productPageMaker.next}">
						<li style="float: left;">&nbsp;&nbsp;<a
							href="manageProduct.jsp?currentPage=${productPageMaker.endPage+1}">&raquo;</a></li>
					</c:if>
				</ul>
			</div>
		</div>
		<div class="registButton">
		<a href="./manageProductRegist.jsp"><input type="button" class="addProd" value="상품등록"></a>
		</div>
	</div>
<%@ include file="../common/footer.jsp"%>