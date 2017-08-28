package jieun.pms.order.dao.mapper;

import java.util.List;

import jieun.pms.order.domain.OrderPage;
import jieun.pms.order.domain.OrderPost;

public interface OrderPostMapper {
	List<OrderPost> getOrderList(OrderPage orderPage);
}
