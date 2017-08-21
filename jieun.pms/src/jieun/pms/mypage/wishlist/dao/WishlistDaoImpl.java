package jieun.pms.mypage.wishlist.dao;

import java.util.List;

import jieun.pms.config.Configuration;
import jieun.pms.mypage.wishlist.dao.mapper.WishlistMapper;
import jieun.pms.mypage.wishlist.domain.Wishlist;

public class WishlistDaoImpl implements WishlistDao {
	private WishlistMapper wishlistMapper;
	
	public WishlistDaoImpl() {
		this.wishlistMapper = Configuration.getMapper(WishlistMapper.class);
	}

	@Override
	public List<Wishlist> getWishes(String memId) {
		return wishlistMapper.getWishes(memId);
	}

	@Override
	public int insertWishlist(Wishlist wishlist) {
		return wishlistMapper.insertWishlist(wishlist);
	}

	@Override
	public int deleteWishlist(int wishNo) {
		return wishlistMapper.deleteWishlist(wishNo);
	}
	
}
