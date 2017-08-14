<%@page import="jieun.pms.member.update.service.UpdateServiceImpl"%>
<%@page import="jieun.pms.member.update.domain.UpdateMember"%>
<%@page import="jieun.pms.member.update.service.UpdateService"%>
<jsp:include page="../common/actionHeader.jsp"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<link rel="stylesheet" href="../res/css/myinfo.css">
<body>
<%
String cururlInfo = request.getRequestURI().toString();
String pageNameInfo = cururlInfo.substring(cururlInfo.lastIndexOf("/") + 1, cururlInfo.length());
String pathInfo = "";
if(pageNameInfo.equals("main.jsp")){
	pathInfo = "./";
} else if(pageNameInfo.equals("login.jsp") || pageNameInfo.equals("findId.jsp") || pageNameInfo.equals("findPw.jsp") || pageNameInfo.equals("join.jsp")) {
	pathInfo = "../../";
} else {
	pathInfo = "../";
}
%>
<%
if(session.getAttribute("sessionId") == null || session.getAttribute("sessionId").equals("")){
%>
	<script>alert('로그인 후에 이용해주세요.'); location.href = '<%=pathInfo%>member/login/login.jsp';</script>
<%
} else {
%>
<%
	String memId = request.getParameter("id");
	UpdateService updateService = new UpdateServiceImpl();
	UpdateMember updateMember = updateService.selectMember(memId);
%>
<div class="mypage">
	<div class="mypageTitle"> 나의 정보<hr></div>

	<div class="mypageMenu">
		<ul>
			<li><a href="./orderlist.jsp">주문내역</a><hr></li>
			<li><a href="./cart.jsp">장바구니</a><hr></li>
			<li><a href="./wishlist.jsp">위시리스트</a><hr></li>
			<li><a href="./mypost.jsp">내 게시물</a><hr></li>
			<li><a href="./passwordCheck.jsp">나의 정보</a><hr></li>
		</ul>
	</div>
	
	<div class="mypageContents">
		<form method="get" action="./myinfo.jsp">
		 <table>
		   <tr>
		   <td> 이름 </td>
		   <td> <input type="text" name="name" id="name" required="required" value="<%=updateMember.getMemId()%>"> </td>
		  </tr>
		
		  <tr>
		   <td> 비밀번호 </td>
		   <td> <input type="password" name="passwd" id="passwd" required="required" value="<%=updateMember.getMemPw()%>"> </td>
		  </tr>
		
		  <tr>
		   <td> 비밀번호 확인 </td>
		   <td> <input type="password" name="pwcheck" id="pwcheck" required="required" value="<%=updateMember.getMemPw()%>"> </td>
		  </tr>
		 
		
		  <tr>
		   <td> 성별 </td>
		   <td>
		    <input type="radio" name="gender" value="male">남자
		    <input type="radio" name="gender" value="female" checked="checked">여자
		   </td>
		  </tr>
		  
		  <tr>
		   <td> 생년월일 </td>
		   <td> <input type="text" name="birth" id="birth" value="<%=updateMember.getMemBirth()%>"> </td>
		  </tr>
		
		  <tr>
		   <td> 이메일 </td>
		   <td>
		    <input type = "text" name="email_id" id="email_id" value="eunyoung"> @ <input type = "text" name="email" id="email" value="naver.com"> &nbsp;&nbsp; 
		    <select>
		     <option> 직접입력 </option>
		     <option value="naver" selected="selected"> naver.com </option>
		     <option value="daum"> daum.net </option>
		     <option value="nate"> nate.com </option>
		    </select>
		   </td>
		  </tr>
		
		  <tr>
		   <td> 주소 </td>
		   <td>
		    <input type = "text" name="zipcode" id="zipcode" value="<%=updateMember.getMemZipcode()%>">
		    <input type = "button" value = "우편번호"/>
		   </td>
		  </tr>
		  
		  <tr>
		   <td> </td>
		   <td>
		    <input type="text" size="30" name="streetadd" id="streetadd" value="<%=updateMember.getMemStreet()%>">
		    <input type="text" size="30" name="add" id="add" value="<%=updateMember.getMemAddr()%>">
		   </td>
		  </tr>
		
		  <tr>
		   <td> 휴대폰 </td>
		   <td> 
		    <select>
		     <option value="010"> 010 </option>
		     <option value="011"> 011 </option>
		     <option value="016"> 016 </option>
		     <option value="018"> 018 </option>
		    </select> 
		    <input type="text" name="phone_num" id="phone_num2" size = "6" value="8885"/> 
		    - <input type="text" name="phone_num" id="phone_num3" size = "6" value="0409"/>
		   </td>
		  </tr>
		  
		  <tr><td colspan="2"><hr></td></tr>
		  
		   <tr>
		   <td> 강아지품종 </td>
		   <td>
		    <select>
				<option value="poodle">푸들</option>
		    	<option value="maltese" selected="selected">말티즈</option>
			    <option value="pomeranian">포메라니안</option>
			    <option value="yorkshireTerrier">요크셔테리어</option>
			    <option value="bichonFrise">비숑프리제</option>
			    <option value="welshCorgi">웰시코기</option>
			 </select>
		   </td>
		  </tr>
		</table><br/><br/><br/>
		
			<input type="button" value="탈퇴하기">
			<input type="submit" value="수정하기">
		 	<input type="reset" value="다시입력">
		</form>
		
	</div>
</div><br/><br/><br/><br/>
<%
}
%>
<%@ include file="../common/footer.jsp"%>