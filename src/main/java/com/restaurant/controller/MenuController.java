package com.restaurant.controller;

import com.restaurant.model.Menu;
import com.restaurant.service.IMenuService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.persistence.criteria.CriteriaBuilder;
import javax.swing.event.MenuListener;
import java.util.List;

/**
 * Created by yzp on 2017/12/23.
 */
@Controller
@RequestMapping("/menu")
public class MenuController {

    @Resource
    private IMenuService iMenuService;

    @RequestMapping("getMenus")
    public ModelAndView getMenAll()
    {
        List<Menu> MenuList = null;
        MenuList = this.iMenuService.getMenuAll();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("Menus", MenuList);
        modelAndView.setViewName("/boss/menuMain");
        return modelAndView;
    }

    @RequestMapping("/jumpAdd")
    public String jumpAdd(){
        return "/boss/MenuAdd";
    }
    @RequestMapping("/menuAdd")
    public  ModelAndView menuAdd(@RequestParam Menu menu/*@RequestParam Integer meNu,@RequestParam String meName,@RequestParam
                                 Integer mePrice,@RequestParam String meType,@RequestParam String meRemark*/){
//        Menu menu = new Menu(meNu,meName,mePrice,meType,meRemark);
        iMenuService.insertMenu(menu);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect:/staff/loginSuccess#OrderManager");
        return modelAndView;
    }

    @RequestMapping("/menuDelete")
    public ModelAndView menuDelete(@RequestParam Integer meNu){
        iMenuService.deleteByMenu(meNu);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect:/staff/loginSuccess#OrderManager");
        return modelAndView;
    }

   @RequestMapping("/jumpMenuUpdate")
    public ModelAndView jumpMenuUpdate(@RequestParam Integer meNu){
        ModelAndView modelAndView = new ModelAndView();
        Menu menu = iMenuService.getMenubyNu(meNu);
        modelAndView.addObject("menu",menu);
        modelAndView.setViewName("/boss/menuUpdate");
        return modelAndView;
   }

   @RequestMapping("menuUpdate")
   public String menuUpdate(@RequestParam Menu menu){
        iMenuService.update(menu);
        return "redirect:/staff/loginSuccess#OrderManager";
   }
}
