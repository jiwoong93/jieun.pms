package jieun.pms.member.login.dao.mapper;

import java.util.List;

import jieun.pms.member.login.domain.Member;

public interface LoginMapper {
	Member getMember(String MemId);
	Member findIdEmail(Member member);
	Member findIdPhone(Member member);
	Member findPwEmail(Member member);
	Member findPwPhone(Member member);
}
