package jieun.pms.member.join.dao;

import jieun.pms.member.join.domain.Member;

public interface JoinDao {
	int addMember(Member member);
	int countMember(String memId);
}