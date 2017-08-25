<%@page import="jieun.pms.member.list.service.MemberService"%>
<%@page import="jieun.pms.member.update.dao.mapper.UpdateMapper"%>
<%@page import="jieun.pms.member.update.service.UpdateServiceImpl"%>
<%@page import="jieun.pms.member.update.service.UpdateService"%>
<%@page import="jieun.pms.member.update.domain.UpdateMember"%>
<%@page import="jieun.pms.product.domain.Product"%>
<%@page import="jieun.pms.product.service.ProductServiceImpl"%>
<%@page import="jieun.pms.product.service.ProductService"%>
<%@page import="jieun.pms.community.domain.Post"%>
<%@page import="jieun.pms.community.service.PostServiceImpl"%>
<%@page import="jieun.pms.community.service.PostService"%>
<jsp:include page="../common/actionHeader.jsp" />
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<link rel="stylesheet" href="../res/css/community.css?ver=212">
<%
	PostService postService = new PostServiceImpl();
	ProductService productService = new ProductServiceImpl();
	UpdateService updateService = new UpdateServiceImpl();
	
	int revNum = Integer.parseInt(request.getParameter("revNo"));
	Post post = postService.getReview(revNum);
	Product itemNo = productService.getProductNo(post.getItemNo());
	UpdateMember memBer = updateService.selectMember(post.getMemId());
		
	postService.updateCount(Integer.parseInt(request.getParameter("revNo")));
	
	
%>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>
	<form name="input_form">
		<div class="mypage">
			<div class="mypageTitle">
				REVIEW
				<hr>
			</div>

			<div class="mypageMenu">
				<ul>
					<a href="./community.jsp"><li>NOTICE</li></a>
					<hr>
					<a href="./q&a.jsp"><li>Q&A</li></a>
					<hr>
					<a href="./review.jsp"><li>REVIEW</li></a>
					<hr>
				</ul>
			</div>

			<div class="mypageContents">
				<table class="board_table">
					<tr>
						<td>
							<div class="board_head">
								<table width="604" border="1" style="border-collapse: collapse;">
									<tr>
										<td width="180">제목</td>
										<td colspan="3"><%=post.getRevContents()%></td>
									</tr>
									<tr>
										<td>작성자</td>
										<td colspan="3"><%=memBer.getMemName()%></td>
									</tr>
									<tr>
										<td>작성일</td>
										<td width="180"><%=post.getRegDate()%></td>
										<td width="117">조회수</td>
										<td width="512"><%=post.getRevView()%></td>
									</tr>
									<tr>
										<td>상품이름</td>
										<td colspan="3"><%=itemNo.getItemName() %></td>
									</tr>
								</table>
							</div>
							<table class="board_table2" border="1" align="center">
								<tr>
									<td height="202" colspan="4"><%=post.getRevSubject()%></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				<div class="review_button">
					<a href="./review.jsp"><input type="button" value="목록" /></a> <input type="submit" value="수정" />
					<a href="./actionReviewDelete.jsp?revNo=<%=post.getRevNo()%>"><input type="button" name="deletePrd" value="삭제" ></a>
				</div>
			</div>
		</div>
		<br /> <br /> <br /> <br />
	</form>
	<%@ include file="../common/footer.jsp"%>