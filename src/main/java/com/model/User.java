/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.model;

/**
 *
 * @author MeGa
 */
public class User {

    private Integer userId;
    private String name;
    private String email;
    private String password;
    private String address;
    private String phoneNumber;
    private String landmark;
    private String city;
    private String state;
    private String zipCode;

    public User() {
    }

    public User(Integer userId, String name, String email, String password, String address, String phoneNumber, String landmark, String city, String state, String zipCode) {
        this.userId = userId;
        this.name = name;
        this.email = email;
        this.password = password;
        this.address = address;
        this.phoneNumber = phoneNumber;
        this.landmark = landmark;
        this.city = city;
        this.state = state;
        this.zipCode = zipCode;
    }

    public User(String name, String email, String password, String address, String phoneNumber, String landmark, String city, String state, String zipCode) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.address = address;
        this.phoneNumber = phoneNumber;
        this.landmark = landmark;
        this.city = city;
        this.state = state;
        this.zipCode = zipCode;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getLandmark() {
        return landmark;
    }

    public void setLandmark(String landmark) {
        this.landmark = landmark;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getZipCode() {
        return zipCode;
    }

    public void setZipCode(String zipCode) {
        this.zipCode = zipCode;
    }

    @Override
    public String toString() {
        return "User{" + "userId=" + userId + ", name=" + name + ", email=" + email + ", password=" + password + ", address=" + address + ", phoneNumber=" + phoneNumber + ", landmark=" + landmark + ", city=" + city + ", state=" + state + ", zipCode=" + zipCode + '}';
    }

}
