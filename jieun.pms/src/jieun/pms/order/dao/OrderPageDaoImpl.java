package jieun.pms.order.dao;

import java.util.List;

import jieun.pms.config.Configuration;
import jieun.pms.order.dao.mapper.OrderPageMapper;
import jieun.pms.order.domain.OrderPage;
import jieun.pms.order.domain.OrderPost;

public class OrderPageDaoImpl implements OrderPageDao {
	private OrderPageMapper orderPageMapper;

	public OrderPageDaoImpl() {
		this.orderPageMapper = Configuration.getMapper(OrderPageMapper.class);
	}


	@Override
	public int getTotRowCnt() {
		return orderPageMapper.getTotRowCnt();
	}

}
