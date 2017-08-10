<jsp:include page="../../common/actionHeader.jsp"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<link rel="stylesheet" href="../../res/css/login.css">
<body>
<% request.setCharacterEncoding("UTF-8"); %>
<br/><br/><br/>
<center>
<div class="loginbox">
 <form method="post" action="actionLogin.jsp">
 
 <table>
 
   <tr>
   <td colspan="2">  <h2>LOGIN</h2><hr> </td>
  </tr>
  
  <tr>
   <td>ID</td>
   <td> 
   <input type="text" class="no-border" name="mem_id" id="mem_id" required="required">
   </td>
  </tr>
  
  <tr>
   <td colspan="2"> <hr> </td>
  </tr>
  
  <tr>
   <td>PW</td>
   <td> <input type="password" class="no-border" name="mem_pw" id="mem_pw" required="required"> </td>
  </tr>
  
  <tr>
   <td colspan="2"> <hr> </td>
  </tr>
  
 </table>
 	<input type="submit" value="로그인" >
 </form>
 
 <br/>
 
</div>

<br/><br/><br/>


<div class="joinbox">

<table>
  <tr>
   <td> 아직 회원이 아니신가요? </td>
   <td> <a href="../join/join.jsp">회원가입</a> </td>
  </tr>
  
  <tr>
   <td colspan="2"> <hr> </td>
  </tr>
  
  <tr>
   <td> 아이디를 잊어버리셨나요?  </td>
   <td> <a href="./findId.jsp?check=1">아이디찾기</a> </td>
  </tr>
  
  <tr>
   <td colspan="2"> <hr> </td>
  </tr>
  
  <tr>
   <td> 비밀번호를 잊어버리셨나요? </td>
   <td> <a href="./findPw.jsp?check=1">비밀번호찾기</a> </td>
  </tr>
  
</table>
</div>
</center> 
<br/><br/><br/><br/>
<%@ include file="../../common/footer.jsp"%>