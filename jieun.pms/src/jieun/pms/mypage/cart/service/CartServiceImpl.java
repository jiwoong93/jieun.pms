package jieun.pms.mypage.cart.service;

import java.util.List;

import jieun.pms.mypage.cart.dao.CartDao;
import jieun.pms.mypage.cart.dao.CartDaoImpl;
import jieun.pms.mypage.cart.domain.Cart;

public class CartServiceImpl implements CartService {
	private CartDao cartDao;
	
	public CartServiceImpl() {
		this.cartDao = new CartDaoImpl();
	}
	
	@Override
	public List<Cart> getCarts(String memId) {
		return cartDao.getCarts(memId);
	}

	@Override
	public boolean insertCart(Cart cart) {
		return cartDao.insertCart(cart)>0;
	}

	@Override
	public boolean deleteCart(int cartNo) {
		return cartDao.deleteCart(cartNo)>0;
	}

}
