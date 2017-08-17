package jieun.pms.member.list.dao;

import java.util.List;

import jieun.pms.config.Configuration;
import jieun.pms.member.list.dao.mapper.MemberMapper;
import jieun.pms.member.list.domain.Member;
import jieun.pms.member.list.domain.Page;

public class MemberDaoImpl implements MemberDao {
	private MemberMapper memberMapper;
    
    public MemberDaoImpl(){
        this.memberMapper = Configuration.getMapper(MemberMapper.class);
    }

	@Override
	public List<Member> getMembers(String memLevel) {
		return memberMapper.getMembers(memLevel);
	}
}
