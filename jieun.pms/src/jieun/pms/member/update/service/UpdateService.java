package jieun.pms.member.update.service;

import jieun.pms.member.update.domain.UpdateMember;

public interface UpdateService {
	UpdateMember selectMember(String memId);
	UpdateMember updateMember(UpdateMember updateMember);
}
