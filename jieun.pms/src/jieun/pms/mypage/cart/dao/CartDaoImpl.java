package jieun.pms.mypage.cart.dao;

import java.util.List;

import jieun.pms.config.Configuration;
import jieun.pms.mypage.cart.dao.mapper.CartMapper;
import jieun.pms.mypage.cart.domain.Cart;

public class CartDaoImpl implements CartDao {
	private CartMapper cartMapper;
	
	public CartDaoImpl() {
		this.cartMapper = Configuration.getMapper(CartMapper.class); 
	}

	@Override
	public List<Cart> getCarts(String memId) {
		return cartMapper.getCarts(memId);
	}

}
