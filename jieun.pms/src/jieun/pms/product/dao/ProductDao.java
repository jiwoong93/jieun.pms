package jieun.pms.product.dao;

import java.util.List;

import jieun.pms.product.domain.Product;

public interface ProductDao {
	List<Product> getProducts(String Category);
	List<Product> getProduct(String ItemName);
	List<Product> getAllProducts();
	Product getProductId(String itemId);
	Product getProductNo(int itemNo);
	int updateProduct(Product product);
	int deleteProduct(int itemNo);
	int insertProduct(Product product);
}
