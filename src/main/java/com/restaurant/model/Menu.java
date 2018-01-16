package com.restaurant.model;

public class Menu {
    public Menu(Integer meNu,String meName,Integer mePrice,String meType,String meRemark){
        this.meName=meName;
        this.meNu=meNu;
        this.mePrice=mePrice;
        this.meType=meType;
        this.meRemark=meRemark;
    }
    public  Menu(){

    }
    private Integer meNu;

    private String meName;

    private Integer mePrice;

    private String meType;

    private String meRemark;

    public Integer getMeNu() {
        return meNu;
    }

    public void setMeNu(Integer meNu) {
        this.meNu = meNu;
    }

    public String getMeName() {
        return meName;
    }

    public void setMeName(String meName) {
        this.meName = meName == null ? null : meName.trim();
    }

    public Integer getMePrice() {
        return mePrice;
    }

    public void setMePrice(Integer mePrice) {
        this.mePrice = mePrice;
    }

    public String getMeType() {
        return meType;
    }

    public void setMeType(String meType) {
        this.meType = meType == null ? null : meType.trim();
    }

    public String getMeRemark() {
        return meRemark;
    }

    public void setMeRemark(String meRemark) {
        this.meRemark = meRemark == null ? null : meRemark.trim();
    }
}