package com.restaurant.service;

import com.restaurant.model.Menu;

/**
 * Created by yzp on 2017/12/23.
 */
public interface IMenuService {
    public Menu getMenubyNu(Integer meNu);
    public void insertMenu(Menu menu);
    public void updateByNu(Menu menu);
}
