/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.daoImpl;

import com.dao.CartDao;
import com.model.Cart;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author MeGa
 */
public class CartDaoImpl implements CartDao {

    private Connection con;

    public CartDaoImpl(Connection con) {
        this.con = con;
    }

    @Override
    public boolean addCart(Cart arg0) {
        boolean f = false;
        try {
            String insert = "insert into cart(cid,bid,uid,bookName,author,price,totalPrice) values(?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(insert);
            ps.setInt(1, arg0.getCid());
            ps.setInt(2, arg0.getBid());
            ps.setInt(3, arg0.getUid());
            ps.setString(4, arg0.getBookName());
            ps.setString(5, arg0.getAuthor());
            ps.setString(6, arg0.getPrice());
            ps.setString(7, arg0.getTotalPrice());

            Integer roll = ps.executeUpdate();
            if (roll == 1) {
                f = true;
            }
        } catch (Exception e) {
            System.out.println("Error : " + e.getMessage());
            e.printStackTrace();
        }
        return f;
    }

}
