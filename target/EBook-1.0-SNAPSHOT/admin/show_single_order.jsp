<%-- 
    Document   : show_single_order
    Created on : Mar 13, 2022, 10:28:36 PM
    Author     : MeGa
--%>
<%@page import="com.model.BookOrder"%>
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
        <title>Show Single Order Page - EBook</title>
        <%@include file="all_css.jsp" %>
    </head>
    <body style="background-color: #f0f1f2">
        
        <%@include file="navbar.jsp" %>
        <c:if test="${empty userobj}">
            <c:redirect url="../login.jsp" />
        </c:if>
        <div class="container">
            <% 
                String orderId = request.getParameter("orderId");
                BookOrderDao bookOrderDao = new BookOrderDaoImpl(DBConnection.getConnection());
                BookOrder b = bookOrderDao.getBookByOrderId(orderId);
            %>
            <div class="row">
                <div class="col-md-12">
                    <div class="text-center text-success mt-3">
                        <i class="fa-solid fa-eye fa-3x"></i>
                        <h1>View Order</h1>
                    </div>
                    <div class="card mt-2">
                        <div class="card-body">
                            <div class="text-center text-primary">
                                <i class="fa-solid fa-eye fa-2x"></i>
                            </div>
                            <br>
                            <div class="form-row">
                                <div class="form-group col-md-3">
                                    <input type="text" class="form-control form-control-sm" value="Order ID: <%= b.getOrderId() %>" readonly>
                                </div>
                                <div class="form-group col-md-3">
                                    <input type="text" class="form-control form-control-sm" value="Book Name: <%= b.getBookName()%>" readonly>
                                </div>
                                <div class="form-group col-md-3">
                                    <input type="text" class="form-control form-control-sm" value="Author: <%= b.getAuthorName() %>" readonly>
                                </div>
                                <div class="form-group col-md-3">
                                    <input type="text" class="form-control form-control-sm" value="Book Price: &#8360;. <%= b.getPrice()%>" readonly>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-3">
                                    <input type="text" class="form-control form-control-sm" value="Username: <%= b.getUserName() %>" readonly>
                                </div>
                                <div class="form-group col-md-3">
                                    <input type="text" class="form-control form-control-sm" value="Email: <%= b.getEmail() %>" readonly>
                                </div>
                                <div class="form-group col-md-3">
                                    <input type="text" class="form-control form-control-sm" value="Phone Number: <%= b.getPhoneNumber()%>" readonly>
                                </div>
                                <div class="form-group col-md-3">
                                    <input type="text" class="form-control form-control-sm" value="Payment Type:  <%= b.getPaymentType()%>" readonly>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-12">
                                    <input type="text" class="form-control form-control-sm" value="User Address: <%= b.getFullAddress()%>" readonly>
                                </div>

                            </div>
                            <div class="form-row">

                                <div class="form-group col-md-3">
                                    <input type="text" class="form-control form-control-sm" value="Order Date:  <%= b.getOrderTime() %>" readonly>
                                </div>
                            </div>
                            <div class="text-center">
                                <a href="Home.jsp" class="btn btn-sm bg-success text-white">Back To Home</a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
