<%-- 
    Document   : user_address
    Created on : Mar 12, 2022, 1:39:12 AM
    Author     : MeGa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Address Page - EBook</title>
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
                            <h3 class="text-center">Please Complete Address</h3>
                            <form action="" method="post">
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="inputEmail4">Landmark *</label>
                                        <input type="text" name="lankMark" class="form-control" id="inputEmail4" required >
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="inputPassword4">City *</label>
                                        <input type="text" name="city" class="form-control" id="inputPassword4" required >
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="inputEmail4">State *</label>
                                        <input type="text" name="state" class="form-control" id="inputEmail4" required >
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="inputPassword4">Zip Code *</label>
                                        <input type="number" name="zipCode" class="form-control" id="inputPassword4" required >
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-12">
                                        <label for="inputPassword4">Address *</label>
                                        <textarea id="id" name="address" rows="2" class="form-control" required></textarea>
                                    </div>

                                </div>

                                <br>
                                <button type="submit" class="btn btn-primary badge-pill btn-block">Add Address</button>
                            </form>
                        </div>
                    </div>     
                </div> 
            </div>
        </div>
        <%@include file="all_component/footer.jsp" %>
    </body>
</html>
