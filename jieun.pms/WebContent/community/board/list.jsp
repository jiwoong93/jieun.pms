<jsp:include page="../../common/header.jsp" />
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<link rel="stylesheet" href="../../res/css/community.css">
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
<body>
	<form name="input_form">
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
					<tr>
						<%
							if (currentId != null && currentId != "") {
								if (currentId.equals("admin")) {
						%>
						<td align="center"><input type="checkbox" name="chk"
							value="1"></td>
						<%
							}
							}
						%>

						<td height="30" align="center">1</td>
						<td align="center"><a href="./noticeCk.jsp">입금확인이 안되는 경우</a></td>
						<td align="center">관리자</td>
						<td align="center">2017/09/06</td>
						<td align="center">999</td>
					</tr>
				</table>

				<!-- 검색 -->
				<div class="comu_search">
					<input type="text" class="textbox" size="18"> <input
						type="submit" value="검색" /><br />
				</div>

				<!-- 좌우버튼 -->
				<div class="comu_button">
					<input type="button" value="◀" /> <input type="button" value="▶" />
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
					<a href="./write.jsp"><input type="button" value="글쓰기"></a>
				</div>
				<%
		}
	}
%>
			</div>
		</div>
	</form>
<%@ include file="../../common/footer.jsp"%>