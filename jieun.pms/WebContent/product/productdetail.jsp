<%@page import="jieun.pms.product.domain.Category"%>
<%@page import="jieun.pms.product.domain.Product"%>
<%@page import="java.util.List"%>
<%@page import="jieun.pms.product.service.ProductServiceImpl"%>
<%@page import="jieun.pms.product.service.ProductService"%>
<jsp:include page="../common/actionHeader.jsp"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<link rel="stylesheet" href="../res/css/productdetail.css"></link>
<script>
   $( document ).ready(function() {
      document.getElementById('sizeS').style.display = 'none';
      document.getElementById('sizeM').style.display = 'none';
      document.getElementById('sizeL').style.display = 'none';
      document.getElementById('sizeXL').style.display = 'none';
   });   

   //사이즈가 없는 상품의 경수
   function amount(amount){
      document.getElementById('amount_n').value = amount.value;
      var price = document.getElementById('itemPriceHidden').value;
      document.getElementById('totalPrice').innerHTML = amount.value*price;
      document.getElementById('totalPriceHidden').value = amount.value*price;
   }
// 사이즈별 실행
   function amounts(amount){
      document.getElementById('amount_s').value = amount.value;
      var price = document.getElementById('itemPriceHidden').value;
      var priceM = document.getElementById('totalMPriceHidden').value;
      var priceL = document.getElementById('totalLPriceHidden').value;
      var priceXL = document.getElementById('totalXLPriceHidden').value;
      var totResult = parseInt(price)*amount.value;
      document.getElementById('totalSPriceHidden').value = totResult;
      document.getElementById('totalPrice').innerHTML = parseInt(totResult) + parseInt(priceM) + parseInt(priceL) + parseInt(priceXL);   
   }
   
   function amountm(amount){
      document.getElementById('amount_m').value = amount.value;
      var price = document.getElementById('itemPriceHidden').value;
      var priceS = document.getElementById('totalSPriceHidden').value;
      var priceL = document.getElementById('totalLPriceHidden').value;
      var priceXL = document.getElementById('totalXLPriceHidden').value;
      var totResult = parseInt(price)*amount.value;
      document.getElementById('totalMPriceHidden').value = totResult;
      document.getElementById('totalPrice').innerHTML = parseInt(totResult) + parseInt(priceS) + parseInt(priceL) + parseInt(priceXL);
   }
   
   function amountl(amount){
      document.getElementById('amount_l').value = amount.value;
      var price = document.getElementById('itemPriceHidden').value;
      var priceS = document.getElementById('totalSPriceHidden').value;
      var priceM = document.getElementById('totalMPriceHidden').value;
      var priceXL = document.getElementById('totalXLPriceHidden').value;
      var totResult = parseInt(price)*amount.value;
      document.getElementById('totalLPriceHidden').value = totResult;
      document.getElementById('totalPrice').innerHTML = parseInt(totResult) + parseInt(priceS) + parseInt(priceM) + parseInt(priceXL);
   }
   
   function amountxl(amount){
      document.getElementById('amount_xl').value = amount.value;
      var price = document.getElementById('itemPriceHidden').value;
      var priceS = document.getElementById('totalSPriceHidden').value;
      var priceM = document.getElementById('totalMPriceHidden').value;
      var priceL = document.getElementById('totalLPriceHidden').value;
      var totResult = parseInt(price)*amount.value;
      document.getElementById('totalXLPriceHidden').value = totResult;
      document.getElementById('totalPrice').innerHTML = parseInt(totResult) + parseInt(priceS) + parseInt(priceM) + parseInt(priceL);
   }
//사이즈별 실행 끝

//셀렉트박스 선택시 화면에 나타나는기은 & 총 가격 계산 => 사이즈별 계산 후 총 가격에 저장 
   function sizeProc(size){
      var price = document.getElementById('itemPriceHidden').value;
      var priceS = document.getElementById('totalSPriceHidden').value;
      var priceM = document.getElementById('totalMPriceHidden').value;
      var priceL = document.getElementById('totalLPriceHidden').value;
      var priceXL = document.getElementById('totalXLPriceHidden').value;
      var totResultS = 0; var totResultM = 0; var totResultL = 0; var totResultXL = 0;
      switch(size){
      case 'S': 
         document.getElementById('amount_s').value = '1';
         totResultS = parseInt(price)+parseInt(priceS);
         document.getElementById('sizeS').style.display = ''; 
         document.getElementById('size_S').disabled = false;
         document.getElementById('totalPrice').innerHTML = parseInt(totResultS)+parseInt(priceM)+parseInt(priceL)+parseInt(priceXL);
         document.getElementById('totalSPriceHidden').value = totResultS;
         break;
      case 'M': 
         document.getElementById('amount_m').value = '1';
         totResultM = parseInt(price)+parseInt(priceM);
         document.getElementById('sizeM').style.display = ''; 
         document.getElementById('size_M').disabled = false;
         document.getElementById('totalPrice').innerHTML = parseInt(totResultM)+parseInt(priceS)+parseInt(priceL)+parseInt(priceXL);
         document.getElementById('totalMPriceHidden').value = totResultM;
         break;
      case 'L': 
         document.getElementById('amount_l').value = '1';
         totResultL = parseInt(price)+parseInt(priceL);
         document.getElementById('sizeL').style.display = ''; 
         document.getElementById('size_L').disabled = false;
         document.getElementById('totalPrice').innerHTML = parseInt(totResultL)+parseInt(priceS)+parseInt(priceM)+parseInt(priceXL);
         document.getElementById('totalLPriceHidden').value = totResultL;
         break;
      case 'XL': 
         document.getElementById('amount_xl').value = '1';
         totResultXL = parseInt(price)+parseInt(priceXL);
         document.getElementById('sizeXL').style.display = ''; 
         document.getElementById('size_XL').disabled = false;
         document.getElementById('totalPrice').innerHTML = parseInt(totResultXL)+parseInt(priceM)+parseInt(priceL)+parseInt(priceS);
         document.getElementById('totalXLPriceHidden').value = totResultXL;
         break;
      }
   }
//계산 끝

//폼전송
   function submits(option){
      var f = document.getElementById("productForm");
      switch(option){
         case 'wish':
            f.action = "../mypage/action/actionWishAdd.jsp";
            f.submit();
            break;
         case 'cart':
            f.action = "../mypage/action/actionCartAdd.jsp";
            f.submit();
            break;
      }
   }
</script>
<%

   ProductService productService = new ProductServiceImpl();
   String itemName = request.getParameter("name").trim();
   List<Product> products = productService.getProduct(itemName);
   
   Category category = new Category(Integer.parseInt(products.get(0).getCategory()));

%>
<body>
<div class="productDetail">
   <div class="titleImg">
         <img src="../res/img/product/<%=category.getCategoryStr()%>/<%=products.get(0).getItemImg()%>">
   </div>
   <form id="productForm" name="productForm" method="post" action="../mypage/action/actionCartAdd.jsp">
   <div class="itemInfo">
      <input type="hidden" id="itemPriceHidden" value="<%=products.get(0).getItemPrice()%>">
      <input type="hidden" id="totalPriceHidden" value="0">
      <input type="hidden" id="totalSPriceHidden" value="0">
      <input type="hidden" id="totalMPriceHidden" value="0">
      <input type="hidden" id="totalLPriceHidden" value="0">
      <input type="hidden" id="totalXLPriceHidden" value="0">
      <input type="hidden" id="amount_n" name="amount_n">
      <input type="hidden" id="amount_s" name="amount_s">
      <input type="hidden" id="amount_m" name="amount_m">
      <input type="hidden" id="amount_l" name="amount_l">
      <input type="hidden" id="amount_xl" name="amount_xl">
      <table id="itemInfo1" class="itemInfoTable">
         <tr>
            <td colspan="2"> <hr> </td>
         </tr>
         <tr>
            <td colspan="2" class="center"> <p><%=products.get(0).getItemName()%></p> </td>
         </tr>
         <tr>
            <td colspan="2"> <hr> </td>
         </tr>
         <tr>
            <td colspan="2" class="center"> <h1><%=products.get(0).getItemPrice()%><b>\</b></h1> 
               <input type="hidden" name="name" value="<%=products.get(0).getItemName()%>">
            </td>
         </tr>
         <tr><td colspan="2"></td></tr>
         <tr>
            <td>상품명</td>
            <td><%=products.get(0).getItemName()%></td>
         </tr>
         <tr>
            <td>판매가</td>
            <td><%=products.get(0).getItemPrice()%> 원</td>
         </tr>
         <tr>
<%
            if(products.get(0).getItemSize() == null || products.get(0).getItemSize().equals("")){
%>
               <input type="hidden" name="gubun" value="noSize" />
<%
            }
            else{
%>               <input type="hidden" name="gubun" value="size" />
               <td>사이즈</td>
               <td><select id="select" onchange="sizeProc(this.options[this.selectedIndex].value);">
                     <option value="">선택</option>
                     <option value="S">S</option>
                     <option value="M">M</option>
                     <option value="L">L</option>
                     <option value="XL">XL</option>
               </select></td>
<%               
            }
%>   
         </tr>
      </table>
         <table id="itemInfo2" class="itemInfoTable2">
            <tr>
               <td colspan="6"> <hr> </td>
            </tr>
            <tr>
            <% if(products.get(0).getItemSize() == null || products.get(0).getItemSize().equals("")){ %>
               <td width="220px" colspan="3">상품명</td>
            <% } else { %>
               <td width="220px" colspan="2">상품명</td>
            <% } %>
            <% if(!(products.get(0).getItemSize() == null || products.get(0).getItemSize().equals(""))){ %>
               <td width="80px" align="center">사이즈</td>
            <% } %>
               <td width="50px" align="center">수량</td>
               <td width="100px" colspan="2" align="center">판매가</td>
            </tr>
            <tr>
               <td colspan="6"> <hr> </td>
            </tr>
<%
            if(products.get(0).getItemSize() == null || products.get(0).getItemSize().equals("")){
%>
               <tr>
                  <td colspan="2"><span id="itemName"><%=products.get(0).getItemName()%></span></td>
                  <td><span id="itemSize"></span></td>
                  <td><span id="itemAmount"><input type="number" min="0" value="1" oninput="amount(this);" id="amount"></span></td>
                  <td><span id="itemPrice" colspan="2"><%=products.get(0).getItemPrice()%>원</span></td>
               </tr>

<%
            }
            else{
%>
               <!-- 해당부분을 사이즈 선택시 추가 시켜줘야 함 -->
               <tr id="sizeS">
                  <td colspan="2" width="220px"><span id="itemName"><%=products.get(0).getItemName()%></span></td>
                  <td align="center"><span id="itemSize">S</span><input type="hidden" id="size_S" name="size_S" value="s/" disabled></td>
                  <td align="center"><span id="itemAmount"><input type="number" style="width:35px" min="0" value="1" oninput="amounts(this);"></span></td>
                  <td align="center"><span id="itemPrice"><%=products.get(0).getItemPrice()%>원</span></td>
                  <td align="center"><span id="itemDel">x</span></td>
               </tr>
               <tr id="sizeM">
                  <td colspan="2"><span id="itemName"><%=products.get(0).getItemName()%></span></td>
                  <td align="center"><span id="itemSize">M</span><input type="hidden" id="size_M" name="size_M" value="m/" disabled></td>
                  <td align="center"><span id="itemAmount"><input type="number" style="width:35px" min="0" value="1" oninput="amountm(this);"></span></td>
                  <td align="center"><span id="itemPrice"><%=products.get(0).getItemPrice()%>원</span></td>
                  <td align="center"><span id="itemDel">x</span></td>
               </tr>
               <tr id="sizeL">
                  <td colspan="2"><span id="itemName"><%=products.get(0).getItemName()%></span></td>
                  <td align="center"><span id="itemSize">L</span><input type="hidden" id="size_L" name="size_L" value="l/" disabled></td>
                  <td align="center"><span id="itemAmount"><input type="number" style="width:35px" min="0" value="1" oninput="amountl(this);"></span></td>
                  <td align="center"><span id="itemPrice"><%=products.get(0).getItemPrice()%>원</span></td>
                  <td align="center"><span id="itemDel">x</span></td>
               </tr>
               <tr id="sizeXL">
                  <td colspan="2"><span id="itemName"><%=products.get(0).getItemName()%></span></td>
                  <td align="center"><span id="itemSize">XL</span><input type="hidden" id="size_XL" name="size_XL" value="xl/" disabled></td>
                  <td align="center" ><span id="itemAmount"><input type="number" style="width:35px" min="0" value="1" oninput="amountxl(this);"></span></td>
                  <td align="center"><span id="itemPrice"><%=products.get(0).getItemPrice()%>원</span></td>
                  <td align="center"><span id="itemDel">x</span></td>
               </tr>
               </div>
               <!--  -->
<%
            }
%>
         </table>
         <table id="itemInfo3" class="itemInfoTable2">
            <tr>
               <td colspan="6"> <hr> </td>
            </tr>
            <tr>
               <td colspan="6" class="right"> <h2><b>TOTAL</b> <span id="totalPrice">
               <% if(products.get(0).getItemSize() == null || products.get(0).getItemSize().equals("")){ %>
                  <%=products.get(0).getItemPrice()%>
               <% } else { %>
                  0
               <% } %>
               </span>\</h2> </td>
            </tr>
         </table>
      </form>
      <!-- 상품번호 가격 수량  -->
      <div class="Button">
         <a href="../order/order.jsp"><input type="button" id="orderButton" value="BUY NOW"></a><br>
         <input type="button" id="wishlistButton" value="위시리스트" onclick="submits('wish');">
         <input type="button" id="cartButton" value="장바구니" onclick="submits('cart');">
         <%-- <a href="../mypage/action/actionWishAdd.jsp?name=<%=products.get(0).getItemName()%>&amount="><input type="button" id="wishlistButton" value="위시리스트"></a>
         <a href="../mypage/action/actionCartAdd.jsp?name=<%=products.get(0).getItemName()%>&amount="><input type="button" id="cartButton" value="장바구니"></a> --%>
      </div>
   </div>
   
<hr width="1300px">

</div>   

      <div class="itemDetail">
         상품상세설명부분<br>
         <%
            String[] productDetail = products.get(0).getItemImgDetail().split("/");
            for(int i=0;i<productDetail.length;i++){
         %>
               <img src="../res/img/product/<%=category.getCategoryStr()%>/<%=productDetail[i]%>"><br>
         <%   }
         %>
      </div>
      
<hr width="1300px">      

<div class="review">
   <h3><center>REVIEW</center></h3>
   
   <div class="contents">
      <table class="community_table" border="1">
         <tr>
            <td width="50" height="40" align="center">번호</td>
            <td width="500" align="center">제목</td>
            <td width="100" align="center">작성자</td>
            <td width="150" align="center">작성일</td>
            <td width="50" align="center">조회</td>
         </tr>
         <tr>
            <td height="30" align="center">1</td>
            <td align="center">개별로</td>
            <td align="center">여기별로</td>
            <td align="center">2017/09/06</td>
            <td align="center">456</td>
         </tr>
      </table>

      <!-- 검색 -->
      <div class="comu_search">
         <input type="text" class="textbox" size="18"> <input
            type="submit" value="검색" /><br />
      </div>
      <!-- 좌우버튼 -->
      <div class="comu_button">
         <input type="button" value="◀" /> <input type="button" value="▶" />
      </div>
      <!-- 글쓰기 -->
      <div class="comu_write">
            <a href="../community/board.jsp"><input type="button" value="글쓰기"></a>
      </div>
      
   </div>
</div>
</body>

<%@ include file="../common/footer.jsp"%>