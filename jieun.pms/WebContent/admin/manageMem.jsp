<%@page import="jieun.pms.member.list.domain.Member"%>
<%@page import="java.util.List"%>
<%@page import="jieun.pms.member.list.service.MemberServiceImpl"%>
<%@page import="jieun.pms.member.list.service.PageServiceImpl"%>
<%@page import="jieun.pms.member.list.service.MemberService"%>
<%@page import="jieun.pms.member.list.service.PageService"%>
<%@page import="jieun.pms.member.list.domain.Page"%>
<jsp:include page="../common/actionHeader.jsp"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<link rel="stylesheet" href="../res/css/manageMem.css?">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<body>
<%
	Page myPage = null;
	String currentPage = request.getParameter("currentPage");
	if(currentPage != null) myPage = new Page(Integer.parseInt(currentPage));
	else myPage = new Page();
	
	PageService pageService = new PageServiceImpl(5, myPage);
	pageContext.setAttribute("pageMaker", pageService);
	 MemberService memberService = new MemberServiceImpl();
	/*pageContext.setAttribute("members", memberService.listMembers(myPage)); */
	List<Member> members = memberService.listMembers(myPage);

%>

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
				<td>이메일</td>
				<td>핸드폰</td>
				<td>삭제</td>
			</tr>
			
			<tr><td colspan="10" id="line"><hr></td></tr>
<%
String option = "width=500, height=500, top=100, left=100";
if(members.size() != 0){
	for(int i=0; i<members.size(); i++){
%>			
			<tr>
				<td><%=i+1 %></td>
				<td><span onclick="javascript:window.open('./manageMemInfo.jsp?id=<%=members.get(i).getMemId()%>', '회원정보', <%=option%> );"><%=members.get(i).getMemId() %></span></td>
				<td><span onclick="javascript:window.open('./manageMemInfo.jsp?id=<%=members.get(i).getMemId()%>', '회원정보', <%=option%> );"><%=members.get(i).getMemName() %></span></td>
				<td><%=members.get(i).getMemGender() %></td>
				<td><%=members.get(i).getRegDate() %></td>
				<td></td>
				<td><%=members.get(i).getMemEmail() %></td>
				<td><%=members.get(i).getMemPhone() %></td>
				<td><input type="button" name="delete" value="X"></td>
			</tr>
<%
	}
} else {
	out.println("등록된 회원이 없습니다.");
}
%>
		</table>
		
	</div>
</div>
</body>
<%@ include file="../common/footer.jsp"%>
