package jieun.pms.order.dao;

import java.util.List;

import jieun.pms.order.domain.Order;
import jieun.pms.order.domain.OrderDate;
import jieun.pms.order.domain.Page;

public interface OrderDao {
	List<Order> getOrders(Page page);
	List<Order> orderDate(OrderDate orderDate);
	List<Order> getMemOrders(String memId);
	int sumTotal();
	int countTotal();
	int sumReal();
	int countReal();
	int completeDeal(int orderNo);
	int cancelDeal(int orderNo);
	int changeDeal(int orderNo);
}
