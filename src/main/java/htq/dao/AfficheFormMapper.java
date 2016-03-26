package htq.dao;

import java.util.List;

import htq.model.AfficheForm;

public interface AfficheFormMapper {
    int insert(AfficheForm record);

    int insertSelective(AfficheForm record);
    
    List<AfficheForm> getAll();

}