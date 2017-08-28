package jieun.pms.member.login.service;

import java.util.List;

import jieun.pms.member.login.dao.MemberDao;
import jieun.pms.member.login.dao.MemberDaoImpl;
import jieun.pms.member.login.domain.Member;

public class MemberServiceImpl implements MemberService {
	private MemberDao memberDao;
	
	public MemberServiceImpl() {
		this.memberDao = new MemberDaoImpl();
	}
	
	@Override
	public Member getMember(String memId) {
		return memberDao.getMember(memId);
	}

	@Override
	public Member findIdEmail(Member member) {
		return memberDao.findIdEmail(member);
	}
	
	@Override
	public Member findIdPhone(Member member) {
		return memberDao.findIdPhone(member);
	}

	@Override
	public Member findPwEmail(Member member) {
		return memberDao.findPwEmail(member);
	}

	@Override
	public Member findPwPhone(Member member) {
		return memberDao.findPwPhone(member);
	}
	
}
