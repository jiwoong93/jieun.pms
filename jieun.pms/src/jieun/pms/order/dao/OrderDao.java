package jieun.pms.order.dao;

import java.util.List;

import jieun.pms.order.domain.Order;

public interface OrderDao {
	List<Order> getOrders();
}
