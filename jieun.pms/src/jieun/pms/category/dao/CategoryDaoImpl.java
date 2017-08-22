package jieun.pms.category.dao;

import java.util.List;

import jieun.pms.category.dao.mapper.CategoryMapper;
import jieun.pms.category.domain.Category;
import jieun.pms.category.domain.Product;
import jieun.pms.config.Configuration;

public class CategoryDaoImpl implements CategoryDao {
	private CategoryMapper categoryMapper;

	public CategoryDaoImpl() {
		this.categoryMapper = Configuration.getMapper(CategoryMapper.class);
	}

	@Override
	public int addCate(Category cate) {
		return categoryMapper.addCate(cate);
	}

	@Override
	public int delCate(String cateNo) {
		return categoryMapper.delCate(cateNo);
	}

	@Override
	public List<Category> firstCate() {
		return categoryMapper.firstCate();
	}

	@Override
	public List<Category> secondCate() {
		return categoryMapper.secondCate();
	}

	@Override
	public List<Category> selectSecondCate(String cateNo) {
		return categoryMapper.selectSecondCate(cateNo);
	}

	@Override
	public List<Product> cateProducts(String cateNo) {
		return categoryMapper.cateProducts(cateNo);
	}

	@Override
	public List<Product> cateAllProducts() {
		return categoryMapper.cateAllProducts();
	}

	@Override
	public List<Product> cateSecondProducts(String cateNo) {
		return categoryMapper.cateSecondProducts(cateNo);
	}

}
