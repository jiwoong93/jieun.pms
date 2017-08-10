<jsp:include page="../common/actionHeader.jsp"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<link rel="stylesheet" href="../res/css/passwordCheck.css?ver=2">
<body>
	<div class="mypage">
		<div class="mypageTitle">
			나의 정보
			<hr>
		</div>
		<div class="mypageMenu">
			<ul>
				<li><a href="./orderlist.jsp">주문내역</a>
				<hr></li>
				<li><a href="./cart.jsp">장바구니</a>
				<hr></li>
				<li><a href="./wishlist.jsp">위시리스트</a>
				<hr></li>
				<li><a href="./mypost.jsp">내 게시물</a>
				<hr></li>
				<li><a href="./myinfo.jsp">나의 정보</a>
				<hr></li>
			</ul>
		</div>
	</div>
	<form action="./actionPassword.jsp" method="post">
		<div class="pwdCheck">
			<p>비밀번호를 한번 더 입력해 주세요<p>
			<input type="password" required="required" name="check_pw" id="check_pw">
			<input type="submit" >
		</div>
	</form>
<%@ include file="../common/footer.jsp"%>