package jieun.pms.member.update.dao.mapper;

import jieun.pms.member.update.domain.UpdateMember;

public interface UpdateMapper {
	UpdateMember selectMember(String memId);
	int updateMember(UpdateMember updateMember);
}
