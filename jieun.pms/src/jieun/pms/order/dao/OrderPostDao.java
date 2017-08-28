package jieun.pms.order.dao;

import java.util.List;

import jieun.pms.order.domain.OrderPage;
import jieun.pms.order.domain.OrderPost;

public interface OrderPostDao {
	List<OrderPost> getOrderList(OrderPage orderPage);
}
