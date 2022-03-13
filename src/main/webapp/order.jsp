<%-- 
    Document   : order
    Created on : Mar 12, 2022, 1:51:48 AM
    Author     : MeGa
--%>
<%@page import="com.model.BookOrder"%>
<%@page import="java.util.List"%>
<%@page import="com.connection.DBConnection"%>
<%@page import="com.daoImpl.BookOrderDaoImpl"%>
<%@page import="com.dao.BookOrderDao"%>
<%@page import="com.model.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Order Page - EBook</title>
        <%@include file="all_component/all_css.jsp" %>
    </head>
    <body style="background-color: #f0f1f2">
        <c:if test="${empty userobj}">
            <c:redirect url="login.jsp" />
        </c:if>
        <%@include file="all_component/navbar.jsp" %>
        <div class="container mt-2">
            <h1 class="text-center">Your Orders</h1>
            <table class="table text-center" style="background-color: white;">
                <thead class="bg-primary text-white">
                    <tr>
                        <th scope="col">Order Id</th>
                        <th scope="col">Name</th>
                        <th scope="col">Book Name</th>
                        <th scope="col">Author</th>
                        <th scope="col">Price</th>
                        <th scope="col">Payment Type</th>
                        <th scope="col">Order Time</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        User u = (User) session.getAttribute("userobj");
                        BookOrderDao bookDao = new BookOrderDaoImpl(DBConnection.getConnection());
                        List<BookOrder> list = bookDao.getAllBookByUser(u.getEmail());

                        for (BookOrder b : list) {
                    %>
                    <tr>
                        <th scope="row"><%= b.getOrderId() %></th>
                        <td><%= b.getUserName()%></td>
                        <td><%= b.getBookName()%></td>
                        <td><%= b.getAuthorName()%></td>
                        <td>&#8360;. <%= b.getPrice()%></td>
                        <td><%= b.getPaymentType()%></td>
                        <td><%= b.getOrderTime() %></td>
                    </tr>
                    <%
                        }
                    %>
                    
                    
                </tbody>
            </table>
        </div>
        <%@include file="all_component/footer.jsp" %>
    </body>
</html>
