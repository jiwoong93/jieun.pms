package jieun.pms.order.service;

import java.util.List;

import jieun.pms.order.dao.OrderDao;
import jieun.pms.order.dao.OrderDaoImpl;
import jieun.pms.order.domain.Order;

public class OrderServiceImpl implements OrderService {
	private OrderDao orderDao;
	
	
	public OrderServiceImpl() {
		this.orderDao = new OrderDaoImpl();
	}


	@Override
	public List<Order> getOrders() {
		return orderDao.getOrders();
	}


	@Override
	public int countTotal() {
		return orderDao.countTotal();
	}


	@Override
	public int sumTotal() {
		return orderDao.sumTotal();
	}


	@Override
	public int sumReal() {
		return orderDao.sumReal();
	}


	@Override
	public int countReal() {
		return orderDao.countReal();
	}


	@Override
	public boolean completeDeal(int orderNo) {
		return orderDao.completeDeal(orderNo)>0;
	}


	@Override
	public List<Order> orderDate(String startDate, String endDate) {
		return orderDao.orderDate(startDate, endDate);
	}

}
