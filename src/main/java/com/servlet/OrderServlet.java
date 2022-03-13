/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.servlet;

import com.connection.DBConnection;
import com.dao.BookOrderDao;
import com.dao.CartDao;
import com.daoImpl.BookOrderDaoImpl;
import com.daoImpl.CartDaoImpl;
import com.model.BookOrder;
import com.model.Cart;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
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
@WebServlet("/order")
public class OrderServlet extends HttpServlet {

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
            Integer userId = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String number = request.getParameter("number");
            String address = request.getParameter("address");
            String landmark = request.getParameter("landmark");
            String city = request.getParameter("city");
            String state = request.getParameter("state");
            String zipcode = request.getParameter("zipcode");
            String paymentType = request.getParameter("paymentType");
            String fullAddress = address + " , " + landmark + " , " + city
                    + " , " + state + " , " + zipcode;

            // System.out.println(name + " , " + email + " , " + number + " , " + fullAddress + " , " + paymentType);
            CartDao cartDao = new CartDaoImpl(DBConnection.getConnection());
            BookOrderDao bookOrderDao = new BookOrderDaoImpl(DBConnection.getConnection());
            HttpSession session = request.getSession();
            BookOrder bookOrder = null;
            Random i = new Random();
            ArrayList<BookOrder> orderList = new ArrayList<>();
            List<Cart> bList = cartDao.getBookByUserId(userId);
            for (Cart c : bList) {
                bookOrder = new BookOrder();
                bookOrder.setOrderId("BOOK-ORD-00" + i.nextInt(1000));
                bookOrder.setUserName(name);
                bookOrder.setEmail(email);
                bookOrder.setPhoneNumber(number);
                bookOrder.setFullAddress(fullAddress);
                bookOrder.setBookName(c.getBookName());
                bookOrder.setAuthorName(c.getAuthor());
                bookOrder.setPrice(c.getPrice() + "");
                bookOrder.setPaymentType(paymentType);

                orderList.add(bookOrder);

            }
            if ("noselect".equals(paymentType)) {
                response.sendRedirect("checkout.jsp");
                session.setAttribute("failedMsg", "Choose Payment Method");

            } else {
                boolean f = bookOrderDao.saveOrder(orderList);
                if (f) {
                    response.sendRedirect("checkout.jsp");
                    session.setAttribute("failedMsg", "Your Order Failed");
                } else {
                    response.sendRedirect("order_success_page.jsp");

                }
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
