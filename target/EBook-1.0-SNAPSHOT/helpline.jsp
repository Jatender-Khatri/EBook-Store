<%-- 
    Document   : helpline
    Created on : Mar 12, 2022, 1:58:28 AM
    Author     : MeGa
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Helpline Page - EBook</title>
        <%@include file="all_component/all_css.jsp" %>
    </head>
    <body>
        <c:if test="${empty userobj}">
            <c:redirect url="login.jsp" />
        </c:if>
        <%@include file="all_component/navbar.jsp" %>
        <div class="container">
            <div class="row p-5">
                <div class="col-md-4 offset-md-4 text-center">
                    <div class="text-success">
                        <i class="fas fa-phone-square-alt fa-5x"></i>
                    </div>    
                    <h3>24^7 Service</h3>
                    <h4>Helpline Number</h4>
                    <h5>+92 3351035477</h5>
                    <h5>Email: kumarjatender0@gmail.com</h5>
                    <a href="index.jsp" class="btn btn-primary">Back to Home</a>
                </div>
            </div>

        </div>
        <div style="margin-top: 90px;">
            <%@include file="all_component/footer.jsp" %>
        </div>

    </body>
</html>
