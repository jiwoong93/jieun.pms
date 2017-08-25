<jsp:include page="../common/actionHeader.jsp" />
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script type="text/javascript">
   function popup(){
	   window.open('./reviewcategory.jsp','상품 선택','width=450, height=1, location=no, status=no, scrollbars=no, left=1500, top=300');
   }
   function setValue(file1,file2,itemNo){
     document.getElementById("file1").value=file1;
     document.getElementById("file2").value=file2;
     document.getElementById("itemNo").value=itemNo;
   }
   </script>
<head>
<meta charset=UTF-8">
<link rel="stylesheet" href="../res/css/community.css?ver=1">
</head>
<body>
	<form name="f1" enctype="multipart/form-data" action="./actionReviewReg.jsp">
		<div class="mypage">
			<div class="mypageTitle">
				REVIEW
				<hr>
			</div>

			<div class="mypageMenu">
				<ul>
					<li><a href="./community.jsp">NOTICE</a>
						<hr></li>
					<li><a href="./q&a.jsp">Q&A</a>
						<hr></li>
					<li><a href="./review.jsp">REVIEW</a>
						<hr></li>
				</ul>
			</div>

			<div class="mypageContents">
				<table class="board_table" border="1">
					<tr>
						<td>
							<div class="board_head">
								제목: <input type="text" size="76" name="revContents" />
							</div> <br> &nbsp;&nbsp;
							<input type="button" onclick="popup()" value="상품 선택">
							카테고리 : <input type="text" id="file1" style="width:100px; border:0;" name="f1" readonly>
								상품이름 : <input type="text" id="file2" style="width:200px; border:0;" name="itemName" readonly>
								<input type="hidden" id="itemNo" name="f1">
							<table class="board_table2" border="1" align="center">
								<tr>
									<!-- 파일첨부 -->
									<td height="10" align="center"><input type="file"
										name="revFilename"><br></td>
								</tr>
								<tr>
									<td height="202" colspan="4"><textarea name="revSubject" style="resize: none; width: 610px; height: 420px;"></textarea></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				<div class="qnaborder_button">
					<a href="./review.jsp"><input type="button" value="목록" /></a>
					<input type="submit" value="등록" />
				</div>
			</div>
		</div>
	</form>
</body>
</html>
<%@ include file="../common/footer.jsp"%>