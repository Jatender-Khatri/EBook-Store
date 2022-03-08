<%-- 
    Document   : Home
    Created on : Mar 8, 2022, 10:56:51 PM
    Author     : MeGa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin User Page - E-Books</title>
        <%@include file="all_css.jsp" %>
        <style>
            a{
                text-decoration: none;
                color: black;
            }
            a:hover{
                text-decoration: none;
                color: black;
            }
        </style>
    </head>
    <body style="background-color: #f0f1f2">
        <%@include file="navbar.jsp" %>
        <div class="container mt-3">
            <h1 class="text-center">Hello,Admin</h1>
            <div class="row p-5">

                <div class="col-md-3">
                    <a href="add_books.jsp">
                        <div class="card">
                            <div class="card-body text-center">
                                <i class="fas fa-plus-square fa-3x text-primary"></i>
                                <h4>Add Books</h4>
                                -----------------
                            </div>
                        </div>
                    </a>
                </div>

                <div class="col-md-3">
                    <a href="all_books.jsp">
                        <div class="card">
                            <div class="card-body text-center">
                                <i class="fa-solid fa-book-open fa-3x text-danger"></i>
                                <h4>All Books</h4>
                                -----------------
                            </div>
                        </div>
                    </a>
                </div>

                <div class="col-md-3">
                    <a href="orders.jsp">
                        <div class="card">
                            <div class="card-body text-center">
                                <i class="fas fa-box-open fa-3x text-warning"></i>
                                <h4>Orders</h4>
                                -----------------
                            </div>
                        </div>
                    </a>
                </div>

                <div class="col-md-3">

                    <div class="card">
                        <div class="card-body text-center">
                            <i class="fa-solid fa-right-to-bracket fa-3x text-primary"></i>
                            <h4>Logout</h4>
                            -----------------
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div style="margin-top: 130px;">
            <%@include file="footer.jsp" %>
        </div>

    </body>
</html>
