package jieun.pms.product.dao.mapper;

import java.util.List;

import jieun.pms.product.domain.ProductPage;
import jieun.pms.product.domain.ProductPost;

public interface ProductPostMapper {
	List<ProductPost> getProductList(ProductPage page);
}
