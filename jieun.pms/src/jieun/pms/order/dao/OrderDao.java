package jieun.pms.order.dao;

import jieun.pms.order.domain.Order;
import java.util.List;
import jieun.pms.order.domain.OrderDate;

public interface OrderDao {
	List<Order> getOrders();
	List<Order> orderDate(OrderDate orderDate);
	List<Order> getMemOrders(String memId);
	int sumTotal();
	int countTotal();
	int sumReal();
	int countReal();
	int completeDeal(int orderNo);
	int cancelDeal(int orderNo);
	int changeDeal(int orderNo);
	int addOrder(Order order);
	int orderSeq();
}
