package jieun.pms.member.join.dao.mapper;

import jieun.pms.member.join.domain.Member;

public interface JoinMapper {
	int addMember(Member member);
	int countMember(String memId);
	int delMember(String memId);
}
