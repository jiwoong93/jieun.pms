<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html">
<%
String cururlFooter = request.getRequestURI().toString();
String pageNameFooter = cururlFooter.substring(cururlFooter.lastIndexOf("/") + 1, cururlFooter.length());
String pathFooter = "";
if(pageNameFooter.equals("main.jsp")){
	pathFooter = "./";
} else if(pageNameFooter.equals("login.jsp") || pageNameFooter.equals("findId.jsp") || pageNameFooter.equals("findPw.jsp") || pageNameFooter.equals("join.jsp") || pageNameFooter.equals("notice.jsp") 
		|| pageNameFooter.equals("noticeview.jsp")|| pageNameFooter.equals("noticeupdate.jsp") || pageNameFooter.equals("noticeboard.jsp")|| pageNameFooter.equals("q&a.jsp")|| pageNameFooter.equals("review.jsp") 
		|| pageNameFooter.equals("reviewview.jsp")|| pageNameFooter.equals("reviewupdate.jsp") || pageNameFooter.equals("reviewboard.jsp")) {
	pathFooter = "../../";
} else {
	pathFooter = "../";
}
%>
	<link rel="stylesheet" href="<%= pathFooter %>res/css/footer.css?var=3">

<div class="footer">
	<ul>
		<li> Copyright ⓒ Coong's corp.</li>
		<li> Owner : 쿵 </li>
		<li> Address : 서울시 구로구 디지털로 하이앤드타워</li>
		<li> tel : 02-123-1234 / 010-1234-1234</li>
	</ul>
	<br><br/>
</div>

</html>