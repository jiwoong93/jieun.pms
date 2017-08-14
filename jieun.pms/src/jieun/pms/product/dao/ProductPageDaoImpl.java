package jieun.pms.product.dao;

import jieun.pms.config.Configuration;
import jieun.pms.product.dao.mapper.ProductPageMapper;

public class ProductPageDaoImpl implements ProductPageDao {
	private ProductPageMapper productPageMapper;
	
	public ProductPageDaoImpl() {
		this.productPageMapper = Configuration.getMapper(ProductPageMapper.class);
	}

	@Override
	public int getTotRowCnt() {
		return productPageMapper.getTotRowCnt();
	}

}
