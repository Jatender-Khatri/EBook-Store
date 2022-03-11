<%-- 
    Document   : setting_page
    Created on : Mar 12, 2022, 1:02:34 AM
    Author     : MeGa
--%>

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
        <%@include file="all_component/navbar.jsp" %>
        <div class="container">
            <h1 class="text-center">Hello, Jatender Khatri</h1>
            <div class="row p-5">
                <!--start sell old book-->
                <div class="col-md-6">
                    <a href="sell_book.jsp">
                        <div class="card crd-ho">
                            <div class="card-body text-center">
                                <div class="text-primary">
                                    <i class="fas fa-book-open fa-3x"></i>
                                </div>
                                <h3>Sell Old Book</h3>
                            </div>
                        </div>
                    </a>
                </div>    
                <!--end sell book-->
                
                <!--start login and security-->
                <div class="col-md-6">
                    <a href="edit_profile.jsp">
                        <div class="card crd-ho">
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
                <!--start location-->
                <div class="col-md-4 mt-3">
                    <a href="user_address.jsp">
                        <div class="card crd-ho">
                            <div class="card-body text-center">
                                <div class="text-warning">
                                    <i class="fas fa-map-marker-alt fa-3x"></i>
                                </div>
                                <h3>Your Address </h3>
                                <p>Edit Address</p>
                            </div>
                        </div>
                    </a>
                </div> 
                <!--end location -->
                <!--start order-->
                <div class="col-md-4 mt-3">
                    <a href="order.jsp">
                        <div class="card crd-ho">
                            <div class="card-body text-center">
                                <div class="text-danger">
                                    <i class="fas fa-box-open fa-3x"></i>
                                </div>
                                <h3>My Order</h3>
                                <p>Track Your Order</p>
                            </div>
                        </div>
                    </a>
                </div> 
                <!--end order -->
                
                <!--start help center-->
                <div class="col-md-4 mt-3">
                    <a href="helpline.jsp">
                        <div class="card crd-ho">
                            <div class="card-body text-center">
                                <div class="text-primary">
                                    <i class="fas fa-user-circle fa-3x"></i>
                                </div>
                                <h3>Help Center</h3>
                                <p>24^7 Service</p>
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
