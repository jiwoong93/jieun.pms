package jieun.pms.order.dao;

import java.util.List;

import jieun.pms.config.Configuration;
import jieun.pms.order.dao.mapper.OrderMapper;
import jieun.pms.order.domain.Order;

public class OrderDaoImpl implements OrderDao {
	private OrderMapper orderMapper;
	
	public OrderDaoImpl() {
		this.orderMapper = Configuration.getMapper(OrderMapper.class);
	}


	@Override
	public List<Order> getOrders() {
		return orderMapper.getOrders();
	}


	@Override
	public int countTotal() {
		return orderMapper.countTotal();
	}


	@Override
	public int sumTotal() {
		return orderMapper.sumTotal();
	}


	@Override
	public int sumReal() {
		return orderMapper.sumReal();
	}


	@Override
	public int countReal() {
		return orderMapper.countReal();
	}

	
	@Override
	public int completeDeal(int orderNo) {
		return orderMapper.completeDeal(orderNo);
	}

}
