package jieun.pms.community.service;

import java.util.List;

import jieun.pms.community.dao.PostDao;
import jieun.pms.community.dao.PostDaoImpl;
import jieun.pms.community.domain.Page;
import jieun.pms.community.domain.Post;

public class PostServiceImpl implements PostService {
	private PostDao postDao;

	public PostServiceImpl() {
		this.postDao = new PostDaoImpl();
	}

	public List<Post> listPosts(Page page) {
		return postDao.getPosts(page);
	}
	
	public Post getReview(int revNo){
		return postDao.getReview(revNo);
	}
	
	public Post getNotice(int noticeNo){
		return postDao.getNotice(noticeNo);
	}
}
