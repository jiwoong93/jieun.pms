package jieun.pms.mypage.wishlist.dao;

import java.util.List;

import jieun.pms.mypage.wishlist.domain.Wishlist;

public interface WishlistDao {
	List<Wishlist> getWishes(String memId);
	int insertWishlist(Wishlist wishlist);
	int deleteWishlist(int wishNo);
}
