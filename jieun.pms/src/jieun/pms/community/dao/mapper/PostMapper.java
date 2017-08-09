package jieun.pms.community.dao.mapper;

import java.util.List;

import jieun.pms.community.domain.Page;
import jieun.pms.community.domain.Post;

public interface PostMapper {
	List<Post> getPosts(Page page);
}
