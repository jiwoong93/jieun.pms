package jieun.pms.member.login.service;

import java.util.List;

import jieun.pms.member.login.domain.Member;

public interface MemberService {
	Member getMember(String memId);
	Member findIdEmail(Member member);
	Member findIdPhone(Member member);
	Member findPwEmail(Member member);
	Member findPwPhone(Member member);
}
