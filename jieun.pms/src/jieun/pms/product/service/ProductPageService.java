package jieun.pms.product.service;

import jieun.pms.product.domain.ProductPage;

public interface ProductPageService {
	ProductPage getPage();
	boolean isPrev();
	boolean isNext();
	int getStartPage();
	int getEndPage();
}
