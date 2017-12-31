package com.restaurant.service.imp;

import com.restaurant.dao.StaffDao;
import com.restaurant.model.Staff;
import com.restaurant.service.IStaffService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by yzp on 2017/12/22.
 */
@Service("staffService")
public class IStaffServiceImp implements IStaffService {

    @Resource
    private StaffDao staffDao;

    public Staff getStaffById(Integer staNu) {
        return this.staffDao.selectByPrimaryKey(staNu);
    }

    public void insertStaff(Staff staff) {
        this.staffDao.insert(staff);
    }

    public List<Staff> getStaffByPosition(String staPosition) {
        return this.staffDao.selectByStaPosition(staPosition);
    }
}
