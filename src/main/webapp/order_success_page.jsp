<%-- 
    Document   : order_success_page
    Created on : Mar 13, 2022, 4:17:07 PM
    Author     : MeGa
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Success Page - EBook</title>
        <%@include file="all_component/all_css.jsp" %>
    </head>
    <body style="background-color: #f0f1f2">
        <%@include file="all_component/navbar.jsp" %>
        <c:if test="${empty userobj}">
            <c:redirect url="login.jsp" />
        </c:if>
        <div class="container text-center mt-3">
            <i class="fas fa-check-circle fa-5x text-center"></i>
            <h1>Thank You</h1>
            <h2>Your Order Successfully</h2>
            <h5>With in 7 Days Your Product Will be Delivered In your Address</h5>
            <a href="index.jsp" class="btn btn-primary mt-3">Home</a>
            <a href="order.jsp" class="btn btn-danger mt-3">View Order</a>
        </div>
        <div style="margin-top: 168px;">
            <%@include file="all_component/footer.jsp" %>
        </div>
        
    </body>
</html>
