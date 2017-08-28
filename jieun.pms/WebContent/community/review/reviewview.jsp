<%@page import="jieun.pms.community.domain.Page"%>
<%@page import="jieun.pms.community.service.PageServiceImpl"%>
<%@page import="jieun.pms.community.service.PageService"%>
<%@page import="java.util.List"%>
<%@page import="jieun.pms.member.list.service.MemberService"%>
<%@page import="jieun.pms.member.update.dao.mapper.UpdateMapper"%>
<%@page import="jieun.pms.member.update.service.UpdateServiceImpl"%>
<%@page import="jieun.pms.member.update.service.UpdateService"%>
<%@page import="jieun.pms.member.update.domain.UpdateMember"%>
<%@page import="jieun.pms.product.domain.Product"%>
<%@page import="jieun.pms.product.service.ProductServiceImpl"%>
<%@page import="jieun.pms.product.service.ProductService"%>
<%@page import="jieun.pms.community.domain.Post"%>
<%@page import="jieun.pms.community.service.PostServiceImpl"%>
<%@page import="jieun.pms.community.service.PostService"%>
<jsp:include page="../../common/actionHeader.jsp" />
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<link rel="stylesheet" href="../../res/css/community.css?ver=18">
<%
   PostService postService = new PostServiceImpl();
   ProductService productService = new ProductServiceImpl();
   UpdateService updateService = new UpdateServiceImpl();
   
   int revNum = Integer.parseInt(request.getParameter("revNo"));
   Post post = postService.getReview(revNum);
   List<Comm> comm = postService.getCommets(revNum);
   Product itemNo = productService.getProductNo(post.getItemNo());
   UpdateMember memBer = updateService.selectMember(post.getMemId());
   
   postService.updateCount(Integer.parseInt(request.getParameter("revNo")));
%>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>
	<form name="input_form" action="./reviewupdate.jsp?revNo=<%=revNum%>">
		<input type="hidden" name="revNo" value="<%=request.getParameter("revNo")%>">
		<div class="mypage">
			<div class="mypageTitle">
				REVIEW
				<hr>
			</div>
			<div class="mypageMenu">
				<ul>
					<a href="./community.jsp"><li>NOTICE</li></a>
					<hr>
					<a href="./q&a.jsp"><li>Q&A</li></a>
					<hr>
					<a href="./review.jsp"><li>REVIEW</li></a>
					<hr>
				</ul>
			</div>

			<div class="mypageContents">
				<table class="board_table">
					<tr>
						<td>
							<div class="board_head">
								<table width="604" border="1" style="border-collapse: collapse;">
									<tr>
										<td width="180">제목</td>
										<td colspan="3"><%=post.getRevContents()%> <%-- <input type="hidden" name="revContent" value="<%=post.getRevContents()%>"> --%>
										</td>
									</tr>
									<tr>
										<td>작성자</td>
										<td colspan="3"><%=memBer.getMemName()%><input
											type="hidden" name="memId" value="<%=post.getMemId()%>"></td>
									</tr>
									<tr>
										<td>작성일</td>
										<td width="460"><%=post.getRegDate()%><input
											type="hidden" name="regDate" value="<%=post.getRegDate()%>"></td>
										<td width="150">조회수</td>
										<td width="500"><%=post.getRevView()%><input
											type="hidden" name="revView" value="<%=post.getRevView()%>"></td>
									</tr>
									<tr>
										<td>상품이름</td>
										<td><%=itemNo.getItemName()%><input type="hidden" name="itemId" value="<%=post.getItemNo()%>"></td>
										<td>첨부파일</td>
										<td><%=post.getRevFilename()%></td>
									</tr>
								</table>
							</div>
							<table class="board_table2" border="1" align="center">
								<tr>
									<td height="202" colspan="4"><textarea name="revSubject" readonly style="resize: none; width: 605px; height: 440px; border: 1px;"><%=post.getRevSubject()%></textarea>
									</td>
									<%-- <input type="hidden" name="revSubject" value="<%=post.getRevSubject()%>"> --%>
									</td>
								</tr>
							</table>
						<br>
						<table class="board_table3" width="615" border="1" style="border-collapse: collapse; margin-left:15px">
						<tr>
							<td width="35" style="text-align: center">번호</td>							
							<td width="70" style="text-align: center">작성자</td>
							<td width="225" style="text-align: center">내용</td>
						</tr>
						<%
						for(int i = 0; i<comm.size(); i++){
							%>			 
						<tr>
							<td width="35" style="text-align: center"><%=comm.get(i).getRevCommentNo() %></td>
							<td width="70" style="text-align: center"><%=comm.get(i).getMemId()%></td>
							<td><input type="text" readonly="readonly" style="width: 480px; border:0px;" value="<%=comm.get(i).getRevComment()%>"/></td>
						</tr>
					<%
						}
						%>	
					</table>
						</td>
					</tr>
				
				</table><br>
				</form>	
				<!-- 댓글작성폼 -->
			<%@ include file="./reviewcomm.jsp"%>
				
				<div class="review_button">
				<a href="./review.jsp"><input type="button" value="목록" style="float:left;"/></a>
					<%
                  String currentId = (String) session.getAttribute("sessionId");
                  if (currentId != null && currentId != "") {
               %>
					<%       if(session.getAttribute("sessionId") == post.getMemId() || session.getAttribute("sessionId").equals(post.getMemId())){ %>
					<input type="submit" value="수정" style="float:right;"/>
					<a href="./action/actionReviewDelete.jsp?revNo=<%=post.getRevNo()%>"><input style="float:right;" type="button" name="deletePrd" value="삭제"></a>
					<%       } 
                  }
               %>
				</div>
			</div>
		</div>
		<br /> <br /> <br /> <br />
			
		
	<%@ include file="../../common/footer.jsp"%>