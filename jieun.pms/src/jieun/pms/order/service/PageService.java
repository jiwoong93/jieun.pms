package jieun.pms.order.service;

import jieun.pms.order.domain.Page;

public interface PageService {
	Page getPage();
    boolean isPrev();
    boolean isNext();
    int getStartPage();
    int getEndPage();
}
