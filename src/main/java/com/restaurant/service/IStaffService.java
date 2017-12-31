package com.restaurant.service;

import com.restaurant.model.Staff;

import java.util.List;

/**
 * Created by yzp on 2017/12/22.
 */
public interface IStaffService {
    public Staff getStaffById(Integer staNu);
    public void insertStaff(Staff staff);
    public List<Staff> getStaffByPosition(String staPosition);
}
