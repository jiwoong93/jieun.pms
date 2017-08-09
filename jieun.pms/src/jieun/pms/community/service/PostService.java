package jieun.pms.community.service;

import java.util.List;

import jieun.pms.community.domain.Page;
import jieun.pms.community.domain.Post;

public interface PostService {
	List<Post> listPosts(Page page);
}
