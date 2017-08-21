package jieun.pms.mypage.wishlist.service;

import java.util.List;

import jieun.pms.mypage.wishlist.dao.WishlistDao;
import jieun.pms.mypage.wishlist.dao.WishlistDaoImpl;
import jieun.pms.mypage.wishlist.domain.Wishlist;

public class WishlistServiceImpl implements WishlistService {
	private WishlistDao wishlistDao;
	
	public WishlistServiceImpl() {
		this.wishlistDao = new WishlistDaoImpl();
	}

	@Override
	public List<Wishlist> getWishes(String memId) {
		return wishlistDao.getWishes(memId);
	}

	@Override
	public boolean insertWishlist(Wishlist wishlist) {
		return wishlistDao.insertWishlist(wishlist)>0;
	}

	@Override
	public boolean deleteWishlist(int wishNo) {
		return wishlistDao.deleteWishlist(wishNo)>0;
	}

}
