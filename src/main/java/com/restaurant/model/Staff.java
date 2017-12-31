package com.restaurant.model;

public class Staff {
    private Integer staNu;

    private String staName;

    private String staGender;

    private String staPosition;

    private String staPhone;

    private String staPwd;

    public Integer getStaNu() {
        return staNu;
    }

    public void setStaNu(Integer staNu) {
        this.staNu = staNu;
    }

    public String getStaName() {
        return staName;
    }

    public void setStaName(String staName) {
        this.staName = staName == null ? null : staName.trim();
    }

    public String getStaGender() {
        return staGender;
    }

    public void setStaGender(String staGender) {
        this.staGender = staGender == null ? null : staGender.trim();
    }

    public String getStaPosition() {
        return staPosition;
    }

    public void setStaPosition(String staPosition) {
        this.staPosition = staPosition == null ? null : staPosition.trim();
    }

    public String getStaPhone() {
        return staPhone;
    }

    public void setStaPhone(String staPhone) {
        this.staPhone = staPhone == null ? null : staPhone.trim();
    }

    public String getStaPwd() {
        return staPwd;
    }

    public void setStaPwd(String staPwd) {
        this.staPwd = staPwd == null ? null : staPwd.trim();
    }
}