<%@page import="java.util.ArrayList"%>
<%@page import="jieun.pms.product.domain.Product"%>
<%@page import="java.util.List"%>
<%@page import="jieun.pms.product.service.ProductServiceImpl"%>
<%@page import="jieun.pms.product.service.ProductService"%>
<jsp:include page="../common/actionHeader.jsp" />
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<link rel="stylesheet" href="../res/css/community.css?ver=1">
<%
	ProductService productService = new ProductServiceImpl();
	List<Product> products = new ArrayList<Product>();

	if(session.getAttribute("reviewCategory") == null || session.getAttribute("reviewCategory").equals("")){
		
	}
	else{
		String selectCategory = (String)session.getAttribute("reviewCategory");
		products = productService.getProducts(selectCategory);
		
	}
%>
</head>
<body>
	<form enctype="multipart/form-data">
		<div class="mypage">
			<div class="mypageTitle">
				REVIEW
				<hr>
			</div>

			<div class="mypageMenu">
				<ul>
					<li><a href="./community.jsp">NOTICE</a>
						<hr></li>
					<li><a href="./q&a.jsp">Q&A</a>
						<hr></li>
					<li><a href="./review.jsp">REVIEW</a>
						<hr></li>
				</ul>
			</div>

			<div class="mypageContents">
				<table class="board_table" border="1">
					<tr>
						<td>
							<div class="board_head">
								제목: <input type="text" size="79"/>
							</div> <br> &nbsp;&nbsp;
							<button	onclick="window.open('./reviewcategory.jsp','상품 선택','width=380, height=10, location=no, status=no, scrollbars=no, left=800, top=400');">상품
								선택</button> 상품 : 
							<table class="board_table2" border="1" align="center">
								<tr>
									<!-- 파일첨부 -->
									<td height="10" align="center"><input type="file"
										name="filename"><br></td>
								</tr>
								<tr>
									<td height="202" colspan="4"><textarea
											style="resize: none; width: 610px; height: 420px;"></textarea></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				<div class="qnaborder_button">
					<a href="./review.jsp"><input type="button" value="목록" /></a> <input
						type="submit" value="등록" />
				</div>
			</div>
		</div>
	</form>
</body>
</html>
<%@ include file="../common/footer.jsp"%>