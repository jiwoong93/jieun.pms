package jieun.pms.member.list.service;

import java.util.List;

import jieun.pms.member.list.dao.MemberDao;
import jieun.pms.member.list.dao.MemberDaoImpl;
import jieun.pms.member.list.domain.Member;
import jieun.pms.member.list.domain.Page;

public class MemberServiceImpl implements MemberService {
	private MemberDao memberDao;
    
    public MemberServiceImpl(){
        this.memberDao = new MemberDaoImpl();
    }
	@Override
	public List<Member> listMembers(Page page) {
		return memberDao.getMembers(page);
	}
	
}
