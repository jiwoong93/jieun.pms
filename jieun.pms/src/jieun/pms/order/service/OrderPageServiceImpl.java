package jieun.pms.order.service;

import jieun.pms.order.dao.OrderPageDao;
import jieun.pms.order.dao.OrderPageDaoImpl;
import jieun.pms.order.domain.OrderPage;

public class OrderPageServiceImpl implements OrderPageService {
	private OrderPageDao orderPageDao;
	
	private int startPage;   // ���� ������ ��ȣ
    private int endPage;     // �� ������ ��ȣ
    private boolean prev;    // ���� ������ ��ȣ�� 1�� �ƴ� ��, ���� ��ũ
    private boolean next;    // �� ������ ��ȣ �Ŀ� ���� �� ���� ��, ���� ��ũ
    private int totRowCnt;   // ��ü �� ����
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
        // �� ȭ�鿡�� �� ������
        endPage = (int)(Math.ceil(orderPage.getCurrentPage()/(double)pageNumCnt)*pageNumCnt);
        // �� ȭ�鿡�� ���� ������
        startPage = (endPage-pageNumCnt)+1;
        // ������ ȭ�鿡�� �� ������
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
