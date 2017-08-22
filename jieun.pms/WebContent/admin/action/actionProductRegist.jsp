<%@page import="jieun.pms.product.domain.Product"%>
<%@page import="jieun.pms.product.service.ProductServiceImpl"%>
<%@page import="jieun.pms.product.service.ProductService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<%
	ProductService productService = new ProductServiceImpl();
	String category = "";
	Product product = new Product();
	product.setItemName(request.getParameter("itemName"));
	product.setItemImg(request.getParameter("itemImg"));
	product.setItemImgDetail(request.getParameter("itemImgDetail"));
	
	if(request.getParameter("category").equals("hygiene")){
		category = request.getParameter("SUB1");
	}
	else if(request.getParameter("category").equals("beauty")){
		category = request.getParameter("SUB2");
	}
	else if(request.getParameter("category").equals("accessory")){
		category = request.getParameter("SUB3");
	}
	else if(request.getParameter("category").equals("category")){
		category = null;
	}
	else{
		category = request.getParameter("category");
	}
	
	product.setCategory(category);
	product.setItemPrice(Integer.parseInt(request.getParameter("itemPrice")));
	
	String size = "";
	int count = 0;
	
	if(request.getParameter("itemSize").equals("size_yes")){
		if(request.getParameter("itemSize_s") != null || request.getParameter("itemSize_s").equals("")){
			product.setItemId(request.getParameter("itemId")+"/s");
			product.setItemSize(request.getParameter("itemSize_s"));
			product.setItemAmount(Integer.parseInt(request.getParameter("textbox_s")));
			boolean insert = productService.insertProduct(product);
			if(insert == true){
           	 	count++;
            }
            else{
           		count -= 10; 
            }
		}
		
		if(request.getParameter("itemSize_m") != null || request.getParameter("itemSize_m").equals("")){
			product.setItemId(request.getParameter("itemId")+"/m");
			product.setItemSize(request.getParameter("itemSize_m"));
			product.setItemAmount(Integer.parseInt(request.getParameter("textbox_m")));
			boolean insert = productService.insertProduct(product);
			if(insert == true){
           	 	count++;
            }
            else{
           		count -= 10; 
            }
		}
		
		if(request.getParameter("itemSize_l") != null || request.getParameter("itemSize_l").equals("")){
			product.setItemId(request.getParameter("itemId")+"/l");
			product.setItemSize(request.getParameter("itemSize_l"));
			product.setItemAmount(Integer.parseInt(request.getParameter("textbox_l")));
			boolean insert = productService.insertProduct(product);
			if(insert == true){
           	 	count++;
            }
            else{
           		count -= 10; 
            }
		}
		
		if(request.getParameter("itemSize_xl") != null || request.getParameter("itemSize_xl").equals("")){
			product.setItemId(request.getParameter("itemId")+"/xl");
			product.setItemSize(request.getParameter("itemSize_xl"));
			product.setItemAmount(Integer.parseInt(request.getParameter("textbox_xl")));
			boolean insert = productService.insertProduct(product);
			if(insert == true){
           	 	count++;
            }
            else{
           		count -= 10; 
            }
		}
	}
	else{
		product.setItemId(request.getParameter("itemId"));
		product.setItemSize(null);
		product.setItemAmount(Integer.parseInt(request.getParameter("textbox")));
		boolean insert = productService.insertProduct(product);
		if(insert == true){
       	 	count++;
        }
        else{
       		count -= 10; 
        }
	}
	if(count>0){
%>		
		<script>alert('상품이 등록되었습니다.'); location.href = '../manageProduct.jsp';</script>
<%
	}
	else{
%>
		<script>alert('상품 등록이 실패 하였습니다. 상품 정보를 다시 입력하세요.'); location.href = '../manageProductRegist.jsp';</script>
<%	
	}
%>
