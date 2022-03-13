/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.daoImpl;

import com.dao.BookOrderDao;
import com.model.BookOrder;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

/**
 *
 * @author MeGa
 */
public class BookOrderDaoImpl implements BookOrderDao {

    private Connection con;

    public BookOrderDaoImpl(Connection con) {
        this.con = con;
    }
    
    
    @Override
    public boolean saveOrder(List<BookOrder> bList) {
        boolean f = false;
        try {
            String insertOrder = "insert into book_order(order_id,user_name,email,address,book_name,author,price,payment,number) values(?,?,?,?,?,?,?,?,?)";
            con.setAutoCommit(false);
            PreparedStatement ps = con.prepareStatement(insertOrder);
            for(BookOrder b: bList)
            {
                ps.setString(1, b.getOrderId());
                ps.setString(2, b.getUserName());
                ps.setString(3, b.getEmail());
                ps.setString(4, b.getFullAddress());
                ps.setString(5, b.getBookName());
                ps.setString(6, b.getAuthorName());
                ps.setString(7, b.getPrice());
                ps.setString(8, b.getPaymentType());
                ps.setString(9, b.getPhoneNumber());
                ps.addBatch();
            }
            int[] count = ps.executeBatch();
            con.commit();
            con.setAutoCommit(true);
        } catch (Exception e) {
            System.out.println("Error : " + e.getMessage());
            e.printStackTrace();
        }
        return f;
    }

}
