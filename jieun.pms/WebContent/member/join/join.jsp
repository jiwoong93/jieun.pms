<%@page import="java.text.SimpleDateFormat"%>
<jsp:include page="../../common/actionHeader.jsp"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html">
<link rel="stylesheet" href="../../res/css/join.css?ver=2">
<script>

// 아이디 중복확인
function check(){
    var id = document.getElementById("mem_id");
    location.href="./memIdCheck.jsp?id="+id.value;
}


// 아이디 (알파벳소문자 + 숫자 4~12자리, 알파벳소문자로 시작)
function idCheck(){ 
	var mem_id = document.getElementById("mem_id").value;
	var idCheck =   /[0-9a-zA_Z_]{4,20}$/; 


	if(idCheck.test(mem_id)==false){
		document.getElementById('idCheck').innerHTML = "알파벳과 숫자의 조합으로 4자 이상 20자 이하로 입력해 주세요.";
	    document.getElementById('idCheck').style.color = "red";
	    return false;
	} else if(idCheck.test(mem_id)==true){
		document.getElementById('idCheck').innerHTML = "올바르게 입력했습니다.";
        document.getElementById('idCheck').style.color = "green";
	}
}

// 비밀번호 (영문문자 + 숫자)
function pwCheck(){
	var mem_pw = document.getElementById("mem_pw").value;
	var pwCheck =  /^[a-zA-Z0-9]{8,20}$/;
	
	if(pwCheck.test(mem_pw)==false){
		document.getElementById('Check').innerHTML = "알파벳과 숫자의 조합으로 8자 이상 13자 이하로 입력해 주세요";
	    document.getElementById('Check').style.color = "red";
	    return false;
	} else if(pwCheck.test(mem_pw)==true){
		document.getElementById('Check').innerHTML = "올바르게 입력했습니다.";
        document.getElementById('Check').style.color = "green";
	}

}

//비밀번호 매치
function pwCk(){
	var pw1 = document.getElementById('mem_pw').value;
	var pw2 = document.getElementById('mem_pwc').value;
	if(pw1 == pw2){
		document.getElementById('pwckspan').innerHTML = '비밀번호 일치';
		document.getElementById('pwckspan').style.color = "green";
	} else{
		document.getElementById('pwckspan').innerHTML = '비밀번호 불일치';
		document.getElementById('pwckspan').style.color = "red";
	}
}


// 한글 안써지게
function notHangul(obj){
    var check = /[\ㄱ-ㅎ가-힣]/;
	
    
    if(check.test(obj.value)){
        alert("한글은 입력되지 않습니다. ");
        obj.value = obj.value.replace(/[\ㄱ-ㅎ가-힣]/g, '');
    }
}

// 숫자만 (핸드폰번호)
function onlyNum() {
 var check = event.srcElement;
 
 if ((47 < event.keyCode && event.keyCode < 58)   //키보드위 숫자키 1~0(ASCII 48~57)
  || (95 < event.keyCode && event.keyCode < 106)  //숫자패드의 숫자키 0~9(ASCII 96~105)
  || event.keyCode == 35              //End키
  || event.keyCode == 36              //Home키
  || event.keyCode == 37              //왼쪽방향키
  || event.keyCode == 39              //오른쪽방향키
  || event.keyCode == 46              //Delete키
  || event.keyCode == 8               //BackSpace키
  || event.keyCode == 9               //탭
  || event.keyCode == 17              //왼쪽 ctrl키
  || event.keyCode == 86              //v키
  ) {
  event.returnValue = true;
 }
 else {
  alert("숫자만 입력 가능합니다.");
  event.returnValue = false;
 }
 return true;
}



// 생년월일 확인
<% 
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
	String today = formatter.format(new java.util.Date()); 
%>

</script>
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
			   <input type="text" name="mem_id" id="mem_id" required="required" maxlength="20" onkeyup="idCheck()" />
			   <input type = "button" value = "중복확인" onclick="check()"/> <br>
			   <span id = "idCheck"></span>
   			</td>
  		</tr>

  		<tr>
   			<td> 비밀번호 </td>
   			<td>
   				<input type="password" name="mem_pw" id="mem_pw" required="required" maxlength="13" onkeyup="pwCheck()"> <br>
   				<span id = "Check"></span>
   			</td>
  		</tr>

  		<tr>
   			<td> 비밀번호 확인 </td>
   			<td> <input type="password" name="mem_pwc" id="mem_pwc" required="required" maxlength="13" onkeyup="pwCk()"> 
				<span id="pwckspan"></span>   			
   			</td>
  		</tr>
		<tr>
		   	<td> 이름 </td>
		   	<td> <input type="text" name="mem_name" id="mem_name" required="required"> </td>
		</tr>

		<tr>
		    <td> 성별 </td>
		    <td>
			    <input type="radio" name="mem_gender" value="M">남자
			    <input type="radio" name="mem_gender" value="W">여자
		    </td>
		</tr>
  
		<tr>
		    <td> 생년월일 </td>
		    <td> <input type="date" name="mem_birth" id="mem_birth"  min="1930-01-01" max="<%=today%>"> </td>
		</tr>

		<tr>
		    <td> 이메일 </td>
		    <td>
			    <input type = "text" name="mem_email1" id="mem_email1" onkeyup="notHangul(this)"> @ <input type = "text" name="mem_email2" id="mem_email2" onkeyup="notHangul(this)"> &nbsp;&nbsp; 
			    <select onchange="change();">
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
			    <input type = "text" name="mem_zipcode" id="mem_zipcode">
			    <input type = "button" value = "우편번호"/>
		    </td>
		</tr>
  
		<tr>
		    <td> </td>
		    <td>
			    <input type="text" size="30" name="mem_street" id="mem_street" placeholder="도로명주소">
			    <input type="text" size="30" name="mem_addr" id="mem_addr" placeholder="상세주소">
		    </td>
		</tr>

		<tr>
		    <td> 휴대폰 </td>
		    <td> 
			    <select name="mem_phone1" >
				    <option value="010"> 010 </option>
				    <option value="011"> 011 </option>
				    <option value="016"> 016 </option>
				    <option value="018"> 018 </option>
			    </select> 
			    <input type="text" name="mem_phone2" id="mem_phone2" size = "6" maxlength="4" onkeyup="onlyNum()"/> - <input type="text" name="mem_phone3" id="mem_phone3" size = "6" maxlength="4" onkeyup="onlyNum()"/>
		    </td>
		</tr>
  
		<tr>
		    <td colspan="2"> <hr><h2>OPTIONAL INFORMATION</h2><hr></td>
		</tr>

		<tr>
		    <td> 강아지품종 </td>
		    <td >
			    <select name="dog_code">
					<option value="002">슈나우저</option>
			    	<option value="003">푸들</option>
				    <option value="004">차우차우</option>
				    <option value="005">달마티안</option>
				    <option value="006">그레이하운드</option>
				    <option value="007">콜리</option>
				 </select>
		    </td>
		</tr>
		<tr>
			<td colspan="2"><hr><h2>Terms and Conditions Agreement</h2><hr></td>
		</tr>
	</table>
<div width="50" style="float:left; margin-left: 440px;">
<textarea cols="40" rows="15">
제1조(목적)
이 약관은 '쿵샵'(전자상거래 사업자)가 운영하는 '쿵샵'사이버 몰(이하 “몰”이라 한다)에서 제공하는 인터넷 관련 서비스(이하 “서비스”라 한다)를 이용함에 있어 사이버 몰과 이용자의 권리,의무 및 책임사항을 규정함을 목적으로 합니다.

※「PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다」
</textarea>
<br>
<div>이용약관에 동의합니다.<input type="checkbox" id="agree1" required="required" /></div></div>
<div style="margin-right: 430px;">
<textarea cols="40" rows="15" >
■ 수집하는 개인정보 항목
회사는 회원가입, 상담, 서비스 신청 등등을 위해 아래와 같은 개인정보를 수집하고 있습니다.
ο 수집항목 : 이름 , 생년월일 , 성별 , 로그인ID , 비밀번호 , 비밀번호 질문과 답변 , 자택 전화번호 , 자택 주소 , 휴대전화번호 , 이메일 , 직업 , 회사명 , 부서 , 직책 , 회사전화번호 , 취미 , 결혼여부 , 기념일 , 법정대리인정보 , 서비스 이용기록 , 접속 로그 , 접속 IP 정보 , 결제기록
ο 개인정보 수집방법 : 홈페이지(회원가입) , 서면양식 
</textarea>
<div>이용약관에 동의합니다.<input type="checkbox" id="agree2" required="required"/></div></div></div>
<br />

	<input type="submit" value="가입하기">
 	<input type="reset" value="다시입력">
</form>
</center>
<br/><br/><br/><br/>

<%@ include file="../../common/footer.jsp"%>