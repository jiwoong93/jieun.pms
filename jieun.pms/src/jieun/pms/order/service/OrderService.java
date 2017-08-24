package jieun.pms.order.service;

import java.util.List;

import jieun.pms.order.domain.Order;

public interface OrderService {
	List<Order> getOrders();
	List<Order> orderDate(String startDate, String endDate);
	int countTotal();
	int sumTotal();
	int sumReal();
	int countReal();
	boolean completeDeal(int orderNo);
}
