package jieun.pms.community.dao;

import java.util.List;

import jieun.pms.community.dao.mapper.PostMapper;
import jieun.pms.community.domain.Comm;
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
	
	public Post getReview(int revNo){
		return postMapper.getReview(revNo);
	}

	@Override
	public int insertReview(Post post) {
		return postMapper.insertReview(post);
	}
	
	public int deleteProduct(int revNo){
		return postMapper.deleteProduct(revNo);
	}

	@Override
	public int updateCount(int revNo) {
		return postMapper.updateCount(revNo);
	}

	@Override
	public int updateReview(Post post) {
		return postMapper.updateReview(post);
	}

	@Override
	public int insertComm(Comm comm) {
		return postMapper.insertComm(comm);
	}

	@Override
	public List<Comm> getCommets(int revNo) {
		return postMapper.getCommets(revNo);
	}

	
}
