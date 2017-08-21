package jieun.pms.product.dao;

import java.util.List;

import jieun.pms.config.Configuration;
import jieun.pms.product.dao.mapper.ProductMapper;
import jieun.pms.product.domain.Product;

public class ProductDaoImpl implements ProductDao {
	private ProductMapper productMapper;
	
	public ProductDaoImpl() {
		this.productMapper = Configuration.getMapper(ProductMapper.class);
	}

	@Override
	public List<Product> getProducts(String category) {
		return productMapper.getProducts(category);
		
	}

	@Override
	public List<Product> getProduct(String itemName) {
		return productMapper.getProduct(itemName);
	}

	@Override
	public Product getProductNo(int itemNo) {
		return productMapper.getProductNo(itemNo);
	}

	@Override
	public int updateProduct(Product product) {
		return productMapper.updateProduct(product);
	}

	@Override
	public int deleteProduct(int itemNo) {
		return productMapper.deleteProduct(itemNo);
	}

	@Override
	public int insertProduct(Product product) {
		return productMapper.insertProduct(product);
	}

	@Override
	public List<Product> getAllProducts() {
		return productMapper.getAllProducts();
	}

}
