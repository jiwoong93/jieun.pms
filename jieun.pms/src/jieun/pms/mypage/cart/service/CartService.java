package jieun.pms.mypage.cart.service;

import java.util.List;

import jieun.pms.mypage.cart.domain.Cart;

public interface CartService {
	List<Cart> getCarts(String memId);
	boolean insertCart(Cart cart);
}
