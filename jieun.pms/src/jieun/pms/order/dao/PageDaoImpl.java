package jieun.pms.order.dao;

import jieun.pms.config.Configuration;
import jieun.pms.order.dao.mapper.PageMapper;

public class PageDaoImpl implements PageDao {
private PageMapper pageMapper;
    
    public PageDaoImpl(){
        this.pageMapper = Configuration.getMapper(PageMapper.class);
    }
    
    public int getTotRowCnt(){
        return pageMapper.getTotRowCnt();
    }
}
