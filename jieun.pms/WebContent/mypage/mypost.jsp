<%@ include file="../common/actionHeader.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<link rel="stylesheet" href="../res/css/mypost.css">
<body>
<%
String cururlPost = request.getRequestURI().toString();
String pageNamePost = cururlPost.substring(cururlPost.lastIndexOf("/") + 1, cururlPost.length());
String pathPost = "";
if(pageNamePost.equals("main.jsp")){
	pathPost = "./";
} else if(pageNamePost.equals("login.jsp") || pageNamePost.equals("findId.jsp") || pageNamePost.equals("findPw.jsp") || pageNamePost.equals("join.jsp")) {
	pathPost = "../../";
} else {
	pathPost = "../";
}
%>
<%
if(session.getAttribute("sessionId") == null || session.getAttribute("sessionId").equals("")){
%>
	<script>alert('로그인 후에 이용해주세요.'); location.href = '<%=pathPost%>member/login/login.jsp';</script>
<%
} else {
%>
<div class="mypage">
	<div class="mypageTitle">내 게시물<hr></div>

	<div class="mypageMenu">
		<ul>
			<li><a href="./orderlist.jsp">주문내역</a><hr></li>
			<li><a href="./cart.jsp">장바구니</a><hr></li>
			<li><a href="./wishlist.jsp">위시리스트</a><hr></li>
			<li><a href="./mypost.jsp">내 게시물</a><hr></li>
			<li><a href="./myinfo.jsp">나의  정보</a><hr></li>
		</ul>
	</div>
	
	<div class="mypageContents">
		<table id="mypostTable">
			<tr class="first">
				<td>NO</td>
				<td>CATEGORY</td>
				<td>SUBJECT</td>
				<td>WRITER</td>
				<td>DATE</td>
				<td>READ</td>
			</tr>
			
			<tr><td colspan="6" id="line"><hr></td></tr>
			
			<tr>
				<td>3</td>
				<td>REVIEW</td>
				<td class="postTitle">이뻐요</td>
				<td>송은영</td>
				<td>2017-00-00</td>
				<td>5</td>
			</tr>
			
			<tr>
				<td>2</td>
				<td>Q&A</td>
				<td class="postTitle">[+RE] 문의주셔서 감사합니다.</td>
				<td>COONG SHOP</td>
				<td>2017-00-00</td>
				<td>1</td>
			</tr>
			
			<tr>
				<td>1</td>
				<td>Q&A</td>
				<td class="postTitle">기타문의</td>
				<td>송은영</td>
				<td>2017-00-00</td>
				<td>1</td>
			</tr>
			
		</table>
	</div>
</div><br/><br/><br/><br/>
<%
}
%>
<%@ include file="../common/footer.jsp"%>