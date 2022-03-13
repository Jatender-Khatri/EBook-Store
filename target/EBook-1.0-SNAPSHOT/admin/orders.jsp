<%-- 
    Document   : all_books
    Created on : Mar 9, 2022, 12:14:49 AM
    Author     : MeGa
--%>
<%@page import="com.model.User"%>
<%@page import="com.model.BookOrder"%>
<%@page import="java.util.List"%>
<%@page import="com.connection.DBConnection"%>
<%@page import="com.daoImpl.BookOrderDaoImpl"%>
<%@page import="com.dao.BookOrderDao"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Page - E-Books</title>
        <%@include file="all_css.jsp" %>

    </head>
    <body style="background-color: #f0f1f2">
        <%@include file="navbar.jsp" %>
        <c:if test="${empty userobj}">
            <c:redirect url="../login.jsp" />
        </c:if>
        <div class="text-center mt-2">

            <a href="Home.jsp" class="btn btn-sm btn-primary" style="width: 130px; height: 35px;"><i class="fa-solid fa-arrow-left"></i> Home Page</a>
        </div>
        <div class="container text-center mt-2" style="background-color: white;">
            <h1>Hello, Admin</h1>
            <table  class="table  mt-3">
                <thead class="bg-primary text-white">
                    <tr>
                        <th scope="col">Order Id</th>
                        <th scope="col">Name</th>
                        <th scope="col">Email</th>
                        
                        <th scope="col">Phone Number</th>
                        <th scope="col">Book Name</th>
                        <th scope="col">Author</th>
                        <th scope="col">Price</th>
                        <th scope="col">Payment Type</th>
                        <th scope="col">Order Time</th>
                        <th scope="col">Show Order</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        User u = (User)session.getAttribute("userobj");
                        BookOrderDao bookDao = new BookOrderDaoImpl(DBConnection.getConnection());
                        List<BookOrder> list = bookDao.getAllBookByAdmin();
                        for (BookOrder b : list) {
                    %>
                    <tr>
                        <th scope="row"><%= b.getOrderId() %></th>
                        <td><%= b.getUserName()%></td>
                        <td><%= b.getEmail()%></td>
                        
                        <td><%= b.getPhoneNumber()%></td>
                        <td><%= b.getBookName()%></td>
                        <td><%= b.getAuthorName()%></td>
                        <td>&#8360;. <%= b.getPrice()%></td>
                        <td><%= b.getPaymentType()%></td>
                        <td><%= b.getOrderTime()%></td>
                        <td>
                            <a href="show_single_order.jsp?orderId=<%=b.getOrderId()%>" class="btn btn-sm btn-primary"><i class="fa-solid fa-eye"></i> Show</a>
                        </td>
                    </tr>
                    <%
                        }
                    %>
                   
                </tbody>
            </table>
        </div>
        <div style="margin-top: 210px;">
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
