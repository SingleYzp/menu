package com.restaurant.service.imp;

import com.restaurant.dao.MenuDao;
import com.restaurant.model.Menu;
import com.restaurant.service.IMenuService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by yzp on 2017/12/23.
 */
@Service("menuService")
public class IMenuServiceImp implements IMenuService {

    @Resource
    private MenuDao menuDao;



    public Menu getMenubyNu(Integer meNu) {
        return this.menuDao.selectByPrimaryKey(meNu);
    }

    public void insertMenu(Menu menu) {
        this.menuDao.insert(menu);
    }

    public void updateByNu(Menu menu) {
        this.menuDao.updateByPrimaryKey(menu);
    }
}
