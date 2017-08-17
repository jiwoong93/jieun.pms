package jieun.pms.member.list.service;

import jieun.pms.member.list.domain.Page;

public interface PageService {
	Page getPage();
    boolean isPrev();
    boolean isNext();
    int getStartPage();
    int getEndPage();
}
