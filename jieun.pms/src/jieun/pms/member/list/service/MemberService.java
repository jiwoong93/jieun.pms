package jieun.pms.member.list.service;

import java.util.List;

import jieun.pms.member.list.domain.Member;
import jieun.pms.member.list.domain.Page;

public interface MemberService {
	List<Member> listMembers(Page page);
}
