<%-- 
    Document   : signup
    Created on : Feb 28, 2022, 10:54:05 PM
    Author     : MeGa
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@page import="com.connection.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page - E-Book</title>
        <link rel="stylesheet" href="all_components/footer.css"/>
        <%@include file="all_component/all_css.jsp" %>
    </head>
    <body style="background-color: #f0f1f2">
        <%@include file="all_component/navbar.jsp" %>

        <div class="container-fluid">
            <div class="row p-5">
                <div class="col-md-4 offset-md-4">
                    <div class="card">
                        <div class="card-body">
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
                            <div class="text-center">
                                <i class="fa fa-user-plus fa-2x" aria-hidden="true"></i>
                                <h5>Registration</h5>
                            </div>
                            <form action="register" method="post">
                                <div class="form-group">
                                    <label>Name *</label>
                                    <input type="text" name="name" required class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Email Address *</label>
                                    <input type="email" name="email" required class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Phone Number *</label>
                                    <input type="number" name="number" required class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Password *</label>
                                    <input type="password" name="password" required class="form-control">
                                </div>
                                <div class="form-check">
                                    <input type="checkbox" name="checkBox" class="form-check-input" ><label class="form-check-label">Agree term and condition</label>
                                </div>
                                <br>
                                <button type="submit" class="btn btn-primary badge-pill btn-block">Sign up</button>
                            </form>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <%@include file="all_component/footer.jsp" %>
    </body>
</html>
