package jieun.pms.product.service;

import java.util.List;

import jieun.pms.product.domain.Product;

public interface ProductService {
	List<Product> getProducts(String category);
}
