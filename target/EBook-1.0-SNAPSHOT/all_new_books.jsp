<%-- 
    Document   : all_recent_books
    Created on : Mar 11, 2022, 1:33:27 PM
    Author     : MeGa
--%>

<%@page import="java.util.List"%>
<%@page import="com.model.Books"%>
<%@page import="com.daoImpl.BookDaoImpl"%>
<%@page import="com.daoImpl.BookDaoImpl"%>
<%@page import="com.dao.BookDao"%>
<%@page import="com.dao.BookDao"%>
<%@page import="com.connection.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All New Books Page - EBook</title>
        <%@include file="all_component/all_css.jsp" %>
        <style>
            
            .crd-ho:hover{
                background-color: #f0f1f2;
            }
        </style>
    </head>
    <body style="background-color: #f0f1f2">
        <%@include file="all_component/navbar.jsp" %>
        <div class="container-fluid">
            <h1 class="text-center">All New Books</h1>
            <div class="row p-2">
                <%
                    BookDao dao = new BookDaoImpl(DBConnection.getConnection());
                    List<Books> list = dao.getAllNewBook();
                    for (Books books : list) {
                %>
                <div class="col-md-3">
                    <div class="card crd-ho">
                        <div class="card-body text-center">
                            <img src="book/<%= books.getPhotoName()%>" alt="" style="width: 150px; height: 200px;" class="img-thumblin" />
                            <p><b>Name: </b><%= books.getBookName()%></p>
                            <p><b>Author: </b><%= books.getAuthor()%></p>
                            <p><b>Category: </b><%= books.getBookCategory()%></p>
                            <div class="row">
                                <a href="#" class="btn btn-danger btn-sm ml-3"><i class="fa-solid fa-cart-plus"></i> Add Cart</a>
                                <a href="view_book_details.jsp" class="btn btn-success btn-sm ml-2">Details</a>
                                <a href="#" class="btn btn-danger btn-sm ml-2">&#8360;. <%= books.getPrice()%></a>
                            </div>
                        </div>
                    </div>
                </div>
                <%
                    }
                %>
            </div>
        </div>
        <%@include file="all_component/footer.jsp" %>
    </body>
</html>
