<%@page import="jieun.pms.community.domain.Post"%>
<%@page import="jieun.pms.community.service.PostServiceImpl"%>
<%@page import="jieun.pms.community.service.PostService"%>
<jsp:include page="../common/actionHeader.jsp" />
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<link rel="stylesheet" href="../res/css/community.css?ver=8">
<%
	PostService postService = new PostServiceImpl();
	String revNum = request.getParameter("revNo");
	int revNumber = Integer.parseInt(revNum);
	Post post = postService.getReview(revNumber);
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
				글쓰기
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
				<table class="board_table" border="1">
					<tr>
						<td>
							<div class="board_head">
								<table width="604" border="1">
									<tr>
										<td width="180">제목</td>
										<td colspan="3"><%=post.getSubject()%></td>
									</tr>
									<tr>
										<td>작성자</td>
										<td colspan="3"><%=post.getMemId()%></td>
									</tr>
									<tr>
										<td>작성일</td>
										<td width="180"><%=post.getRegDate()%></td>
										<td width="117">조회수</td>
										<td width="512"><%=post.getView()%></td>
									</tr>
									<tr>
										<td>상품 이름</td>
										<td colspan="3"></td>
									</tr>
								</table>
							</div>
							<table class="board_table2" border="1" align="center">
								<tr>
									<td height="202" colspan="4"><%=post.getContents()%></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				<div class="review_button">
					<a href="./review.jsp"><input type="button" value="목록" /></a> <input
						type="submit" value="수정" /> <input type="submit" value="삭제" />
				</div>
			</div>
		</div>
		<br /> <br /> <br /> <br />
	</form>
	<%@ include file="../common/footer.jsp"%>