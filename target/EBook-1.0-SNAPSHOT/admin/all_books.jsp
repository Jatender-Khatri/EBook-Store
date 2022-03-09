<%-- 
    Document   : all_books
    Created on : Mar 9, 2022, 12:14:49 AM
    Author     : MeGa
--%>
<%@page import="com.model.Books"%>
<%@page import="java.util.List"%>
<%@page import="com.connection.DBConnection"%>
<%@page import="com.daoImpl.BookDaoImpl"%>
<%@page import="com.dao.BookDao"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Books Page - E-Books</title>
        <%@include file="all_css.jsp" %>
    </head>
    <body style="background-color: #f0f1f2">
        <%@include file="navbar.jsp" %>
        <c:if test="${empty userobj}">
            <c:redirect url="../login.jsp" />
        </c:if>
        <div class="text-center">
            <h3>Hello, Admin</h3>
            <a href="Home.jsp" class="btn btn-sm btn-primary" style="width: 130px; height: 35px;"><i class="fa-solid fa-arrow-left"></i> Home Page</a>
        </div>

        <table class="table table-striped mt-3">
            <thead class="bg-primary text-white">
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Image</th>
                    <th scope="col">Book Name</th>
                    <th scope="col">Author</th>
                    <th scope="col">Price</th>
                    <th scope="col">Category</th>
                    <th scope="col">Status</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                <%
                    BookDao bookDao = new BookDaoImpl(DBConnection.getConnection());
                    List<Books> book = bookDao.getAllBooks();

                    for (Books books : book) {
                %>
                <tr>
                    <td><%= books.getBookId()%></td>
                    <td><img src="../book/<%= books.getPhotoName()%>" style="width: 50px; height: 50px;" /></td>
                    <td><%= books.getBookName()%></td>
                    <td>@<%= books.getAuthor()%></td>
                    <td>&#8360;. <%= books.getPrice()%></td>
                    <td><%= books.getBookCategory()%></td>
                    <td><%= books.getStatus()%></td>
                    <td>
                        <a href="#" class="btn btn-sm btn-primary"><i class="fa-solid fa-pen-to-square"></i> Edit</a>
                        <a href="#" class="btn btn-sm btn-danger"><i class="fa-solid fa-trash-can"></i> Delete</a>
                    </td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
        <div style="margin-top: 190px;">
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
