package jieun.pms.order.service;

import java.util.List;

import jieun.pms.order.dao.OrderPostDao;
import jieun.pms.order.dao.OrderPostDaoImpl;
import jieun.pms.order.domain.OrderPage;
import jieun.pms.order.domain.OrderPost;

public class OrderPostServiceImpl implements OrderPostService {
	private OrderPostDao orderPostDao;
	
	public OrderPostServiceImpl() {
		this.orderPostDao = new OrderPostDaoImpl();
	}

	@Override
	public List<OrderPost> getOrderList(OrderPage orderPage) {
		return orderPostDao.getOrderList(orderPage);
	}

}
