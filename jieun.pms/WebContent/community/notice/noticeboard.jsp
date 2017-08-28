<jsp:include page="../../common/actionHeader.jsp" />
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<link rel="stylesheet" href="../../res/css/community.css?ver=1">
</head>
<body>
	<form name="f1" action="./action/actionInsert.jsp">
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
				<table class="board_table" border="1">
					<tr>
						<td>
							<div class="board_head">
								제목: <input type="text" size="76" name="noticeSubject" />
							</div>
							<table class="board_table2" border="1" align="center">
								<tr>
									<!-- 파일첨부 -->
									<td height="10" align="center"><input type="file" name="noticeFilename"><br></td>
								</tr>
								<tr>
									<td height="202" colspan="4"><textarea name="noticeCentent" style="resize: none; width: 610px; height: 420px;"></textarea></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				<div class="qnaborder_button">
					<a href="./notice.jsp"><input type="button" value="목록" /></a>
					<input type="submit" value="등록" />
				</div>
			</div>
		</div>
	</form>
</body>
</html>
<%@ include file="../../common/footer.jsp"%>