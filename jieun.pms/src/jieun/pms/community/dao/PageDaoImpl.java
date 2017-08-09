package jieun.pms.community.dao;

import jieun.pms.community.dao.mapper.PageMapper;
import jieun.pms.config.Configuration;

public class PageDaoImpl implements PageDao {
	private PageMapper pageMapper;

	public PageDaoImpl() {
		this.pageMapper = Configuration.getMapper(PageMapper.class);
	}

	public int getTotRowCnt() {
		return pageMapper.getTotRowCnt();
	}
}
