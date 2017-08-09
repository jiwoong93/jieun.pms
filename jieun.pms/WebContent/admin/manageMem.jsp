<jsp:include page="../common/actionHeader.jsp"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<link rel="stylesheet" href="../res/css/manageMem.css?var">
<body>
<div class="memSearch">
	<div class="searchMenu">
		<div class="menuTitle">
		<h2>회원관리<hr></h2>
		</div>
		<table id="searchTable">
			<tr>
				<td rowspan="2" class="detail"> DETAIL SEARCH </td>
				<td class="center" width="100px">이름</td>
				<td width="180px"><input type="text"></td>
				<td class="center">성별</td>
				<td>
					<select>
						<option value="W">여자</option>
						<option value="M">남자</option>
					</select>
				</td>
				<td class="center">연령</td>
				<td>
					<select>
						<option value="10">10~</option>
						<option value="20">20~</option>
						<option value="30">30~</option>
						<option value="40">40~</option>
						<option value="50">50~</option>
						<option value="60">60~</option>
					</select>
					대
				</td>
			</tr>
			
			<tr>
				<td class="center">금액</td>
				<td width="180px">
					<input type="text" name="amount1"> ~ 
				</td>
				<td colspan="2">
					<input type="text" name="amount2">
				</td>
				<td class="center" colspan="2">
					<input type="button" id="button" value="조회">
				</td>
			</tr>
		</table>
	</div>
	
	<div class="searchContents">
		<table id="memTable">
			<tr>
				<td>NO</td>
				<td>아이디</td>
				<td>이름</td>
				<td>성별</td>
				<td>가입일</td>
				<td>구매금액</td>
				<td>방문</td>
				<td>이메일</td>
				<td>핸드폰</td>
				<td>삭제</td>
			</tr>
			
			<tr><td colspan="10" id="line"><hr></td></tr>
			
			<tr>
				<td>1</td>
				<td>eunyoung</td>
				<td><a href="./memInfo.jsp">송은영</a></td>
				<td>여</td>
				<td>2017.00.00</td>
				<td>200,000</td>
				<td>50</td>
				<td>eunyoung@naver.com</td>
				<td>010-8885-0409</td>
				<td><input type="button" name="delete" value="X"></td>
			</tr>
		</table>
	</div>
</div>
</body>