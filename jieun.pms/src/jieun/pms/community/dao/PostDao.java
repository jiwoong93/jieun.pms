package jieun.pms.community.dao;

import java.util.List;

import jieun.pms.community.domain.Page;
import jieun.pms.community.domain.Post;

public interface PostDao {
	List<Post> getPosts(Page page);
	
	Post getReview(int revNo);
	
	int updateCount(int revNo);
	
	int insertReview(Post post);
	
	int deleteProduct(int revNo);
}