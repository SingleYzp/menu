package com.restaurant.dao;

import com.restaurant.model.Menu;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MenuDao {
    int deleteByPrimaryKey(Integer meNu);

    int insert(Menu record);

    int insertSelective(Menu record);

    List<Menu> getMenuAll();

    Menu selectByPrimaryKey(Integer meNu);

    int updateByPrimaryKeySelective(Menu record);

    int updateByPrimaryKey(Menu record);
}