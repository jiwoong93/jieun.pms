package jieun.pms.order.service;

import jieun.pms.order.dao.OrderPageDao;
import jieun.pms.order.dao.OrderPageDaoImpl;
import jieun.pms.order.domain.OrderPage;

public class OrderPageServiceImpl implements OrderPageService {
	private OrderPageDao orderPageDao;
	
	private int startPage;   // 시작 페이지 번호
    private int endPage;     // 끝 페이지 번호
    private boolean prev;    // 시작 페이지 번호가 1이 아닐 때, 이전 링크
    private boolean next;    // 끝 페이지 번호 후에 글이 더 있을 때, 다음 링크
    private int totRowCnt;   // 전체 글 개수
    private int pageNumCnt;
    private OrderPage orderPage;
	
	public OrderPageServiceImpl(int pageNumCnt, OrderPage page) {
		this.orderPageDao = new OrderPageDaoImpl();
		this.totRowCnt = getTotRowCnt();
	    this.pageNumCnt = pageNumCnt;
	    this.orderPage = page;
	    init();
	}
	
	private int getTotRowCnt(){
        return orderPageDao.getTotRowCnt();
    }
	
    private void init() {
        // 한 화면에서 끝 페이지
        endPage = (int)(Math.ceil(orderPage.getCurrentPage()/(double)pageNumCnt)*pageNumCnt);
        // 한 화면에서 시작 페이지
        startPage = (endPage-pageNumCnt)+1;
        // 마지막 화면에서 끝 페이지
        int lastEndPage = (int)(Math.ceil(totRowCnt/(double)orderPage.getRowCnt()));
 
        if (endPage > lastEndPage) endPage = lastEndPage;
 
        prev = startPage==1?false:true;
        next = endPage*orderPage.getRowCnt() >= totRowCnt?false:true;
    }
	
	@Override
	public OrderPage getPage() {
		return orderPage;
	}

	@Override
	public boolean isPrev() {
		 return prev;
	}

	@Override
	public boolean isNext() {
		  return next;
	}

	@Override
	public int getStartPage() {
		 return startPage;
	}

	@Override
	public int getEndPage() {
		 return endPage;
	}

}
