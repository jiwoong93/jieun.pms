<jsp:include page="../common/actionHeader.jsp"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<link rel="stylesheet" href="../res/css/manageMemInfo.css">
<body>

<div class="memInfo">
	<div class="menuTitle">
		<h2>회원관리<hr></h2>
	</div>
	<form method="get" action="./myinfo.jsp">
		 <table id="memInfoTable">
			<tr>
				<td> 아이디 </td>
				<td> <input type="text" name="memId" required="required" value="eunyoung" disabled> </td>
			</tr>
		  
		  <tr>
		   <td> 이름 </td>
		   <td> <input type="text" name="name" required="required" value="송은영" disabled> </td>
		  </tr>
		
		  <tr>
		   <td> 성별 </td>
		   <td>
		    <input type="radio" name="gender" value="male" disabled>남자
		    <input type="radio" name="gender" value="female" checked="checked" disabled>여자
		   </td>
		  </tr>
		  
		  <tr>
		   <td> 가입일 </td>
		   <td> <input type="text" name="joinDate" value="2017-00-00" disabled> </td>
		  </tr>
		  
		  <tr>
		   <td> 구매금액 </td>
		   <td> <input type="text" name="totamount" value="200,000"> </td>
		  </tr>
		  
		  <tr>
		   <td> 방문횟수 </td>
		   <td> <input type="text" name="visitCnt" value="50" disabled> </td>
		  </tr>
		  
		  <tr>
		   <td> 생년월일 </td>
		   <td> <input type="text" name="birth" value="1994-10-23" disabled> </td>
		  </tr>
		
		  <tr>
		   <td> 이메일 </td>
		   <td>
		    <input type = "text" name="email_id" value="eunyoung"> 
		     @ <input type = "text" name="email" value="naver.com">
		   </td>
		  </tr>
		
		  <tr>
		   <td> 주소 </td>
		   <td>
		    <input type = "text" name="zipcode" value="12345">
		    <input type = "button" value = "우편번호"/>
		   </td>
		  </tr>
		  
		  <tr>
		   <td> </td>
		   <td>
		    <input type="text" size="30" name="streetadd" value="도로명주소">
		    <input type="text" size="30" name="add" value="상세주소">
		   </td>
		  </tr>
		
		  <tr>
		   <td> 휴대폰 </td>
		   <td>
		    <input type="text" name="phone_num" size="6" value="010"> 
		    - <input type="text" name="phone_num" size="6" value="8885"> 
		    - <input type="text" name="phone_num" size="6" value="0409">
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
			<input type="button" value="삭제하기">
			<input type="button" value="취소하기" onclick="javascript:location.href='memSearch.jsp';">
		</form>
	</div>
</body>
