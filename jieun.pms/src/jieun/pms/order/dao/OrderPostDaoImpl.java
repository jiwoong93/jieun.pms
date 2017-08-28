package jieun.pms.order.dao;

import java.util.List;

import jieun.pms.config.Configuration;
import jieun.pms.order.dao.mapper.OrderPostMapper;
import jieun.pms.order.domain.OrderPage;
import jieun.pms.order.domain.OrderPost;

public class OrderPostDaoImpl implements OrderPostDao {
	private OrderPostMapper orderPostMaper;
	
	public OrderPostDaoImpl() {
		this.orderPostMaper = Configuration.getMapper(OrderPostMapper.class);
	}

	@Override
	public List<OrderPost> getOrderList(OrderPage orderPage) {
		return orderPostMaper.getOrderList(orderPage);
	}

}
