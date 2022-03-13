<%-- 
    Document   : cart
    Created on : Mar 11, 2022, 10:32:15 PM
    Author     : MeGa
--%>
<%@page import="java.util.List"%>
<%@page import="com.model.Cart"%>
<%@page import="com.model.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@page import="com.connection.DBConnection"%>
<%@page import="com.daoImpl.CartDaoImpl"%>
<%@page import="com.dao.CartDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart Page - EBook</title>
        <%@include file="all_component/all_css.jsp" %>
    </head>
    <body style="background-color: #f0f1f2">
        <%@include file="all_component/navbar.jsp" %>
        <c:if test="${empty userobj}">
            <c:redirect url="login.jsp" />
        </c:if>
        <div class="container">
            <div class="mt-3">

                <c:if test="${not empty succMsg}">
                    <div class="container text-center">
                        <div class="alert alert-success" role="alert">
                            ${succMsg}
                        </div>
                    </div>
                    <c:remove var="succMsg" />
                </c:if>
                <c:if test="${not empty failedMsg}">
                    <div class="container text-center">
                        <div class="alert alert-danger" role="alert">
                            ${failedMsg}
                        </div>
                    </div>
                    <c:remove var="failedMsg" />
                </c:if>
            </div>
            <div class="row p-1">

                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <h3 class="text-center text-success">Your Selected Items</h3>
                            <table class="table text-center">
                                <thead>
                                    <tr>
                                        <th scope="col">Book Name</th>
                                        <th scope="col">Author</th>
                                        <th scope="col">Price</th>
                                        <th scope="col">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        User u = (User) session.getAttribute("userobj");
                                        CartDao cartDao = new CartDaoImpl(DBConnection.getConnection());
                                        List<Cart> list = cartDao.getBookByUserId(u.getUserId());
                                        Double totalPrice = 0.00;
                                        for (Cart c : list) {
                                            totalPrice = c.getTotalPrice();
                                    %>
                                    <tr>
                                        <td><%= c.getBookName()%></td>
                                        <td><%= c.getAuthor()%></td>
                                        <td><%= c.getPrice()%></td>
                                        <td><a href="remove_book?bid=<%= c.getBid()%>&&uid=<%= c.getUid()%>&&cid=<%= c.getCid()%>" class="btn btn-sm btn-danger text-white"><i class="fa-solid fa-trash-can"></i> Remove</a></td>
                                    </tr>
                                    <%
                                        }
                                    %>

                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td><b>Total Price:</b> <%= totalPrice%></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>  
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <h3 class="text-center text-success">Your Details for Order</h3>
                            <hr>
                            <form action="order" method="post">
                                <input type="hidden" name="id" value="${userobj.userId}">
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="inputEmail4">Name *</label>
                                        <input type="text" class="form-control" id="inputEmail4" readonly value="<%= u.getName()%>" name="name" >
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="inputPassword4">Email *</label>
                                        <input type="email" class="form-control" id="inputPassword4" readonly value="<%= u.getEmail()%>" name="email">
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="inputEmail4">Phone Number *</label>
                                        <input type="number" class="form-control" id="inputEmail4" required value="<%= u.getPhoneNumber()%>" name="number">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="inputPassword4">Address *</label>
                                        <input type="text" class="form-control" id="inputPassword4" name="address" required >
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="inputEmail4">Landmark *</label>
                                        <input type="text" class="form-control" id="inputEmail4" name="landmark" required >
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="inputPassword4">City *</label>
                                        <input type="text" class="form-control" id="inputPassword4" name="city" required >
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="inputEmail4">State *</label>
                                        <input type="text" class="form-control" id="inputEmail4" name="state" required >
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="inputPassword4">Zip Code *</label>
                                        <input type="number" class="form-control" id="inputPassword4" name="zipcode" required >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Payment Mode</label>
                                    <select id="id" class="form-control" name="paymentType">
                                        <option value="noselect">Please select Payment Type</option>
                                        <option value="Cash on Delivery">Cash on Delivery</option>
                                        <option value="Bank Transfer">Bank Transfer</option>
                                        <option value="JazzCash Account">JazzCash Account</option>
                                        <option value="Easypaisa Account">Easypaisa Account</option>
                                    </select>
                                </div>
                                <div class="text-center">
                                    <button class="btn btn-warning">
                                        Order Now
                                    </button>
                                    <a href="index.jsp" class="btn btn-success">
                                        Continue Shopping
                                    </a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="all_component/footer.jsp" %>
    </body>
</html>
