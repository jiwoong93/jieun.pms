package jieun.pms.category.service;

import java.util.List;

import jieun.pms.category.domain.Category;
import jieun.pms.category.domain.Product;

public interface CategoryService {
	int addCate(Category cate);
	int delCate(String cateNo);
	List<Category> firstCate();
	List<Category> secondCate();
	List<Category> selectSecondCate(String cateNo);
	List<Product> cateProducts(String cateNo);
	List<Product> cateSecondProducts(String cateNo);
	List<Product> cateAllProducts();
}
