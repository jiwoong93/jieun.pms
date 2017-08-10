package jieun.pms.member.join.service;

import jieun.pms.member.join.dao.JoinDao;
import jieun.pms.member.join.dao.JoinDaoImpl;
import jieun.pms.member.join.domain.Member;

public class JoinServiceImpl implements JoinService {
	private JoinDao joinDao;

	public JoinServiceImpl() {
		this.joinDao = new JoinDaoImpl();
	}

	@Override
	public int addMember(Member member) {
		return joinDao.addMember(member);
	}

	@Override
	public int countMember(String memId) {
		return joinDao.countMember(memId);
	}

}
