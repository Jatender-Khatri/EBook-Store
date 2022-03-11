/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.daoImpl;

import com.dao.CartDao;
import com.model.Cart;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

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
            String insert = "insert into cart(bid,uid,bookName,author,price,totalPrice) values(?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(insert);  
            ps.setInt(1, arg0.getBid());
            ps.setInt(2, arg0.getUid());
            ps.setString(3, arg0.getBookName());
            ps.setString(4, arg0.getAuthor());
            ps.setDouble(5, arg0.getPrice());
            ps.setDouble(6, arg0.getTotalPrice());

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

    @Override
    public List<Cart> getBookByUserId(Integer arg0) {
        List<Cart> list = new ArrayList<>();
        Cart c = null;
        double totalPrice=0;
        try {
            String query = "select * from cart where uid=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, arg0);
            ResultSet set = ps.executeQuery();
            
            while (set.next()) { 
                c = new Cart();
                c.setAuthor(set.getString("author"));
                c.setBid(set.getInt("bid"));
                c.setBookName(set.getString("bookName"));
                c.setCid(set.getInt("cid"));
                c.setPrice(set.getDouble("price"));
                c.setUid(set.getInt("uid"));
                totalPrice = totalPrice+ set.getDouble("price");
                c.setTotalPrice(totalPrice);
                list.add(c);
            }
        } catch (Exception e) {
            System.out.println("Error : " + e.getMessage());
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public boolean deleteBook(Integer arg0, Integer arg1) {
        boolean f = false;
        try {
            String delete = "delete from cart where bid=? and uid=?";
            PreparedStatement ps = con.prepareStatement(delete);
            ps.setInt(1, arg0);
            ps.setInt(2, arg1);
            Integer roll = ps.executeUpdate();
            if(roll==1)
            {
                f = true;
            }
        } catch (Exception e) {
            System.out.println("Error : " + e.getMessage());
            e.printStackTrace();
        }
        return f;
    }

}
