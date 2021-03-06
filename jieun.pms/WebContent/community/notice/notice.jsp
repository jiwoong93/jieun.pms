<%@page import="jieun.pms.community.notice.service.PostServiceImpl"%>
<%@page import="jieun.pms.community.notice.service.PostService"%>
<%@page import="jieun.pms.community.notice.service.PageServiceImpl"%>
<%@page import="jieun.pms.community.notice.service.PageService"%>
<%@page import="jieun.pms.community.notice.domain.Page"%>
<jsp:include page="../../common/actionHeader.jsp" />
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	Page myPage = null;
	String currentPage = request.getParameter("currentPage");
	if (currentPage != null)
		myPage = new Page(Integer.parseInt(currentPage));
	else
		myPage = new Page();

	PageService pageService = new PageServiceImpl(5, myPage);
	pageContext.setAttribute("pageMaker", pageService);
	PostService postService = new PostServiceImpl();
	pageContext.setAttribute("posts", postService.NoticePosts(myPage));
%>
<!DOCTYPE html>
<link rel="stylesheet" href="../../res/css/community.css?ver=4">
<script>
<!-- 체크박스 전체선택 -->
	function check() {
		cbox = input_form.chk;
		if (cbox.length) { // 여러 개일 경우
			for (var i = 0; i < cbox.length; i++) {
				cbox[i].checked = input_form.all.checked;
			}
		} else { // 한 개일 경우
			cbox.checked = input_form.all.checked;
		}
	}
</script>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>
	<form name="input_form" action="./action/actionDelete.jsp">
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
				<div class="container">
					<!-- 글 목록 -->
					<table class="community_table" border="1">
						<tr>
							<%
								String currentId = (String) session.getAttribute("sessionId");
								if (currentId != null && currentId != "") {
									if (currentId.equals("admin")) {
							%>
							<td width="30" align="center"><input type="checkbox"
								name="all" onclick="check();"></td>
							<%
								}
								}
							%>
							<td width="50" height="40" align="center">번호</td>
							<td width="500" align="center">제목</td>
							<td width="100" align="center">작성자</td>
							<td width="150" align="center">작성일</td>
							<td width="50" align="center">조회</td>
						</tr>
						<c:forEach var="post" items="${posts}">
							<tr>
								<%
									if (currentId != null && currentId != "") {
											if (currentId.equals("admin")) {
								%>
								<td align="center"><input type="checkbox" name="noticeNo"
									value="${post.noticeNo}"></td>
								<%
									}
										}
								%>
								<td height="30" align="center">${post.noticeNo}</td>
								<td align="center"><a href="./noticeview.jsp?noticeNo=${post.noticeNo}">${post.noticeSubject}</a></td>
								<td align="center">관리자</td>
								<td align="center">${post.noticeDate}</td>
								<td align="center">${post.noticeView}</td>
							</tr>
						</c:forEach>
					</table>


					<!-- 페이징 -->
					<div class="paging">
						<ul class="pagination">

							<c:if test="${pageMaker.prev}">
								<li style="float: left;"><a
									href="notice.jsp?currentPage=${pageMaker.startPage-1}">&laquo;</a>&nbsp;&nbsp;</li>
							</c:if>

							<c:forEach begin="${pageMaker.startPage}"
								end="${pageMaker.endPage}" var="idx">
								<li style="float: left;"
									<c:out value="${pageMaker.page.currentPage==idx ? 'class=active' : ''}"/>>
									&nbsp;&nbsp;&nbsp;<a href="notice.jsp?currentPage=${idx}">${idx}</a>
								</li>
							</c:forEach>

							<c:if test="${pageMaker.next}">
								<li style="float: left;">&nbsp;&nbsp;<a
									href="notice.jsp?currentPage=${pageMaker.endPage+1}">&raquo;</a></li>
							</c:if>
						</ul>
					</div>
				</div>

				<!-- 검색 -->
				<div class="comu_search">
					<input type="text" class="textbox" size="18"> <input type="submit" value="검색" /><br />
				</div>

				<%
					if (currentId != null && currentId != "") {
						if (currentId.equals("admin")) {
				%>
				<!-- 삭제버튼 -->
				<div class="comu_delete">
					<input type="submit" value="삭제" />
				</div>

				<!-- 글쓰기 -->
				<div class="comu_write">
					<a href="./noticeboard.jsp"><input type="button" value="글쓰기"></a>
				</div>
				<%
					}
					}
				%>
			</div>
		</div>
		<br /> <br /> <br /> <br />
	</form>
	<%@ include file="../../common/footer.jsp"%>