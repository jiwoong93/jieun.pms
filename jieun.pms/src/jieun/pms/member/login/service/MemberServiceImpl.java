package jieun.pms.member.login.service;

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
}
