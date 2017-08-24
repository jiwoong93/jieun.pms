package jieun.pms.order.dao;

import jieun.pms.config.Configuration;
import jieun.pms.order.dao.mapper.OrderMapper;
import jieun.pms.order.domain.Order;

public class OrderDaoImpl implements OrderDao {
	private OrderMapper orderMapper;
	
	public OrderDaoImpl() {
		this.orderMapper = Configuration.getMapper(OrderMapper.class);
	}

	@Override
	public int addOrder(Order order) {
		return orderMapper.addOrder(order);
	}

	@Override
	public int orderSeq() {
		return orderMapper.orderSeq();
	}
}
