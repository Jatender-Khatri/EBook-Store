<%-- 
    Document   : view_book_details
    Created on : Mar 11, 2022, 4:57:53 PM
    Author     : MeGa
--%>

<%@page import="com.model.Books"%>
<%@page import="com.connection.DBConnection"%>
<%@page import="com.daoImpl.BookDaoImpl"%>
<%@page import="com.dao.BookDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Book Details Page - EBook</title>
        <%@include file="all_component/all_css.jsp" %>
    </head>
    <body style="background: #f0f1f2">
        <%@include file="all_component/navbar.jsp" %>
        <%
            Integer id = Integer.parseInt(request.getParameter("id"));
            BookDao bookDao = new BookDaoImpl(DBConnection.getConnection());
            Books b = bookDao.getBookById(id);
        %>
        <div class="container p-3">
            <div class="row">
                <div class="col-md-6 text-center p-5 border bg-white">
                    <img src="book/<%= b.getPhotoName()%>" style="width: 150px; height: 150px;" />
                    <h4 class="mt-2">Book Name: <span class="text-success"><%= b.getBookName()%></span></h4>
                    <h4>Author Name: <span class="text-success"><%= b.getAuthor()%></span></h4>
                    <h4>Category: <span class="text-success"><%= b.getBookCategory()%></span></h4>
                </div>
                <div class="col-md-6 text-center p-5 border bg-white">
                    <h4><%= b.getBookName()%></h4>
                    <%
                        if ("Old".equals(b.getBookCategory())) {
                    %>
                    <h5 class="text-primary">Contact to Seller</h5>
                    <h5 class="text-primary">
                        <i class="far fa-envelope"></i>
                        Email: <%= b.getEmail()%>
                    </h5>
                    <%
                        }
                    %>
                    <div class="row">
                        <div class="col-md-4 text-danger text-center p-2">
                            <i class="fas fa-money-bill-wave fa-3x"></i>
                            <p><b>Cash on Delivery</b></p>
                        </div>
                        <div class="col-md-4 text-danger text-center p-2">
                            <i class="fas fa-undo-alt fa-3x"></i>
                            <p><b>Return Available</b></p>
                        </div>
                        <div class="col-md-4 text-danger text-center p-2">
                            <i class="fas fa-truck-moving fa-3x"></i>
                            <p><b>Free Shipping</b></p>
                        </div>
                    </div>
                    <%
                        if ("Old".equals(b.getBookCategory())) {
                    %>
                    <div class="text-center p-3">
                        <a href="index.jsp" class="btn btn-success"><i class="fa-solid fa-cart-plus"></i> Continue Shopping</a>
                        <a href="#" class="btn btn-danger">&#8360;. <%= b.getPrice()%></a>
                    </div>
                    <%
                    } else {
                    %>
                    <div class="text-center p-3">
                        <a href="#" class="btn btn-primary"><i class="fa-solid fa-cart-plus"></i> Add Cart</a>
                        <a href="#" class="btn btn-danger">&#8360;. <%= b.getPrice()%></a>
                    </div>
                    <%
                        }
                    %>

                </div>
            </div>
        </div>
                    <div style="margin-top: 45px;">
<%@include file="all_component/footer.jsp" %>
        </div>
        
    </body>
</html>
