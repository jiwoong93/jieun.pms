package jieun.pms.order.dao;

import java.util.List;

import jieun.pms.order.domain.Order;

public interface OrderDao {
	List<Order> getOrders();
	int sumTotal();
	int countTotal();
	int sumReal();
	int countReal();
	int completeDeal(int orderNo);
}
