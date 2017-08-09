<%@ include file="../common/actionHeader.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<link rel="stylesheet" href="../res/css/wishlist.css">
<body>
<%
String cururlWish = request.getRequestURI().toString();
String pageNameWish = cururlWish.substring(cururlWish.lastIndexOf("/") + 1, cururlWish.length());
String pathWish = "";
if(pageNameWish.equals("main.jsp")){
	pathWish = "./";
} else if(pageNameWish.equals("login.jsp") || pageNameWish.equals("findId.jsp") || pageNameWish.equals("findPw.jsp") || pageNameWish.equals("join.jsp")) {
	pathWish = "../../";
} else {
	pathWish = "../";
}
%>
<%
if(session.getAttribute("sessionId") == null || session.getAttribute("sessionId").equals("")){
%>
	<script>alert('로그인 후에 이용해주세요.'); location.href = '<%=pathWish%>member/login/login.jsp';</script>
<%
} else {
%>
 <div class="mypage">
	<div class="mypageTitle">위시리스트<hr></div>
 
	<div class="mypageMenu">
		<ul>
			<li><a href="./orderlist.jsp">주문내역</a><hr></li>
			<li><a href="./cart.jsp">장바구니</a><hr></li>
			<li><a href="./wishlist.jsp">위시리스트</a><hr></li>
			<li><a href="./mypost.jsp">내 게시물</a><hr></li>
			<li><a href="./myinfo.jsp">나의 정보</a><hr></li>
		</ul>
	</div>
	<div class="mypageContents">
		<form  method="get" action="./wishlist.jsp">
		<table id="wishlistTable">
			<tr class="first">
				<td><input type="checkbox" name="selectAll"></td>
				<td>상품명</td>
				<td>선택옵션</td>
				<td>수량</td>
				<td>가격</td>
				<td>삭제</td>
			</tr>
			
			<tr><td colspan="6" id="line"><hr></td></tr>
			
			<tr>
				<td><input type="checkbox" name="select"></td>
				<td>곰돌이배낭</td>
				<td>S</td>
				<td><input type="number" name="amount" id="amount" value="1"></td>
				<td>20,000원</td>
				<td><input type="button" name="delete" value="X"></td>
			</tr>
		</table><br/><br/>
		
		<table class="buttonTable">
			<tr>
				<td>
					<input type="button" name="deleteAll" value="삭제">
				</td>
				<td class="right">
					<input type="submit" name="tocart" value="장바구니로 이동">
				</td>
			</tr>
		</table>
		</form>
	</div>
</div>
<br/><br/><br/><br/>
<%
}
%>
<%@ include file="../common/footer.jsp"%>