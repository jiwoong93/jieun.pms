package jieun.pms.mypage.cart.dao.mapper;

import java.util.List;

import jieun.pms.mypage.cart.domain.Cart;

public interface CartMapper {
	List<Cart> getCarts(String memId);
	int insertCart(Cart cart);
}
