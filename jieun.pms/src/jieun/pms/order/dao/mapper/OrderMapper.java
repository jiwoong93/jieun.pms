package jieun.pms.order.dao.mapper;

import java.util.List;

import jieun.pms.order.domain.Order;

public interface OrderMapper {
	List<Order> getOrders();
	List<Order> orderDate(String startDate, String endDate);
	int sumTotal();
	int countTotal();
	int sumReal();
	int countReal();
	int completeDeal(int orderNo);
}
