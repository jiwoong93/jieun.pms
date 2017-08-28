<%@page import="jieun.pms.community.service.PostServiceImpl"%>
<%@page import="jieun.pms.community.service.PostService"%>
<%@page import="jieun.pms.community.domain.Post"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html">
<%=request.getParameter("revNo")%>
<%=request.getParameter("revContent")%>
<%=request.getParameter("memId")%>
<%=request.getParameter("regDate")%>
<%=request.getParameter("revView")%>
<%=request.getParameter("itemId")%>
<%=request.getParameter("revSubject")%>
<%
   PostService postService = new PostServiceImpl();
   Post post = new Post(Integer.parseInt(request.getParameter("revNo")), request.getParameter("revSubject"), request.getParameter("revContent"), request.getParameter("memId"), "", null, Integer.parseInt(request.getParameter("revView")), Integer.parseInt(request.getParameter("itemId")));
%>
<%  if(postService.updateReview(post) == 1){ %>
      <script>alert('수정되었습니다.');
      location.href="../reviewview.jsp?revNo=<%=post.getRevNo()%>";
      </script>
<% } else { %>
      <script>alert('수정 실패 관리자에게 문의 하세요.');
      location.href="../reviewview.jsp?revNo=<%=request.getParameter("revNo")%>";
      </script>
<% } %>