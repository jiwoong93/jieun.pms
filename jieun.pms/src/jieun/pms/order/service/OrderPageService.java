package jieun.pms.order.service;

import jieun.pms.order.domain.OrderPage;

public interface OrderPageService {
	OrderPage getPage(); 
	boolean isPrev();
	boolean isNext();
	int getStartPage();
	int getEndPage();
}
