<%@page import="jieun.pms.member.update.service.UpdateServiceImpl"%>
<%@page import="jieun.pms.member.update.domain.UpdateMember"%>
<%@page import="jieun.pms.member.update.service.UpdateService"%>
<jsp:include page="../common/actionHeader.jsp"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<link rel="stylesheet" href="../res/css/myinfo.css">
<script>
function delchk(id){
	 if(confirm("정말로 탈퇴하시겠습니까?")){
		 location.href = "./action/memDel.jsp?id=" + id;
	 }
}
</script>
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
		<form method="post" action="./action/memUpdate.jsp">
		 <input type="hidden" name="memLevel" value="<%=updateMember.getMemLevel()%>" />
		 <input type="hidden" name="memId" required="required" value="<%=updateMember.getMemId()%>">
		 <input type="hidden" name="regDate" required="required" value="<%=updateMember.getRegDate()%>">
		 <table>
			<tr>
				<td> 아이디 </td>
				<td> <input type="text" name="memIdtxt" required="required" value="<%=updateMember.getMemId()%>" disabled> </td>
			</tr>
			<tr>
				<td> 비밀번호 </td>
				<td> <input type="password" name="memPw" required="required" value="<%=updateMember.getMemPw()%>" > </td>
			</tr>
			<tr>
				<td> 비밀번호 확인 </td>
				<td> <input type="password" name="memPwc" required="required" value="<%=updateMember.getMemPw()%>" > </td>
			</tr>
		  
		  <tr>
		   <td> 이름 </td>
		   <td> <input type="text" name="memName" required="required" value="<%=updateMember.getMemName()%>" > </td>
		  </tr>
		
		  <tr>
		   <td> 성별 </td>
		   <td>
		   	<%
		   		String genderM = "";
		   		String genderW = "";
		   		if(updateMember.getMemGender().equals("M")){
		   			genderM = "checked";
		   		} else {
		   			genderW = "checked";
		   		}
		   	%>
		    <input type="radio" name="memGender" value="M" <%=genderM %>>남자
		    <input type="radio" name="memGender" value="W" <%=genderW %>>여자
		   </td>
		  </tr>
		  
		  <tr>
		   <td> 가입일 </td>
		   <td> <input type="text" name="regDatetxt" value="<%=updateMember.getRegDate() %>" disabled> </td>
		  </tr>
		  
		  <tr>
		   <td> 생년월일 </td>
		   <td> <input type="text" name="memBirth" value="<%=updateMember.getMemBirth() %>"> </td>
		  </tr>
		
		  <tr>
		   <td> 이메일 </td>
		   <td>
		   <%
		   		String[] email = updateMember.getMemEmail().split("@");
		   %>
		    <input type = "text" name="memEmail1" value="<%=email[0]%>"> 
		     @ <input type = "text" name="memEmail2" value="<%=email[1]%>">
		   </td>
		  </tr>
		
		  <tr>
		   <td> 주소 </td>
		   <td>
		    <input type = "text" name="memZipcode" value="<%=updateMember.getMemZipcode()%>">
		    <input type = "button" value = "우편번호"/>
		   </td>
		  </tr>
		  
		  <tr>
		   <td> </td>
		   <td>
		    <input type="text" size="30" name="memStreet" value="<%=updateMember.getMemStreet()%>">
		    <input type="text" size="30" name="memAddr" value="<%=updateMember.getMemAddr()%>">
		   </td>
		  </tr>
		
		  <tr>
		   <td> 휴대폰 </td>
		   <td>
		   <%
		   		String phone = updateMember.getMemPhone();
		   		String phone1 = phone.substring(0, 3);
		   		String phone2 = phone.substring(3, 7);
		   		String phone3 = phone.substring(7, 11);
		   %>
		    <input type="text" name="memPhone1" size="6" value="<%=phone1%>"> 
		    - <input type="text" name="memPhone2" size="6" value="<%=phone2%>"> 
		    - <input type="text" name="memPhone3" size="6" value="<%=phone3%>">
		   </td>
		  </tr>
		  
		  <tr><td colspan="2"><hr></td></tr>
		  
		   <tr>
		   <td> 강아지품종 </td>
		   <td>
		    <select name="dogCode" value="<%=updateMember.getDogCode()%>">
				<option value="002">슈나우저</option>
		    	<option value="003">푸들</option>
			    <option value="004">차우차우</option>
			    <option value="005">달마티안</option>
			    <option value="006">그레이하운드</option>
			    <option value="007">콜리</option>
			 </select>
		   </td>
		  </tr>
		</table><br/><br/><br/>
			<input type="submit" value="수정하기">
			<input type="button" name="delete" value="탈퇴하기" onclick="javascript:delchk('<%=updateMember.getMemId()%>');" >
		</form>
		
	</div>
</div><br/><br/><br/><br/>
<%
}
%>
<%@ include file="../common/footer.jsp"%>