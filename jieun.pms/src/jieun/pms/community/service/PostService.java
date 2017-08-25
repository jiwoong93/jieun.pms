package jieun.pms.community.service;

import java.util.List;

import jieun.pms.community.domain.Page;
import jieun.pms.community.domain.Post;

public interface PostService {
	List<Post> listPosts(Page page);
	
	Post getReview(int revNo);
	
	int updateCount(int revNo);
	
	boolean insertReview(Post post);
	
	boolean deleteProduct(int revNo);
}
