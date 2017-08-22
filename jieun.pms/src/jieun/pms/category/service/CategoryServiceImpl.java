package jieun.pms.category.service;

import java.util.List;

import jieun.pms.category.dao.CategoryDao;
import jieun.pms.category.dao.CategoryDaoImpl;
import jieun.pms.category.domain.Category;
import jieun.pms.category.domain.Product;

public class CategoryServiceImpl implements CategoryService {
	private CategoryDao categoryDao;
	
	public CategoryServiceImpl() {
		this.categoryDao = new CategoryDaoImpl();
	}

	@Override
	public int addCate(Category cate) {
		return categoryDao.addCate(cate);
	}

	@Override
	public int delCate(String cateNo) {
		return categoryDao.delCate(cateNo);
	}

	@Override
	public List<Category> firstCate() {
		return categoryDao.firstCate();
	}

	@Override
	public List<Category> secondCate() {
		return categoryDao.secondCate();
	}

	@Override
	public List<Category> selectSecondCate(String cateNo) {
		return categoryDao.selectSecondCate(cateNo);
	}

	@Override
	public List<Product> cateProducts(String cateNo) {
		return categoryDao.cateProducts(cateNo);
	}

	@Override
	public List<Product> cateAllProducts() {
		return categoryDao.cateAllProducts();
	}

	@Override
	public List<Product> cateSecondProducts(String cateNo) {
		return categoryDao.cateSecondProducts(cateNo);
	}
}
