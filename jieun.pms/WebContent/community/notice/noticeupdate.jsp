<%@page import="jieun.pms.community.notice.domain.Post"%>
<%@page import="java.util.List"%>
<%@page import="jieun.pms.community.notice.service.PostServiceImpl"%>
<%@page import="jieun.pms.community.notice.service.PostService"%>
<jsp:include page="../../common/actionHeader.jsp" />
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<link rel="stylesheet" href="../../res/css/community.css?ver=212">
<%
	PostService postService = new PostServiceImpl();
	int noticeNo = Integer.parseInt(request.getParameter("noticeNo"));
	Post post = postService.getNotice(noticeNo);
%>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>
	<form name="input_form" action="./action/actionUpdate.jsp">
	<input type="hidden" name="noticeNo" value="<%=request.getParameter("noticeNo")%>">
		<div class="mypage">
			<div class="mypageTitle">
				NOTICE
				<hr>
			</div>

			<div class="mypageMenu">
				<ul>
					<a href="../notice/notice.jsp"><li>NOTICE</li></a>
					<hr>
					<a href="../q&a/q&a.jsp"><li>Q&A</li></a>
					<hr>
					<a href="../review/review.jsp"><li>REVIEW</li></a>
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
										<td colspan="3">
											<input type="text" name="noticeSubject" value=<%=post.getNoticeSubject()%>>
										</td>
									</tr>
									<tr>
										<td>작성자</td>
										<td colspan="3">관리자</td>
									</tr>
									<tr>
										<td>작성일</td>
										<td width="180"><%=post.getNoticeDate()%></td>
										<td width="117">조회수</td>
										<td width="512"><%=post.getNoticeView()%></td>
									</tr>
								</table>
							</div>
							<table class="board_table2" border="1" align="center">
								<tr>
									<td height="202" colspan="4">
										<textarea name="noticeContent" style="resize: none; width: 600px; height: 420px;" ><%=post.getNoticeContents()%></textarea>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				<div class="review_button">
					<a href="./notice.jsp"><input type="button" value="목록" /></a> 
					<%
						String currentId = (String) session.getAttribute("sessionId");
						if (currentId != null && currentId != "") {
							if(currentId.equals("admin")){
					%>
							<input type="submit" value="수정">
							<a href="./action/actionDelete.jsp?noticeNo=<%=post.getNoticeNo()%>"><input type="button" name="deletePrd" value="삭제" ></a>
					<%
							}
					%>		
					<% 	} 
					%>
				</div>
			</div>
		</div>
		<br /> <br /> <br /> <br />
	</form>
	<%@ include file="../../common/footer.jsp"%>