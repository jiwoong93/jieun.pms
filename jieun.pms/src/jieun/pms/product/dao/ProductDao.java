package jieun.pms.product.dao;

import java.util.List;

import jieun.pms.product.domain.Product;

public interface ProductDao {
	List<Product> getProducts(String Category);
}
