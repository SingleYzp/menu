package com.restaurant.dao;

import com.restaurant.model.Menu;
import org.springframework.stereotype.Repository;

@Repository
public interface MenuDao {
    int deleteByPrimaryKey(Integer meNu);

    int insert(Menu record);

    int insertSelective(Menu record);

    Menu selectByPrimaryKey(Integer meNu);

    int updateByPrimaryKeySelective(Menu record);

    int updateByPrimaryKey(Menu record);
}