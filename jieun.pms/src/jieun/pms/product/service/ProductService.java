package jieun.pms.product.service;

import java.util.List;

import jieun.pms.product.domain.Product;

public interface ProductService {
	List<Product> getProducts(String category);
	List<Product> getProduct(String itemName);
	List<Product> getAllProducts();
	Product getProductId(String itemId);
	Product getProductNo(int itemNo);
	boolean updateProduct(Product product);
	boolean deleteProduct(int itemNo);
	boolean insertProduct(Product product);
}
