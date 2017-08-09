<%@ include file="../common/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<link rel="stylesheet" href="../res/css/community.css?ver=1">
</head>
<body>
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
								<td width="715" height="10" align="center">사진첨부</td>
								<td width="715" align="center">영상첨부</td>
								<td width="715" align="center">파일첨부</td>
								<td width="715" align="center">음악첨부</td>
							</tr>
							<tr>
								<td height="10" align="center">글씨설정</td>
								<td align="center">정렬</td>
								<td align="center">특수문자</td>
								<td align="center">이모티콘</td>
							</tr>
							<tr>
								<td height="202" colspan="4">&nbsp;</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<div class="border_button">
				<input type="submit" value="수정" /> <input type="submit" value="삭제" />
			</div>
		</div>
	</div>
<br/><br/><br/><br/>
<%@ include file="../common/footer.jsp"%>