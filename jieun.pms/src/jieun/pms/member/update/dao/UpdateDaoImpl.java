package jieun.pms.member.update.dao;

import jieun.pms.config.Configuration;
import jieun.pms.member.update.dao.mapper.UpdateMapper;
import jieun.pms.member.update.domain.UpdateMember;

public class UpdateDaoImpl implements UpdateDao {
	private UpdateMapper updateMapper;
	
	
	public UpdateDaoImpl() {
		this.updateMapper = Configuration.getMapper(UpdateMapper.class);
	}

	@Override
	public UpdateMember selectMember(String memId) {
		return updateMapper.selectMember(memId);
	}

	@Override
	public int updateMember(UpdateMember updateMember) {
		return updateMapper.updateMember(updateMember);
	}

}
