<jsp:include page="../../common/actionHeader.jsp"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<link rel="stylesheet" href="../../res/css/community.css">
<body>
	<form enctype="multipart/form-data" action="../notice/notice.jsp">
		<div class="mypage">
			<div class="mypageTitle">NOTICE<hr></div>

			<div class="mypageMenu">
				<ul>
					<a href="./list.jsp"><li>NOTICE</li></a><hr>
					<a href="./list.jsp"><li>Q&A</li></a><hr>
					<a href="./list.jsp"><li>REVIEW</li></a><hr>
				</ul>
			</div>

			<div class="mypageContents">
				<table class="board_table" border="1">
					<tr>
						<td>
							<div class="board_head">
								<select name="select" size="1">
									<option>공지사항</option>
								</select> <input type="text" size="70" />
							</div>
							<table class="board_table2" border="1" align="center">
								<tr>
									<!-- 파일첨부 -->
									<td height="10" align="center"><input type="file"
										name="filename"><br></td>
								</tr>
								<tr>
									<td height="202" colspan="4"><input type="text"
										style="width: 100%; height: 101%; margin: -2px;" /></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				<div class="board_button">
				<a href="./list.jsp"><input type="button" value="목록" /></a>
					<input type="submit" value="등록" /> <input type="submit" value="삭제" />
				</div>
			</div>
		</div>
	</form>
</body>