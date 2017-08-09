<%@ include file="../../common/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html">
<link rel="stylesheet" href="../../res/css/join.css">
<body>
<br/><br/><br/><br/>
<center>
<form method="post" action="actionJoin.jsp">
	<table cellspacing = "1" >
   		<tr>
   			<td colspan="2">  <h2>BASE INFORMATION</h2><hr> </td>
  		</tr>
  
  		<tr>
   			<td> 아이디 </td>
   			<td> 
			   <input type="text" name="memId" id="memId" required="required">
			   <input type = "button" value = "중복확인"/>
   			</td>
  		</tr>

  		<tr>
   			<td> 비밀번호 </td>
   			<td> <input type="password" name="memPw" id="memPw" required="required"> </td>
  		</tr>

  		<tr>
   			<td> 비밀번호 확인 </td>
   			<td> <input type="password" name="memPwc" id="memPwc" required="required"> </td>
  		</tr>
		<tr>
		   	<td> 이름 </td>
		   	<td> <input type="text" name="memName" id="memName" required="required"> </td>
		</tr>

		<tr>
		    <td> 성별 </td>
		    <td>
			    <input type="radio" name="memGender" value="M">남자
			    <input type="radio" name="memGender" value="W">여자
		    </td>
		</tr>
  
		<tr>
		    <td> 생년월일 </td>
		    <td> <input type="text" name="memBirth" id="memBirth" placeholder="ex)19941023"> </td>
		</tr>

		<tr>
		    <td> 이메일 </td>
		    <td>
			    <input type = "text" name="memEmail1" id="memEmail1"> @ <input type = "text" name="mem_email2" id="mem_email2"> &nbsp;&nbsp; 
			    <select>
				    <option> 직접입력 </option>
				    <option value="naver"> naver.com </option>
				    <option value="daum"> daum.net </option>
				    <option value="nate"> nate.com </option>
			    </select>
		    </td>
		</tr>

		<tr>
		    <td> 주소 </td>
		    <td>
			    <input type = "text" name="memZipcode" id="memZipcode">
			    <input type = "button" value = "우편번호"/>
		    </td>
		</tr>
  
		<tr>
		    <td> </td>
		    <td>
			    <input type="text" size="30" name="memStreet" id="memStreet" placeholder="도로명주소">
			    <input type="text" size="30" name="memAddr" id="memAddr" placeholder="상세주소">
		    </td>
		</tr>

		<tr>
		    <td> 휴대폰 </td>
		    <td> 
			    <select name="memPhone1">
				    <option value="010"> 010 </option>
				    <option value="011"> 011 </option>
				    <option value="016"> 016 </option>
				    <option value="018"> 018 </option>
			    </select> 
			    <input type="text" name="memPhone2" id="memPhone2" size = "6"/> - <input type="text" name="mem_phone3" id="mem_phone3" size = "6"/>
		    </td>
		</tr>
  
		<tr>
		    <td colspan="2"> <hr><h2>OPTIONAL INFORMATION</h2><hr></td>
		</tr>

		<tr>
		    <td> 강아지품종 </td>
		    <td>
		    <select name="dogCode">
				<option value="002">슈나우저</option>
		    	<option value="003">푸들</option>
			    <option value="004">차우차우</option>
			    <option value="005">달마티안</option>
			    <option value="006">그레이하운드</option>
			    <option value="007">콜리</option>
			 </select>
		    </td>
		</tr>
	</table>
<br/><br/>
	<input type="submit" value="가입하기">
 	<input type="reset" value="다시입력">
</form>
</center>
<br/><br/><br/><br/>

<%@ include file="../../common/footer.jsp"%>