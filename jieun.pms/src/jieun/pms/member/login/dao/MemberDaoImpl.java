package jieun.pms.member.login.dao;

import java.util.List;

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

	@Override
	public Member findIdEmail(Member member) {
		return loginMapper.findIdEmail(member);
	}
	
	@Override
	public Member findIdPhone(Member member) {
		return loginMapper.findIdPhone(member);
	}

	@Override
	public Member findPwEmail(Member member) {
		return loginMapper.findPwEmail(member);
	}

	@Override
	public Member findPwPhone(Member member) {
		return loginMapper.findPwPhone(member);
	}

}
