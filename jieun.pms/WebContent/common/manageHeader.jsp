<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Coong Shop</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<%
	String cururl = request.getRequestURI().toString();
	String pageName = cururl.substring(cururl.lastIndexOf("/") + 1, cururl.length());
	String path = "";
	if (pageName.equals("main.jsp")) {
		path = "./";
	} else if (pageName.equals("login.jsp") || pageName.equals("findId.jsp") || pageName.equals("findPw.jsp")
			|| pageName.equals("join.jsp")) {
		path = "../../";
	} else {
		path = "../";
	}
%>
<link rel="stylesheet" href="<%=path%>res/css/normalize.css">
<link rel="stylesheet" href="<%=path%>res/css/header.css?ver=2">
<script src="<%=path%>res/js/vendor/jquery-ui-1.10.3.custom.min.js"></script>
<script src="<%=path%>res/js/header.js"></script>

<header class="page-header" role="banner">
	<div class="top">
		<hr >
		<span id="search">	
			<input id="searchBox" type="text">
			<a href="<%= path %>product/productSearch.jsp"><img src="<%= path %>res/img/header/search.png" width="20px"></a> 
			<!--<input  TYPE="image" src="<%= path %>res/img/header/search.png" name="Submit" value="Submit" width="20px">-->
		</span>
		<nav class="primary-nav" role="navigation">
			<ul>
				<%-- <%
					String name = (String) session.getAttribute("sessionName");
				%>
				<%=name%>님 --%>
				<%
					if (session.getAttribute("sessionId") != null) {
				%>
				<li><a href="<%=path%>member/login/logout.jsp">로그아웃</a></li>
				<%
					} else {
				%>
				<li><a href="<%=path%>manager/login/login.jsp">로그인</a></li>
				<%
					}
				%>

				<li><a href="<%=path%>admin/manageSelling.jsp">판매관리</a></li>
				<li><a href="<%=path%>admin/manageProduct.jsp">상품관리</a></li>
				<li><a href="<%=path%>admin/manageMem.jsp">회원관리</a></li>
				<li><a href="<%=path%>community/community.jsp">커뮤니티</a></li>
			</ul>
		</nav>
	</div>
</header>
<header class="page-logo" role="logo">
	<div class="logo">
		<hr border=2>
		<a href="<%=path%>main.jsp"><img
			src="<%=path%>res/img/header/logo2.png" width="960px" height="150px"></a>
	</div>
</header>
<header class="page-category" role="category">
	<div class="category">
		<hr border=3>
		<nav class="category-nav" role="navigation">
			<ul>
                <li><a href="<%= path %>product/productList.jsp?category=10">사료</a></li>
                <li><a href="<%= path %>product/productList.jsp?category=20">간식</a></li>
                <li><a href="<%= path %>product/productList.jsp?category=30">위생</a></li>
                <li><a href="<%= path %>product/productList.jsp?category=40">미용</a></li>
                <li><a href="<%= path %>product/productList.jsp?category=50">의류</a></li>
				<li><a href="<%= path %>product/productList.jsp?category=60">악세사리</a></li>
				<li><a href="<%= path %>product/productList.jsp?category=70">장난감</a></li>
				<li><a href="<%= path %>product/productList.jsp?category=80">하우스</a></li>
            </ul>
		</nav>
		<br>
		<hr border=3>
	</div>
</header>
</head>