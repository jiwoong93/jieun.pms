package jieun.pms.member.list.dao;

import java.util.List;

import jieun.pms.member.list.domain.Member;
import jieun.pms.member.list.domain.Page;

public interface MemberDao {
	//List<Member> getMembers(String memLevel);
	 List<Member> getMembers(Page page);
}
