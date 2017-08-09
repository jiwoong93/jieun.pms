package jieun.pms.community.service;

import jieun.pms.community.domain.Page;

public interface PageService {
	Page getPage();
	boolean isPrev();
	boolean isNext();
	int getStartPage();
	int getEndPage();
}
