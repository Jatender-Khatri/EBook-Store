<%-- 
    Document   : add_books
    Created on : Mar 9, 2022, 12:12:25 AM
    Author     : MeGa
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Book Page - E-Book</title>
        <%@include file="all_css.jsp" %>
    </head>
    <body style="background-color: #f0f1f2">
        <%@include file="navbar.jsp" %>
        <c:if test="${empty userobj}">
            <c:redirect url="../login.jsp" />
        </c:if>
        <h3 class="text-center">Hello, Admin</h3>
        <div class="container mt-3">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <div class="card">
                        <div class="card-body">
                            <h3 class="text-center">Add Books</h3>
                            <form action="../add_book" method="post" enctype="multipart/form-data">
                                <div class="form-group">
                                    <label>Book Name *</label>
                                    <input type="text" name="bookName" class="form-control" aria-describedby="emailHelp" required>
                                </div>

                                <div class="form-group">
                                    <label>Author Name *</label>
                                    <input type="text" name="authorName" class="form-control" aria-describedby="emailHelp" required>
                                </div>

                                <div class="form-group">
                                    <label>Book Price *</label>
                                    <input type="number" name="bookPrice" class="form-control" aria-describedby="emailHelp" required>
                                </div>
                                <div class="form-group">
                                    <label>Book Category *</label>
                                    <select id="category" class="form-control" name="bCategory" required>
                                        <option selected disabled>--- Select ---</option>
                                        <option value="New">New Book</option>                                      
                                    </select>

                                </div>
                                <div class="form-group">
                                    <label>Book Status *</label>
                                    <select id="status" class="form-control" name="bStatus" required>
                                        <option selected disabled>--- Select ---</option>
                                        <option value="Active">Active</option>  
                                        <option value="Inactive">Inactive</option>  
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Upload Image</label>
                                    <input type="file" name="bImage" class="form-control" required>
                                </div>
                                <button type="submit" class="btn btn-primary badge-pill btn-block">Add Book</button>
                            </form>
                        </div>
                    </div>    
                </div>   
            </div>
        </div>
        <div style="margin-top: 20px;">
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
