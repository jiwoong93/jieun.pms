package jieun.pms.member.join.dao;

import jieun.pms.config.Configuration;
import jieun.pms.member.join.dao.mapper.JoinMapper;
import jieun.pms.member.join.domain.Member;

public class JoinDaoImpl implements JoinDao {
	private JoinMapper joinMapper;
	
	public JoinDaoImpl() {
		this.joinMapper = Configuration.getMapper(JoinMapper.class);
	}

	@Override
	public int addMember(Member member) {
		return joinMapper.addMember(member);
	}

	@Override
	public int countMember(String memId) {
		return joinMapper.countMember(memId);
	}

	@Override
	public int delMember(String memId) {
		return joinMapper.delMember(memId);
	}

}
