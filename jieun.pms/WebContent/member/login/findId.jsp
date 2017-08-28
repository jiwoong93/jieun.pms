<%@page import="jieun.pms.member.login.domain.Member"%>
<%@page import="jieun.pms.member.login.service.MemberServiceImpl"%>
<%@page import="jieun.pms.member.login.service.MemberService"%>
<jsp:include page="../../common/actionHeader.jsp"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<link rel="stylesheet" href="../../res/css/login.css?ver=4">
<script Language='JavaScript'>
	function check(ck){
		if(ck == 1){
			location.href="findId.jsp?check=1";
		}else{
			location.href="findId.jsp?check=2";
		}
	}
	
	function emailcheck() {      
	   var email = document.getElementById("email").value;
	   var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
	         if(exptext.test(email)==false){
	      //이메일 형식이 알파벳+숫자@알파벳+숫자.알파벳+숫자 형식이 아닐경우         
	      document.getElementById('Check').innerHTML = "이메일 형식에 맞춰 입력해 주세요";
	      document.getElementById('Check').style.color = "red";
	      document.addjoin.email.focus();

	      return false;
	   }
	         else if(exptext.test(email)==true){
	            document.getElementById('Check').innerHTML = "올바르게 입력했습니다.";
	            document.getElementById('Check').style.color = "green";
	            document.addjoin.email.focus();
	   }
	            
	}
	
	function check() {      
		   var email = document.getElementById("email").value;
		   var regPhone = /^((01[1|6|7|8|9])[1-9]+[0-9]{6,7})|(010[1-9][0-9]{7})$/;
		         if(regPhone.test(email)==false){
		      //이메일 형식이 알파벳+숫자@알파벳+숫자.알파벳+숫자 형식이 아닐경우         
		      document.getElementById('Check').innerHTML = "형식에 맞춰 입력해 주세요";
		      document.getElementById('Check').style.color = "red";
		      document.addjoin.email.focus();

		      return false;
		   }
		         else if(regPhone.test(email)==true){
		            document.getElementById('Check').innerHTML = "올바르게 입력했습니다.";
		            document.getElementById('Check').style.color = "green";
		            document.addjoin.email.focus();
		   }
		            
		}

</script>
<body>
<%
	String check = request.getParameter("check");
	String checked1 = "";
	String checked2 = "";
	if(check == "2" || check.equals("2")){
		checked2 = "checked";
	} else {
		checked1 = "checked";
	}
%>

<div class="findBox"> 
 <form action="findId.jsp?check=1" method="post">
 <table>
   	<tr>
   <td colspan="2"> <h2>FIND ID</h2> <hr> </td>
  </tr>
  
  <tr>
   <td colspan="2">
    <a href="./findId.jsp?check=1"><input type="radio" name="find_type" value="method_email" <%= checked1 %> onclick="javascript:check(1);">이메일</a>
    <a href="./findId.jsp?check=2"><input type="radio" name="find_type" value="method_phone" <%= checked2 %> onclick="javascript:check(2);">휴대폰번호</a>
    <hr>
   </td>
  </tr>
 
  
  <tr>
   <td>이름</td>
   <td> 
   <input type="text" class="no-border" name="name" id="name" required="required">
   </td>
  </tr>
  
  <tr>
   <td colspan="2"> <hr> </td>
  </tr>
  
  <tr>
  <% if(check == "2" ||check.equals("2")){ %>
   <td>휴대폰번호</td>
   <td> <input type="text" name="phone_num1" id="phone_num1" size="6"/>
    - <input type="text" name="phone_num2" id="phone_num2" size="6" maxlength="4"/>
    - <input type="text" name="phone_num3" id="phone_num3"size="6" maxlength="4"/>
   </td>
  <% } else { %>
   <td>이메일</td>
   <td> <input type="text" class="no-border" name="email" id="email" required="required" onkeyup="emailcheck()" > <br>
   <span id = "Check"></span></td>
  <% } %>
  </tr>
  
  <tr>
   <td colspan="2"> <hr> </td>
  </tr>
 </table>
<br>
<input type="submit" value="FIND ID" class="findbutton"/>
</form>
</div>
 
<br>
<%
	MemberService memberService = new MemberServiceImpl();
	String memName = request.getParameter("name");
	String memEmail = request.getParameter("email");
	String memPhone = request.getParameter("phone_num1") + request.getParameter("phone_num2") + request.getParameter("phone_num3");
	
	Member member = new Member();
	String memId = null;
	
	if(memName != null){
		member.setMemName(memName);
		member.setMemEmail(memEmail);
		member.setMemPhone(memPhone);
		
		if(member.getMemEmail() != null){
			member = memberService.findIdEmail(member);
			memId = member.getMemId();

			if(memId != null && memId != "" ){
%>
			<div class="center">
				<font color="blue">해당되는 아이디를 찾았습니다.</font><br>
				<h1><%= memId %></h1>
			</div>	  	
<%
			}else{
%>
			<div class="center">
				<font color="red">해당되는 아이디가 존재하지않습니다.</font>
			</div>
<%
			}
		}else{
			member = memberService.findIdPhone(member);
			memId = member.getMemId();
			
			if(memId != null || !memId.equals("")){
%>
			<div class="center">
				<font color="blue">해당되는 아이디를 찾았습니다.</font><br>
				<h1><%= memId %></h1>
			</div>
										  	
<%
			}else{
%>
			<div class="center">
				<font color="red">해당되는 아이디가 존재하지않습니다.</font>
			</div>
<%
			}
		}
	}
%>				
<br>

<div class="findMsg">
	<p>비밀번호를 잊어버리셨나요?</p><br>
	<a href="./findPw.jsp?check=1"><button type="button">비밀번호찾기</button></a>
</div>
 	
</body>
 <%@ include file="../../common/footer.jsp"%>
