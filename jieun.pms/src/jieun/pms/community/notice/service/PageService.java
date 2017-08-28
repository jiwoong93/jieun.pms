package jieun.pms.community.notice.service;

import jieun.pms.community.notice.domain.Page;

public interface PageService {
	Page getPage();
	boolean isPrev();
	boolean isNext();
	int getStartPage();
	int getEndPage();
}
