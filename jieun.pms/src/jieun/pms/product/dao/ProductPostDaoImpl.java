package jieun.pms.product.dao;

import java.util.List;

import jieun.pms.config.Configuration;
import jieun.pms.product.dao.mapper.ProductPostMapper;
import jieun.pms.product.domain.ProductPage;
import jieun.pms.product.domain.ProductPost;

public class ProductPostDaoImpl implements ProductPostDao {
	private ProductPostMapper productPostMapper;
	
	public ProductPostDaoImpl() {
		this.productPostMapper = Configuration.getMapper(ProductPostMapper.class);
	}

	@Override
	public List<ProductPost> getProductList(ProductPage page) {
		return productPostMapper.getProductList(page);
	}

}
