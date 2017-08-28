package jieun.pms.order.service;

import jieun.pms.order.dao.PageDao;
import jieun.pms.order.dao.PageDaoImpl;
import jieun.pms.order.domain.Page;

public class PageServiceImpl implements PageService {
	private PageDao pageDao;
    
    private int startPage;   // ���� ������ ��ȣ
    private int endPage;     // �� ������ ��ȣ
    private boolean prev;    // ���� ������ ��ȣ�� 1�� �ƴ� ��, ���� ��ũ
    private boolean next;    // �� ������ ��ȣ �Ŀ� ���� �� ���� ��, ���� ��ũ
    private int totRowCnt;   // ��ü �� ����
    private int pageNumCnt;  // ������ ��ȣ ����/ȭ��
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
        // �� ȭ�鿡�� �� ������
        endPage = (int)(Math.ceil(page.getCurrentPage()/(double)pageNumCnt)*pageNumCnt);
        // �� ȭ�鿡�� ���� ������
        startPage = (endPage-pageNumCnt)+1;
        // ������ ȭ�鿡�� �� ������
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
