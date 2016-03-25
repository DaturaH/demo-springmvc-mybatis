package htq.dao;

import htq.model.GoodsForm;

public interface GoodsFormMapper {
    int insert(GoodsForm record);

    int insertSelective(GoodsForm record);
}