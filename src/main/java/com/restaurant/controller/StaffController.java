package com.restaurant.controller;

import com.restaurant.model.Staff;
import com.restaurant.service.IStaffService;
import org.omg.CORBA.Request;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;

/**
 * Created by yzp on 2017/12/23.
 */
@Controller
@RequestMapping("/staff")
public class StaffController {
    @Resource
    private IStaffService iStaffService;

    private Staff staff;

    //判定主页面的登录是否成功
    @RequestMapping("/login")
    public String login(@RequestParam int staNu,@RequestParam String staName,@RequestParam String staPassword,Model model){
        if((staff = this.iStaffService.getStaffById(staNu))==null){
            return "index";
        } else if(staff.getStaName().equals(staName) && staff.getStaPwd().equals(staPassword)) {
            model.addAttribute(staff);
            return "redirect:/staff/loginSuccess";
        }
        return "index";
    }

    //跳转到每个角色的主页
    @RequestMapping("/loginSuccess")
    public String loginSuccess(){
        return "/" +staff.getStaPosition()+"/"+staff.getStaPosition()+"Index";
//        if (staff.getStaPosition().equals("boss"))
//            return "/boss/bossIndex";
//        if (staff.getStaPosition().equals("cook"))
//            return "/cook/cookIndex";
//        if (staff.getStaPosition().equals("waiter"))
//            return "/waiter/waiterIndex";
//        if (staff.getStaPosition().equals("waiter"))
//            return "/cashier/cashierIndex";
//        return "/customer/customerIndex";
    }

    @RequestMapping("/jumpIndex")
    public String jumpIndex(){
        return "index";
    }

    @RequestMapping("/jumpRegister")
    public String jumpRegister(){
        return "register";
    }

    @RequestMapping("/registerCustomer")
    public String registerCustomer(){

        return "registerCustomerSuccess";
    }

}
