<%-- 
    Document   : all_recent_books
    Created on : Mar 11, 2022, 1:33:27 PM
    Author     : MeGa
--%>
<%@page import="com.model.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
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
            /* toast */
            #toast {
                min-width: 300px;
                position: fixed;
                bottom: 30px;
                left: 50%;
                margin-left: -125px;
                background: #333;
                padding: 10px;
                color: white;
                text-align: center;
                z-index: 1;
                font-size: 18px;
                visibility: hidden;
                box-shadow: 0px 0px 100px #000;
            }

            #toast.display {
                visibility: visible;
                animation: fadeIn 0.5, fadeOut 0.5s 2.5s;
            }

            @keyframes fadeIn {
                from {
                    bottom:0;
                    opacity: 0;
                }

                to {
                    bottom: 30px;
                    opacity: 1;
                }

            }
            @keyframes fadeOut {
                form {
                    bottom:30px;
                    opacity: 1;
                }

                to {
                    bottom: 0;
                    opacity: 0;
                }
            }

            /* toast */

        </style>
    </head>
    <body style="background-color: #f0f1f2">
        <c:if test="${not empty addCart}">
            <div id="toast"> ${addCart}</div>

            <script type="text/javascript">
                showToast();
                function showToast(content)
                {
                    $('#toast').addClass("display");
                    $('#toast').html(content);
                    setTimeout(() => {
                        $("#toast").removeClass("display");
                    }, 2000)
                }
            </script>
            <c:remove var="addCart" scope="session"/>
        </c:if>
        <%@include file="all_component/navbar.jsp" %>
        <%
            User u = (User) session.getAttribute("userobj");
        %>
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
                                <%
                                    if (u == null) {
                                %>
                                <a href="login.jsp" class="btn btn-danger btn-sm ml-3"><i class="fa-solid fa-cart-plus"></i> Add Cart</a>
                                <%
                                } else {
                                %>
                                <a href="Cart?id=<%= books.getBookId()%>&&uid=<%= u.getUserId()%>" class="btn btn-danger btn-sm ml-3"><i class="fa-solid fa-cart-plus"></i> Add Cart</a>
                                <%
                                    }
                                %>
                                
                                <a href="view_book_details.jsp?id=<%= books.getBookId() %>" class="btn btn-success btn-sm ml-2">Details</a>
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
