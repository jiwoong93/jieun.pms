package jieun.pms.product.dao.mapper;

import java.util.List;

import jieun.pms.product.domain.Product;

public interface ProductMapper {
	List<Product> getProducts(String category);
	List<Product> getProduct(String itemName);
	List<Product> getAllProducts();
	Product getProductId(String itemId);
	Product getProductNo(int itemNo);
	int updateProduct(Product product);
	int deleteProduct(int itemNo);
	int insertProduct(Product product);
}
