package jieun.pms.order.service;

import jieun.pms.order.dao.OrderDao;
import jieun.pms.order.dao.OrderDaoImpl;
import jieun.pms.order.domain.Order;

public class OrderServiceImpl implements OrderService {
	private OrderDao orderDao;
	
	public OrderServiceImpl() {
		this.orderDao = new OrderDaoImpl();
	}

	@Override
	public int addOrder(Order order) {
		return orderDao.addOrder(order);
	}

}
