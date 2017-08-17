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

	@Override
	public Product getProductNo(int itemNo) {
		return productDao.getProductNo(itemNo);
	}

	@Override
	public boolean updateProduct(Product product) {
		return productDao.updateProduct(product)>0;
	}

	@Override
	public boolean deleteProduct(int itemNo) {
		return productDao.deleteProduct(itemNo)>0;
	}

	@Override
	public boolean insertProduct(Product product) {
		return productDao.insertProduct(product)>0;
	}

}
