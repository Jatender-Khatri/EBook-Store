/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.daoImpl;

import com.dao.BookDao;
import com.model.Books;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author MeGa
 */
public class BookDaoImpl implements BookDao {

    private Connection con;

    public BookDaoImpl(Connection con) {
        this.con = con;
    }

    @Override
    public boolean insertBook(Books arg0) {
        boolean f = false;
        try {
            String insert = "insert into books(bName,author,price,bookCategory,status,photo,email) values(?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(insert);
            ps.setString(1, arg0.getBookName());
            ps.setString(2, arg0.getAuthor());
            ps.setString(3, arg0.getPrice());
            ps.setString(4, arg0.getBookCategory());
            ps.setString(5, arg0.getStatus());
            ps.setString(6, arg0.getPhotoName());
            ps.setString(7, arg0.getEmail());
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
    public List<Books> getAllBooks() {
        List<Books> list = new ArrayList<>();
        try {
            String booksList = "select * from books";
            PreparedStatement ps = con.prepareStatement(booksList);
            ResultSet set = ps.executeQuery();
            while (set.next()) {
                Books b = new Books();
                b.setBookId(set.getInt("id"));
                b.setAuthor(set.getString("author"));
                b.setBookCategory(set.getString("bookCategory"));
                b.setBookName(set.getString("bName"));
                b.setEmail(set.getString("email"));
                b.setPhotoName(set.getString("photo"));
                b.setPrice(set.getString("price"));
                b.setStatus(set.getString("status"));
                list.add(b);
            }
        } catch (Exception e) {
            System.out.println("Error : " + e.getMessage());
            e.printStackTrace();
        }
        return list;
    }

}
