package jieun.pms.member.join.service;

import jieun.pms.member.join.domain.Member;

public interface JoinService {
	int addMember(Member member);
	int countMember(String memId);
}
