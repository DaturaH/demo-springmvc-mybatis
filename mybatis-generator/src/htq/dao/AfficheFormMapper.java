package htq.dao;

import htq.model.AfficheForm;

public interface AfficheFormMapper {
    int insert(AfficheForm record);

    int insertSelective(AfficheForm record);
}