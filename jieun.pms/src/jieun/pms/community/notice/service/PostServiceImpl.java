package jieun.pms.community.notice.service;

import java.util.List;

import jieun.pms.community.notice.dao.PostDao;
import jieun.pms.community.notice.dao.PostDaoImpl;
import jieun.pms.community.notice.domain.Page;
import jieun.pms.community.notice.domain.Post;

public class PostServiceImpl implements PostService {
	private PostDao postDao;
	
	public PostServiceImpl() {
		this.postDao = new PostDaoImpl();
	}


	@Override
	public List<Post> NoticePosts(Page page) {
		return postDao.getNotices(page);
	}


	@Override
	public Post getNotice(int noticeNo) {
		return postDao.getNotice(noticeNo);
	}


	@Override
	public boolean deleteNotice(int noticeNo) {
		return postDao.deleteNotice(noticeNo)>0;
	}


	@Override
	public boolean updateNotice(Post post) {
		return postDao.updateNotice(post)>0;
	}


	@Override
	public boolean insertNotice(Post post) {
		return postDao.insertNotice(post)>0;
	}
}
