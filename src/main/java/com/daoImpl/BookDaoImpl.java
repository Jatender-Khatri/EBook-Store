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

    @Override
    public Books getBookById(Integer arg0) {
        Books b = new Books();
        try {
            String booksList = "select * from books where id = ?";
            PreparedStatement ps = con.prepareStatement(booksList);
            ps.setInt(1, arg0);
            ResultSet set = ps.executeQuery();
            while (set.next()) {
                b.setBookId(set.getInt("id"));
                b.setAuthor(set.getString("author"));
                b.setBookCategory(set.getString("bookCategory"));
                b.setBookName(set.getString("bName"));
                b.setEmail(set.getString("email"));
                b.setPhotoName(set.getString("photo"));
                b.setPrice(set.getString("price"));
                b.setStatus(set.getString("status"));
            }
        } catch (Exception e) {
            System.out.println("Error : " + e.getMessage());
            e.printStackTrace();
        }
        return b;
    }

    @Override
    public boolean updateBook(Books arg0) {
        boolean f = false;
        try {
            String update = "update books set bName = ?,status=?,price=?,author=? where id = ?";
            PreparedStatement ps = con.prepareStatement(update);
            ps.setString(1, arg0.getBookName());
            ps.setString(2, arg0.getStatus());
            ps.setString(3, arg0.getPrice());
            ps.setString(4, arg0.getAuthor());
            ps.setInt(5, arg0.getBookId());
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
    public boolean deleteBook(Integer arg0) {
        boolean f = false;
        try {
            String delete = "delete from books where id = ?";
            PreparedStatement ps = con.prepareStatement(delete);
            ps.setInt(1, arg0);

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
    public List<Books> getNewBooks() {
        List<Books> list = new ArrayList<>();
        Books b = null;
        try {
            String query = "select * from books  where bookCategory = ? and status=? order by id DESC";
            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, "New");
            ps.setString(2, "Active");
            ResultSet set = ps.executeQuery();
            Integer i = 1;
            while (set.next() && i <= 4) {
                b = new Books();
                b.setBookId(set.getInt("id"));
                b.setAuthor(set.getString("author"));
                b.setBookCategory(set.getString("bookCategory"));
                b.setBookName(set.getString("bName"));
                b.setEmail(set.getString("email"));
                b.setPhotoName(set.getString("photo"));
                b.setPrice(set.getString("price"));
                b.setStatus(set.getString("status"));
                list.add(b);
                i++;
            }
        } catch (Exception e) {
            System.out.println("Error : " + e.getMessage());
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public List<Books> getRecentBooks() {
        List<Books> list = new ArrayList<>();
        Books b = null;
        try {
            String query = "select * from books  where status=? order by id DESC";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, "Active");
            ResultSet set = ps.executeQuery();
            Integer i = 1;
            while (set.next() && i <= 4) {
                b = new Books();
                b.setBookId(set.getInt("id"));
                b.setAuthor(set.getString("author"));
                b.setBookCategory(set.getString("bookCategory"));
                b.setBookName(set.getString("bName"));
                b.setEmail(set.getString("email"));
                b.setPhotoName(set.getString("photo"));
                b.setPrice(set.getString("price"));
                b.setStatus(set.getString("status"));
                list.add(b);
                i++;
            }
        } catch (Exception e) {
            System.out.println("Error : " + e.getMessage());
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public List<Books> getOldBooks() {
        List<Books> list = new ArrayList<>();
        Books b = null;
        try {
            String query = "select * from books  where bookCategory = ? and status=? order by id DESC";
            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, "Old");
            ps.setString(2, "Active");
            ResultSet set = ps.executeQuery();
            Integer i = 1;
            while (set.next() && i <= 4) {
                b = new Books();
                b.setBookId(set.getInt("id"));
                b.setAuthor(set.getString("author"));
                b.setBookCategory(set.getString("bookCategory"));
                b.setBookName(set.getString("bName"));
                b.setEmail(set.getString("email"));
                b.setPhotoName(set.getString("photo"));
                b.setPrice(set.getString("price"));
                b.setStatus(set.getString("status"));
                list.add(b);
                i++;
            }
        } catch (Exception e) {
            System.out.println("Error : " + e.getMessage());
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public List<Books> getAllRecentBook() {
        List<Books> list = new ArrayList<>();
        Books b = null;
        try {
            String query = "select * from books  where status=? order by id DESC";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, "Active");
            ResultSet set = ps.executeQuery();

            while (set.next()) {
                b = new Books();
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

    @Override
    public List<Books> getAllNewBook() {
        List<Books> list = new ArrayList<>();
        Books b = null;
        try {
            String query = "select * from books  where bookCategory = ? and status=? order by id DESC";
            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, "New");
            ps.setString(2, "Active");
            ResultSet set = ps.executeQuery();

            while (set.next()) {
                b = new Books();
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

    @Override
    public List<Books> getAllOldBook() {
        List<Books> list = new ArrayList<>();
        Books b = null;
        try {
            String query = "select * from books  where bookCategory = ? and status=? order by id DESC";
            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, "Old");
            ps.setString(2, "Active");
            ResultSet set = ps.executeQuery();

            while (set.next()) {
                b = new Books();
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
