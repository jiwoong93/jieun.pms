package jieun.pms.member.login.dao;

import jieun.pms.member.login.domain.Member;

public interface MemberDao {
	Member getMember(String MemId);
}
