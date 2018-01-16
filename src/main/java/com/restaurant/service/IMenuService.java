package com.restaurant.service;

import com.restaurant.model.Menu;

import java.util.List;

/**
 * Created by yzp on 2017/12/23.
 */
public interface IMenuService {
    public Menu getMenubyNu(Integer meNu);
    public void insertMenu(Menu menu);
    public void update(Menu menu);
    public void deleteByMenu(Integer meNu);
    public List<Menu> getMenuAll();
}
