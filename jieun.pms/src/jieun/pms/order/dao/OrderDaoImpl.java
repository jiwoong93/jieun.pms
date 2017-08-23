package jieun.pms.order.dao;

import java.util.List;

import jieun.pms.config.Configuration;
import jieun.pms.order.dao.mapper.OrderMapper;
import jieun.pms.order.domain.Order;

public class OrderDaoImpl implements OrderDao {
	OrderMapper orderMapper;
	
	public OrderDaoImpl() {
		this.orderMapper = Configuration.getMapper(OrderMapper.class);
	}


	@Override
	public List<Order> getOrders() {
		return orderMapper.getOrders();
	}

}
