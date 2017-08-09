
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html">
<link rel="stylesheet" href="../css/login.css">
<body>
<% request.setCharacterEncoding("UTF-8"); %>
<br/><br/><br/>
<center>
<div class="loginbox">
 <form method="post" action="action_login.jsp">
 
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

</center>
</body>