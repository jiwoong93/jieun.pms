package jieun.pms.community.notice.service;

import java.util.List;

import jieun.pms.community.notice.domain.Page;
import jieun.pms.community.notice.domain.Post;

public interface PostService {
	List<Post> NoticePosts(Page page);
	Post getNotice(int noticeNo);
	boolean deleteNotice(int noticeNo);
	boolean updateNotice(Post post);
	boolean insertNotice(Post post);
}
