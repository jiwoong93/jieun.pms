package jieun.pms.order.service;

import java.util.List;

import jieun.pms.order.dao.OrderDao;
import jieun.pms.order.dao.OrderDaoImpl;
import jieun.pms.order.domain.Order;
import jieun.pms.order.domain.OrderDate;
import jieun.pms.order.domain.Page;

public class OrderServiceImpl implements OrderService {
	private OrderDao orderDao;
	
	
	public OrderServiceImpl() {
		this.orderDao = new OrderDaoImpl();
	}


	@Override
	public List<Order> getOrders(Page page) {
		return orderDao.getOrders(page);
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
	public List<Order> orderDate(OrderDate orderDate) {
		return orderDao.orderDate(orderDate);
	}


	@Override
	public List<Order> getMemOrders(String memId) {
		return orderDao.getMemOrders(memId);
	}


	@Override
	public boolean cancelDeal(int orderNo) {
		return orderDao.cancelDeal(orderNo)>0;
	}


	@Override
	public boolean changeDeal(int orderNo) {
		return orderDao.changeDeal(orderNo)>0;
	}

}
