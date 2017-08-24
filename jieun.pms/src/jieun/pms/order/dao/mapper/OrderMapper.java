package jieun.pms.order.dao.mapper;

import jieun.pms.order.domain.Order;

public interface OrderMapper {
	int addOrder(Order order);
	int orderSeq();
}
