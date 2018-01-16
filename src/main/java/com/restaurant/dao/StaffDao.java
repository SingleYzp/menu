package com.restaurant.dao;

import com.restaurant.model.Staff;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StaffDao {
    int deleteByPrimaryKey(Integer staNu);

    int insert(Staff record);

    int insertSelective(Staff record);

    Staff selectByPrimaryKey(Integer staNu);

    List<Staff> selectByStaPosition(String staPosition);

    List<Staff>selectAll();

    int updateByPrimaryKeySelective(Staff record);

    int updateByPrimaryKey(Staff record);
}