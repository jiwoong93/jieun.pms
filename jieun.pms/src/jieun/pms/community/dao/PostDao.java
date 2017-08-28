package jieun.pms.community.dao;

import java.util.List;

import jieun.pms.community.domain.Comm;
import jieun.pms.community.domain.Page;
import jieun.pms.community.domain.Post;

public interface PostDao {
	List<Post> getPosts(Page page);
	
	List<Comm> getCommets(int revNo);

	Post getReview(int revNo);

	int updateCount(int revNo);

	int insertReview(Post post);

	int deleteProduct(int revNo);

	int updateReview(Post post);

	int insertComm(Comm comm);
	
	int deleteProductComm(int revNo);
}