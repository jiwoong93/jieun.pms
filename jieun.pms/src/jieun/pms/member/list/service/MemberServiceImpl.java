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
	/*@Override
	public List<Member> listMembers(String memLevel) {
		return memberDao.getMembers(memLevel);
	}*/
	@Override
	public List<Member> listMembers(Page page) {
		return memberDao.getMembers(page);
	}
	@Override
	public List<Member> listAdmins(Page page) {
		return memberDao.getAdmins(page);
	} 
	@Override
	public List<Member> listExitMembers(Page page) {
		return memberDao.getExitMembers(page);
	}
	@Override
	public int totalPrice(String memId) {
		return memberDao.totalPrice(memId);
	}
}
