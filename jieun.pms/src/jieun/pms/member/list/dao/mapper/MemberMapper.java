package jieun.pms.member.list.dao.mapper;

import java.util.List;

import jieun.pms.member.list.domain.Member;
import jieun.pms.member.list.domain.Page;

public interface MemberMapper {
	//List<Member> getMembers(String memLevel);
	List<Member> getMembers(Page page);
	List<Member> getAdmins(Page page);
	List<Member> getExitMembers(Page page);
	int totalPrice(String memId);
}
