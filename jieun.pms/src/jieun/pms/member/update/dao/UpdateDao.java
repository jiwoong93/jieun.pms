package jieun.pms.member.update.dao;

import jieun.pms.member.update.domain.UpdateMember;

public interface UpdateDao {
	UpdateMember selectMember(String memId);
	UpdateMember updateMember(UpdateMember updateMember);
}
