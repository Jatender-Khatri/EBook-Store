<%-- 
    Document   : login
    Created on : Feb 28, 2022, 10:42:16 PM
    Author     : MeGa
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page - E-Book</title>
        <%@include file="all_component/all_css.jsp" %>
        <link rel="stylesheet" href="all_components/footer.css"/>
    </head>
    <body style="background-color: #f0f1f2">
        <%@include file="all_component/navbar.jsp" %>
        <div class="container-fluid">
            <div class="row p-5">
                <div class="col-md-4 offset-md-4">
                    <div class="card">
                        <div class="card-body">
                            <div class="text-center">
                                <i class="fa fa-user-plus fa-2x" aria-hidden="true"></i>
                                <h5>Login Here</h5>
                            </div>

                            <form action="login" method="post">
                                <div class="form-group">
                                    <label>Enter Email *</label>
                                    <input type="email" name="email" required class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Enter Password *</label>
                                    <input type="password" name="password" required class="form-control" >
                                </div>
                                <button type="submit" class="btn btn-primary badge-pill btn-block">Login</button>
                                
                            </form>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <%@include file="all_component/footer.jsp" %>
    </body>
</html>
