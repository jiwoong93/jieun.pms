package jieun.pms.member.login.dao.mapper;

import jieun.pms.member.login.domain.Member;

public interface LoginMapper {
	Member getMember(String memId);
}
