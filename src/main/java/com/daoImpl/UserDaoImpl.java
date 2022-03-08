/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.daoImpl;

import com.dao.UserDao;
import com.model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author MeGa
 */
public class UserDaoImpl implements UserDao {

    private Connection con;

    public UserDaoImpl(Connection con) {
        this.con = con;
    }

    @Override
    public boolean userRegistration(User arg0) {
        boolean f = false;
        try {
            String insert = "insert into user(name,email,phoneNumber,password) values(?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(insert);
            ps.setString(1, arg0.getName());
            ps.setString(2, arg0.getEmail());
            ps.setString(3, arg0.getPhoneNumber());
            ps.setString(4, arg0.getPassword());
            Integer roll = ps.executeUpdate();
            if (roll == 1) {
                f = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Error : " + e.getMessage());
        }
        return f;
    }

}
