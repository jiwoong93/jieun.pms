package jieun.pms.community.dao;

import java.util.List;

import jieun.pms.community.dao.mapper.PostMapper;
import jieun.pms.community.domain.Page;
import jieun.pms.community.domain.Post;
import jieun.pms.config.Configuration;

public class PostDaoImpl implements PostDao {
	private PostMapper postMapper;

	public PostDaoImpl() {
		this.postMapper = Configuration.getMapper(PostMapper.class);
	}

	public List<Post> getPosts(Page page) {
		return postMapper.getPosts(page);
	}
}
