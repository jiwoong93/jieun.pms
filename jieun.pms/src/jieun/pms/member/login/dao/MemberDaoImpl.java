package jieun.pms.member.login.dao;

import jieun.pms.config.Configuration;
import jieun.pms.member.login.dao.mapper.LoginMapper;
import jieun.pms.member.login.domain.Member;

public class MemberDaoImpl implements MemberDao {
	private LoginMapper loginMapper;

	public MemberDaoImpl() {
		this.loginMapper = Configuration.getMapper(LoginMapper.class);
	}

	@Override
	public Member getMember(String memId) {
		return loginMapper.getMember(memId);
	}
}
