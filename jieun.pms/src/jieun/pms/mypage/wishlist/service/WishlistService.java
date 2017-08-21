package jieun.pms.mypage.wishlist.service;

import java.util.List;

import jieun.pms.mypage.wishlist.domain.Wishlist;

public interface WishlistService {
	List<Wishlist> getWishes(String memId);
	boolean insertWishlist(Wishlist wishlist);
	boolean deleteWishlist(int wishNo);
}
