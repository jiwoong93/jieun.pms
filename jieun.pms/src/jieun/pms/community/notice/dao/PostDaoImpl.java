package jieun.pms.community.notice.dao;

import java.util.List;

import jieun.pms.community.notice.dao.mapper.PostMapper;
import jieun.pms.community.notice.domain.Page;
import jieun.pms.community.notice.domain.Post;
import jieun.pms.config.Configuration;

public class PostDaoImpl implements PostDao {
	private PostMapper postMapper;
	
	
	public PostDaoImpl() {
		this.postMapper = Configuration.getMapper(PostMapper.class);
	}


	@Override
	public List<Post> getNotices(Page page) {
		return postMapper.getNotices(page);
	}


	@Override
	public Post getNotice(int noticeNo) {
		return postMapper.getNotice(noticeNo);
	}


	@Override
	public int deleteNotice(int noticeNo) {
		return postMapper.deleteNotice(noticeNo);
	}


	@Override
	public int updateNotice(Post post) {
		return postMapper.updateNotice(post);
	}


	@Override
	public int insertNotice(Post post) {
		return postMapper.insertNotice(post);
	}

}
