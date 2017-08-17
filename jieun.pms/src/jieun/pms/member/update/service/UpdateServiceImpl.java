package jieun.pms.member.update.service;

import jieun.pms.member.update.dao.UpdateDao;
import jieun.pms.member.update.dao.UpdateDaoImpl;
import jieun.pms.member.update.domain.UpdateMember;

public class UpdateServiceImpl implements UpdateService {
	private UpdateDao updateDao;
	
	public UpdateServiceImpl() {
		this.updateDao = new UpdateDaoImpl();
	}

	@Override
	public UpdateMember selectMember(String memId) {
		return updateDao.selectMember(memId);
	}

	@Override
	public int updateMember(UpdateMember updateMember) {
		return updateDao.updateMember(updateMember);
	}

}
