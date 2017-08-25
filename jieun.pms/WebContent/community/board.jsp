<jsp:include page="../common/actionHeader.jsp"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<link rel="stylesheet" href="../res/css/community.css">
</head>
<body>
	<form enctype="multipart/form-data">
		<div class="mypage">
			<div class="mypageTitle">
				글쓰기
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
								<select name="select" size="1">
									<option>공지사항</option>
									<option>Q&A</option>
									<option>REVIEW</option>
								</select> <input type="text" size="70" />
							</div>
							<table class="board_table2" border="1" align="center">
								<tr>
									<!-- 파일첨부 -->
									<td height="10" align="center">
									<input type="file" name="filename"><br></td>
								</tr>
								<tr>
									<td height="202" colspan="4"><input type="text" style="width:100%; height:101%; margin:-2px;"/></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				<div class="border_button">
					<input type="submit" value="등록" /> <input type="submit" value="삭제" />
					<input type="button" value="목록" />
				</div>
			</div>
		</div>
	</form>
</body>
</html>
<%@ include file="../common/footer.jsp"%>