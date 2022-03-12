<%-- 
    Document   : old_book
    Created on : Mar 12, 2022, 4:33:52 PM
    Author     : MeGa
--%>
<%@page import="com.model.Books"%>
<%@page import="java.util.List"%>
<%@page import="com.connection.DBConnection"%>
<%@page import="com.daoImpl.BookDaoImpl"%>
<%@page import="com.dao.BookDao"%>
<%@page import="com.model.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Old Book Page - EBook</title>
        <%@include file="all_component/all_css.jsp" %>
    </head>
    <body style="background-color: #f0f1f2">
        <c:if test="${empty userobj}">
            <c:redirect url="login.jsp" />
        </c:if>
        <%@include file="all_component/navbar.jsp" %>
        <div class="container mt-2" style="background-color: white;">
            
            <h1 class="text-center">Your Selling Book</h1>
            <c:if test="${not empty succMsg}">
                <div class="container text-center mt-2">
                    <div class="alert alert-success" role="alert">
                        ${succMsg}
                    </div>
                </div>
                <c:remove var="succMsg" />
            </c:if>
            <c:if test="${not empty failedMsg}">
                <div class="container text-center mt-2">
                    <div class="alert alert-danger" role="alert">
                        ${failedMsg}
                    </div>
                </div>
                <c:remove var="failedMsg" />
            </c:if>
            <table  class="table  mt-3">
                <thead class="bg-primary text-white">
                    <tr>
                        <th scope="col" class="text-center">Book Image</th>
                        <th scope="col" class="text-center">Book Name</th>
                        <th scope="col" class="text-center">Author</th>
                        <th scope="col" class="text-center">Price</th>
                        <th scope="col" class="text-center">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        User u = (User) session.getAttribute("userobj");
                        String email = u.getEmail();
                        BookDao bookDao = new BookDaoImpl(DBConnection.getConnection());
                        List<Books> list = bookDao.getUserAllOldBooks(email, "Old");

                        for (Books b : list) {
                    %>
                    <tr>
                        <th class="text-center"><img src="book/<%= b.getPhotoName()%>" style="width: 50px; height: 50px;" /></th>
                        <td class="text-center"><%= b.getBookName()%></td>
                        <td class="text-center"><%= b.getAuthor()%></td>
                        <td class="text-center">&#8360;. <%= b.getPrice()%></td>
                        <td class="text-center"> <a href="delete_old_book?email=<%=b.getEmail()%>&&bid=<%= b.getBookId() %>" class="btn btn-sm btn-danger" ><i class="fa-solid fa-trash-can"></i> Delete</a></td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
        </div>
        <div style="margin-top: 180px;">
            <%@include file="all_component/footer.jsp" %>
        </div>

    </body>
</html>
