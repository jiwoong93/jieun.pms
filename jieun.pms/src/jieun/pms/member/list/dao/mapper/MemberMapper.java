package jieun.pms.member.list.dao.mapper;

import java.util.List;

import jieun.pms.member.list.domain.Member;
import jieun.pms.member.list.domain.Page;

public interface MemberMapper {
	List<Member> getMembers(Page page);
}
