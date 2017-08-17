package jieun.pms.product.service;

import java.util.List;

import jieun.pms.product.domain.ProductPage;
import jieun.pms.product.domain.ProductPost;


public interface ProductPostService {
	List<ProductPost> listProducts(ProductPage page);

}
