package jieun.pms.product.service;

import java.util.List;

import jieun.pms.product.dao.ProductPostDao;
import jieun.pms.product.dao.ProductPostDaoImpl;
import jieun.pms.product.domain.ProductPage;
import jieun.pms.product.domain.ProductPost;

public class ProductPostServiceImpl implements ProductPostService {
	private ProductPostDao postDao;

	public ProductPostServiceImpl() {
		this.postDao = new ProductPostDaoImpl();
	}

	public List<ProductPost> listProducts(ProductPage page) {
		return postDao.getProductList(page);
	}

}
