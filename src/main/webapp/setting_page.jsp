<%-- 
    Document   : setting_page
    Created on : Mar 12, 2022, 1:02:34 AM
    Author     : MeGa
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Setting Page - EBook</title>
        <%@include file="all_component/all_css.jsp" %>
        <style>
            a{
                text-decoration: none;
                color: black;
            }
            a:hover{
                text-decoration: none;

            }
            .crd-ho:hover{
                background-color: #f0f1f2;
            }
        </style>
    </head>
    <body style="background-color: #f0f1f2">
        <c:if test="${empty userobj}">
            <c:redirect url="login.jsp" />
        </c:if>
        <%@include file="all_component/navbar.jsp" %>
        <div class="container">
            <c:if test="${not empty userobj}">
                <h1 class="text-center">Hello, ${userobj.name}</h1>
            </c:if>
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
            <div class="row p-5">
                <!--start sell old book-->
                <div class="col-md-4">
                    <a href="sell_book.jsp">
                        <div class="card crd-ho" style="height: 180px;">
                            <div class="card-body text-center">
                                <br>
                                <div class="text-primary">
                                    <i class="fas fa-book-open fa-3x"></i>
                                </div>
                                <h3>Sell Old Book</h3>
                            </div>
                        </div>
                    </a>
                </div>    
                <!--end sell book-->
                <!--start  old book-->
                <div class="col-md-4">
                    <a href="old_book.jsp">
                        <div class="card crd-ho" style="height: 180px;">
                            <div class="card-body text-center">
                                <br>
                                <div class="text-primary">
                                    <i class="fas fa-book-open fa-3x"></i>
                                </div>
                                <h3>Old Book</h3>
                            </div>
                        </div>
                    </a>
                </div>    
                <!--end old book-->
                <!--start login and security-->
                <div class="col-md-4">
                    <a href="edit_profile.jsp">
                        <div class="card crd-ho" style="height: 180px;">
                            <div class="card-body text-center">
                                <div class="text-primary">
                                    <i class="fas fa-edit fa-3x"></i>
                                </div>
                                <h3>Login & Security (Edit Profile)</h3>
                            </div>
                        </div>
                    </a>
                </div> 
                <!--end login and security-->
                
                <!--start order-->
                <div class="col-md-6 mt-3">
                    <a href="order.jsp">
                        <div class="card crd-ho" style="height: 180px;">
                            <div class="card-body text-center">
                                <div class="text-danger">
                                    <i class="fas fa-box-open fa-3x"></i>
                                </div>
                                <h3>My Order</h3>
                                <p><b>Track Your Order</b></p>
                            </div>
                        </div>
                    </a>
                </div> 
                <!--end order -->

                <!--start help center-->
                <div class="col-md-6 mt-3">
                    <a href="helpline.jsp">
                        <div class="card crd-ho" style="height: 180px;">
                            <div class="card-body text-center">
                                <div class="text-primary">
                                    <i class="fas fa-user-circle fa-3x"></i>
                                </div>
                                <h3>Help Center</h3>
                                <p><b>24^7 Service</b></p>
                            </div>
                        </div>
                    </a>
                </div> 
                <!--end help center -->
            </div>
        </div>
        <%@include file="all_component/footer.jsp" %>
    </body>
</html>
