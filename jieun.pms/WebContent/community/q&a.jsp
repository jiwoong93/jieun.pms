<%@ include file="../common/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<link rel="stylesheet" href="../res/css/community.css?ver=1">
<body>
<div class="mypage">
	<div class="mypageTitle">Q&A<hr></div>

	<div class="mypageMenu">
		<ul>
			<li><a href="./community.jsp">NOTICE</a><hr></li>
			<li><a href="./q&a.jsp">Q&A</a><hr></li>
			<li><a href="./review.jsp">REVIEW</a><hr></li>
		</ul>
	</div>
	
	<div class="mypageContents">
			<table class="community_table" border="1">
				<tr>
					<td width="50" height="40" align="center">번호</td>
					<td width="500" align="center">제목</td>
					<td width="100" align="center">작성자</td>
					<td width="150" align="center">작성일</td>
					<td width="50" align="center">조회</td>
				</tr>
				<tr>
					<td height="30" align="center">1</td>
					<td align="center">가나다라</td>
					<td align="center">마바사</td>
					<td align="center">2017/09/06</td>
					<td align="center">456</td>
				</tr>
			</table>

			<!-- 검색 -->
			<div class="comu_search">
			<input type="text" class="textbox" size="18">
			<input type="submit" value="검색" /><br />
			</div>
			
			<!-- 좌우버튼 -->
			<div class="comu_button">
			<input type="button" value="◀"/>
			<input type="button" value="▶"/>
			</div>
			
			<!-- 글쓰기 -->
			<div class="comu_write">
			<a href="./board.jsp"><input type="button" value="글쓰기"></a>
			</div>
	</div>
</div>
<br/><br/><br/><br/>
<%@ include file="../common/footer.jsp"%>