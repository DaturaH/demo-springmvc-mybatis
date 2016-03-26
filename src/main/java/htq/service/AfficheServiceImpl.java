package htq.service;

import htq.dao.AfficheFormMapper;
import htq.model.AfficheForm;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("afficheService")
public class AfficheServiceImpl implements AfficheServiceI{
	private AfficheFormMapper afficheMapper;

	public AfficheFormMapper getAfficheMapper() {
		return afficheMapper;
	}

	@Autowired
	public void setAfficheMapper(AfficheFormMapper afficheMapper) {
		this.afficheMapper = afficheMapper;
	}
	
	
	public List<AfficheForm> getAll() {
		return afficheMapper.getAll();
	}


}
