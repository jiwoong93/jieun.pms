package jieun.pms.order.service;

import java.util.List;

import jieun.pms.order.domain.Order;
import jieun.pms.order.domain.OrderDate;

public interface OrderService {
	List<Order> getOrders();
	List<Order> orderDate(OrderDate orderDate);
	List<Order> getMemOrders(String memId);
	int countTotal();
	int sumTotal();
	int sumReal();
	int countReal();
	boolean completeDeal(int orderNo);
	boolean cancelDeal(int orderNo);
	boolean changeDeal(int orderNo);
}
