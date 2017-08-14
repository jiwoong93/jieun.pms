package jieun.pms.product.dao.mapper;

import java.util.List;

import jieun.pms.product.domain.Product;

public interface ProductMapper {
	List<Product> getProducts(String category);
	List<Product> getProduct(String itemName);
}
