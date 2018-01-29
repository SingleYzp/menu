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
    public List<Staff> getStaffAll();
    public void reviesStaff(Staff staff);
    public void deleteById(Integer staNu);
    public boolean addPeople(Staff staff);
}
