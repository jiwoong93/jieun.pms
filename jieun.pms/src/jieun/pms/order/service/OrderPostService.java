package jieun.pms.order.service;

import java.util.List;

import jieun.pms.order.domain.OrderPage;
import jieun.pms.order.domain.OrderPost;

public interface OrderPostService {
	List<OrderPost> getOrderList(OrderPage orderPage);
}
