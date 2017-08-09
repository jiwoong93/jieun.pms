<%@ include file="../../common/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" href="../../res/css/login.css">
<script Language='JavaScript'>
	function check(ck){
		if(ck == 1){
			location.href="findPw.jsp?check=1";
		}else{
			location.href="findPw.jsp?check=2";
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
<br/><br/><br/><br/>
<div class="find_method">
<center>
    <a href="./findId.jsp">FIND ID</a>
</center>
</div>

<br/><br/>

<div class="find_pw_box"> 
<center>
 <form action="">
 
 <table>
 
  <tr>
   <td colspan="2"> <h2>FIND PASSWORD</h2> <hr> </td>
  </tr>
  
  <tr>
   <td colspan="2">
    <a href="./findPw.jsp?check=1"><input type="radio" name="find_type" value="method_email" <%= checked1 %> onclick="javascript:check(1);">이메일</a>
    <a href="./findPw.jsp?check=2"><input type="radio" name="find_type" value="method_phone" <%= checked2 %> onclick="javascript:check(2);">휴대폰번호</a>
    <hr>
   </td>
  </tr>
 
  <tr>
   <td>아이디</td>
   <td> 
   <input type="text" class="no-border" name="member_id" id="member_id" required="required">
   </td>
  </tr>
  
  <tr>
   <td colspan="2"> <hr> </td>
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
  <% if(check == "1" ||check.equals("1")){ %>
   <td>이메일</td>
   <td> <input type="password" class="no-border" name="email" id="email" required="required"> </td>
  <% } else { %>
   <td>휴대폰번호</td>
   <td> <input type="text" name="phone_num" id="phone_num1" size="6"/>
    - <input type="text" name="phone_num" id="phone_num2" size="6"/>
    - <input type="text" name="phone_num" id="phone_num3"size="6"/> </td>
  <% } %>
  </tr>
  
  <tr>
   <td colspan="2"> <hr> </td>
  </tr>
  
 </table>
 </form>
 
<br/>
 <button type="submit" value="Submit" >FIND PASSWORD</button>
 
 </center>
 </div> 
<br/><br/><br/><br/>
<%@ include file="../../common/footer.jsp"%>