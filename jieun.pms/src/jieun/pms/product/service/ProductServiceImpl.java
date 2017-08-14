package jieun.pms.product.service;

import java.util.List;

import jieun.pms.product.dao.ProductDao;
import jieun.pms.product.dao.ProductDaoImpl;
import jieun.pms.product.domain.Product;

public class ProductServiceImpl implements ProductService {
	private ProductDao productDao;
	
	public ProductServiceImpl() {
		this.productDao = new ProductDaoImpl();
	}

	@Override
	public List<Product> getProducts(String category) {
		return 	productDao.getProducts(category);
	}

	@Override
	public List<Product> getProduct(String itemName) {
		return productDao.getProduct(itemName);
	}

}
