package jieun.pms.product.dao;

import java.util.List;

import jieun.pms.product.domain.ProductPage;
import jieun.pms.product.domain.ProductPost;

public interface ProductPostDao {
	List<ProductPost> getProductList(ProductPage page);
}


