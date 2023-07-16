/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author ADMIN
 */
public class Account {
    private String username;
    private String password;
    private boolean isUser;
    private String fullname;
    private String gender;
    private String address;
    private String deliveryAddress;
    private Date dateOfBirth;
    private String tel;
    private String email;
    private String srcAvatar;

    public Account() {
    }

    public Account(String username, String password, boolean isUser, String fullname, String gender, String address, String deliveryAddress, Date dateOfBirth, String tel, String email, String srcAvatar) {
        this.username = username;
        this.password = password;
        this.isUser = isUser;
        this.fullname = fullname;
        this.gender = gender;
        this.address = address;
        this.deliveryAddress = deliveryAddress;
        this.dateOfBirth = dateOfBirth;
        this.tel = tel;
        this.email = email;
        this.srcAvatar = srcAvatar;
    }

    

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public boolean isIsUser() {
        return isUser;
    }

    public String getFullname() {
        return fullname;
    }

    public String getGender() {
        return gender;
    }

    public String getAddress() {
        return address;
    }

    public String getDeliveryAddress() {
        return deliveryAddress;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public String getTel() {
        return tel;
    }

    public String getSrcAvatar() {
        return srcAvatar;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setIsUser(boolean isUser) {
        this.isUser = isUser;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setDeliveryAddress(String deliveryAddress) {
        this.deliveryAddress = deliveryAddress;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public void setSrcAvatar(String srcAvatar) {
        this.srcAvatar = srcAvatar;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "Account{" + "username=" + username + ", password=" + password + ", isUser=" + isUser + ", fullname=" + fullname + ", gender=" + gender + ", address=" + address + ", deliveryAddress=" + deliveryAddress + ", dateOfBirth=" + dateOfBirth + ", tel=" + tel + ", email=" + email + ", srcAvatar=" + srcAvatar + '}';
    }
    
    
}
