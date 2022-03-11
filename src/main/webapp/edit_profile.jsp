<%-- 
    Document   : edit_profile
    Created on : Mar 12, 2022, 1:31:11 AM
    Author     : MeGa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Profile Page - EBook</title>
        <%@include file="all_component/all_css.jsp" %>
    </head>
    <body style="background-color: #f0f1f2">
        <%@include file="all_component/navbar.jsp" %>
        
        <h3 class="text-center">Hello, Jatender Khatri</h3>
        <div class="container mt-3">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <div class="card">
                        <div class="card-body">
                            <h3 class="text-center">Edit Profile</h3>
                            <form action="" method="post">
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
                                
                                <br>
                                <button type="submit" class="btn btn-primary badge-pill btn-block">Edit Profile</button>
                            </form>
                        </div>
                    </div>     
                </div> 
            </div>
        </div>
        <%@include file="all_component/footer.jsp" %>
    </body>
</html>
