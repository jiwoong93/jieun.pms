package jieun.pms.community.notice.dao.mapper;

import java.util.List;

import jieun.pms.community.notice.domain.Page;
import jieun.pms.community.notice.domain.Post;

public interface PostMapper {
	List<Post> getNotices(Page page);
	Post getNotice(int noticeNo);
	int deleteNotice(int noticeNo);
	int updateNotice(Post post);
	int insertNotice(Post post);
}
