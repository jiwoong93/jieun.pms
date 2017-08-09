<jsp:include page="../../common/actionHeader.jsp"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<link rel="stylesheet" href="../../res/css/community.css">
<body>
	<form enctype="multipart/form-data">
		<div class="mypage">
			<div class="mypageTitle">NOTICE<hr></div>
		
			<div class="mypageMenu">
				<ul>
					<a href="./list.jsp"><li>NOTICE</li></a><hr>
					<a href="./list.jsp"><li>Q&A</li></a><hr>
					<a href="./list.jsp"><li>REVIEW</li></a><hr>
				</ul>
			</div>

		<div class="mypageContents">
			<table class="board_table" border="1">
				<tr>
					<td>
						<div class="board_head">
						  <table width="604" border="1">
						    <tr>
						      <td width="109">제목</td>
						      <td colspan="3">입금확인이 안되는 경우</td>
					        </tr>
						    <tr>
						      <td>작성자</td>
						      <td colspan="3">관리자</td>
					        </tr>
						    <tr>
						      <td>작성일</td>
						      <td width="134">2017/09/06</td>
						      <td width="117">조회수</td>
						      <td width="512">999</td>
					        </tr>
					      </table>
						</div>
						<table class="board_table2" border="1" align="center">
							<tr>
								<td height="202" colspan="4">
								입금하신 성함과 금액 날짜 은행명을 꼼꼼히 기재해주시면 신속한 처리 도움 드리겠습니다.<br><br>
								> 주문하신 후 10일 이내 입금확인이 되지않으면 자동주문 취소처리됩니다.<br>
								> 무통장 입금은 자동적으로 입금확인이 되기까지 약 1 ~ 2 시간 소요됩니다.<br>
								> 주문하신 성홤과 실결제입금하신 성함이 다를 경우 , 또는 주문금액과 실결제 입금하신 금액이 1원이라도 차액이 있으실 경우 자동입금확인
								     불가능합니다.<br>
								> 주문을 따로 해주시고 입금은 한번에 해주신 경우, 또는 같은 상품 중복 주문 후 입금하신 경우도 이 에 해당됩니다.<br>
								> 적립금은 1원 이상부터, 예치금은 1원 이상부터 사용이 가능합니다.
								
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<div class="border_button">
				<!-- <input type="submit" value="수정" />  -->
				<a href="./list.jsp"><input type="button" value="목록" /></a>
			</div>
		</div>
	</div>
</form>
</body>