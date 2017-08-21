package jieun.pms.mypage.cart.dao;

import java.util.List;

import jieun.pms.mypage.cart.domain.Cart;

public interface CartDao {
	List<Cart> getCarts(String memId);
	int insertCart(Cart cart);
	int deleteCart(int cartNo);
}
