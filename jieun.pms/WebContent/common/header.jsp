<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Coong Shop</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
   $(function() {
       $(window).scroll(function() {
           if ($(this).scrollTop() > 500) {
               $('#MOVE_TOP_BTN').fadeIn();
           } else {
               $('#MOVE_TOP_BTN').fadeOut();
           }
       });
       
       $("#MOVE_TOP_BTN").click(function() {
           $('html, body').animate({
               scrollTop : 0
           }, 400);
           return false;
       });
   });
</script>
<%
String cururl = request.getRequestURI().toString();
String pageName = cururl.substring(cururl.lastIndexOf("/") + 1, cururl.length());
String path = "";
if(pageName.equals("main.jsp")){
   path = "./";
} else if(pageName.equals("login.jsp") || pageName.equals("findId.jsp") || pageName.equals("findPw.jsp") || pageName.equals("join.jsp")
		 || pageName.equals("notice.jsp") || pageName.equals("noticeboard.jsp") || pageName.equals("noticeupdate.jsp") || pageName.equals("noticeview.jsp")
		 || pageName.equals("q&a.jsp")
		 || pageName.equals("reveiw.jsp") || pageName.equals("reviewboard.jsp") || pageName.equals("reviewupdate.jsp") || pageName.equals("reviewview.jsp")) {
   path = "../../";
} else {
   path = "../";
}
%>
   <link rel="stylesheet" href="<%= path %>res/css/header.css">
   <script src="<%= path %>res/js/vendor/jquery-ui-1.10.3.custom.min.js"></script>
   <script src="<%= path %>res/js/header.js"></script>
<header class="page-header" role="banner">
    <div class="top" >
    <a id="MOVE_TOP_BTN" href="#">TOP</a><!-- 탑버튼 -->
   <hr>
      <span id="search">   
         <input id="searchBox" type="text">
         <a href="<%= path %>product/productSearch.jsp"><img src="<%= path %>res/img/header/search.png" width="20px"></a> 
         <!--<input  TYPE="image" src="<%= path %>res/img/header/search.png" name="Submit" value="Submit" width="20px">-->
      </span>

        <nav class="primary-nav" role="navigation">
            <ul>
<%
         if(session.getAttribute("sessionId") != null){
%>
            <li><a href="<%= path %>member/login/logout.jsp">로그아웃</a></li>
<% 
         } else {
%>
                <li><a href="<%= path %>member/login/login.jsp">로그인</a></li>
                <li><a href="<%= path %>member/join/join.jsp">회원가입</a></li>
<%
         }
%>
                <li><a href="<%= path %>mypage/cart.jsp">장바구니</a></li>
                <li><a href="<%= path %>mypage/orderlist.jsp">마이페이지</a></li>
                <li><a href="<%= path %>community/community.jsp">커뮤니티</a></li>
            </ul>
        </nav>
    </div>
</header>
<header class="page-logo" role="logo">
   <div class="logo">
   <hr>
      <a href="<%= path %>main.jsp"><img src="<%= path %>res/img/header/logo2.png" width="960px" height="150px"></a>
   </div>
</header>
<header class="page-category" role="category">
   <div class="category">
        <hr>
      <nav class="category-nav" role="navigation">
            <ul id="nav">
                <li><a href="<%= path %>product/productList.jsp?category=10">사료</a></li>
                <li><a href="<%= path %>product/productList.jsp?category=20">간식</a></li>
                <li><a href="javascript:void(0)">위생</a>
                   <ul>
                  <li><a href="<%= path %>product/productList.jsp?category=31">배변</a></li>
                  <li><a href="<%= path %>product/productList.jsp?category=32">탈취제</a></li>
                  <li><a href="<%= path %>product/productList.jsp?category=33">귀·눈 위생</a></li>
               </ul>
            </li>
                <li><a href="javascript:void(0)">미용</a>
               <ul>
                  <li><a href="<%= path %>product/productList.jsp?category=41">가위</a></li>
                  <li><a href="<%= path %>product/productList.jsp?category=42">브러쉬</a></li>
               </ul>
            </li>
                <li><a href="<%= path %>product/productList.jsp?category=50">의류</a></li>
            <li><a href="javascript:void(0)">악세사리</a>
               <ul>
                  <li><a href="<%= path %>product/productList.jsp?category=61">자동줄·하네스</a></li>
                  <li><a href="<%= path %>product/productList.jsp?category=62">배낭</a></li>
                  <li><a href="<%= path %>product/productList.jsp?category=63">헤어핀·모자</a></li>
                  <li><a href="<%= path %>product/productList.jsp?category=64">양말·신발</a></li>
               </ul>
            </li>
            <li><a href="<%= path %>product/productList.jsp?category=70">장난감</a></li>
            <li><a href="<%= path %>product/productList.jsp?category=80">하우스</a></li>
            </ul>
        </nav>
      <br>
      <hr>
   </div>
</header>
</head>