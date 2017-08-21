package jieun.pms.mypage.wishlist.dao.mapper;

import java.util.List;

import jieun.pms.mypage.wishlist.domain.Wishlist;

public interface WishlistMapper {
	List<Wishlist> getWishes(String memId);
	int insertWishlist(Wishlist wishlist);
	int deleteWishlist(int wishNo);
}
