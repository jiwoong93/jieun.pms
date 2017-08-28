package jieun.pms.order.service;

import jieun.pms.order.dao.PageDao;
import jieun.pms.order.dao.PageDaoImpl;
import jieun.pms.order.domain.Page;

public class PageServiceImpl implements PageService {
	private PageDao pageDao;
    
    private int startPage;   // 시작 페이지 번호
    private int endPage;     // 끝 페이지 번호
    private boolean prev;    // 시작 페이지 번호가 1이 아닐 때, 이전 링크
    private boolean next;    // 끝 페이지 번호 후에 글이 더 있을 때, 다음 링크
    private int totRowCnt;   // 전체 글 개수
    private int pageNumCnt;  // 페이지 번호 개수/화면
    private Page page;
    
    public PageServiceImpl(int pageNumCnt, Page page){
        this.pageDao = new PageDaoImpl();
        this.totRowCnt = getTotRowCnt();
        this.pageNumCnt = pageNumCnt;
        this.page = page;
        init();
    }
    
    private int getTotRowCnt(){
        return pageDao.getTotRowCnt();
    }
    
    private void init() {
        // 한 화면에서 끝 페이지
        endPage = (int)(Math.ceil(page.getCurrentPage()/(double)pageNumCnt)*pageNumCnt);
        // 한 화면에서 시작 페이지
        startPage = (endPage-pageNumCnt)+1;
        // 마지막 화면에서 끝 페이지
        int lastEndPage = (int)(Math.ceil(totRowCnt/(double)page.getRowCnt()));
 
        if (endPage > lastEndPage) endPage = lastEndPage;
 
        prev = startPage==1?false:true;
        next = endPage*page.getRowCnt() >= totRowCnt?false:true;
    }
    
    public Page getPage() {
        return page;
    }
 
    public boolean isPrev() {
        return prev;
    }
 
    public boolean isNext() {
        return next;
    }    
 
    public int getStartPage() {
        return startPage;
    }
 
    public int getEndPage() {
        return endPage;
    }
}
