/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.servlet;

import com.connection.DBConnection;
import com.dao.BookDao;
import com.dao.CartDao;
import com.daoImpl.BookDaoImpl;
import com.daoImpl.CartDaoImpl;
import com.model.Books;
import com.model.Cart;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author MeGa
 */
@WebServlet("/Cart")
public class CartServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Integer bid = Integer.parseInt(request.getParameter("id"));
            Integer uid = Integer.parseInt(request.getParameter("uid"));
            
            BookDao bookDao = new BookDaoImpl(DBConnection.getConnection());
            
            Books book = bookDao.getBookById(bid);
            Cart cart = new Cart();
            cart.setAuthor(book.getAuthor());
            cart.setBid(bid);
            cart.setBookName(book.getBookName());
            cart.setUid(uid);
            cart.setPrice(Double.parseDouble(book.getPrice()));
            cart.setTotalPrice(Double.parseDouble(book.getPrice()));
            
            CartDao cartDao = new CartDaoImpl(DBConnection.getConnection());
            boolean f = cartDao.addCart(cart);
            
            HttpSession session = request.getSession();
            if(f)
            {
                session.setAttribute("addCart", "Book added Succesfully");
                response.sendRedirect("all_new_books.jsp");
            }
            else
            {
                session.setAttribute("failedMsg", "Something went wrong on Server");
                response.sendRedirect("all_new_books.jsp");
            }
        } catch (Exception e) {
            System.out.println("Error : " + e.getMessage());
            e.printStackTrace();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
