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
        <title>Sell Book Page - E-Book</title>
        <%@include file="all_component/all_css.jsp" %>
    </head>
    <body style="background-color: #f0f1f2">
        <c:if test="${empty userobj}">
            <c:redirect url="login.jsp" />
        </c:if>

        <%@include file="all_component/navbar.jsp" %>

        <c:if test="${not empty userobj}">
            <h1 class="text-center">Hello, ${userobj.name}</h1>
        </c:if>
        <div class="container mt-3">
            <div class="row">
                <div class="col-md-6 offset-md-3">
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
                            <h3 class="text-center">Sell Old Book</h3>
                            <form action="sell_old_book" method="post" enctype="multipart/form-data">
                                <input type="hidden" value="${userobj.email}" name="user">
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
                                    <label>Upload Image</label>
                                    <input type="file" name="bImage" class="form-control" required>
                                </div>
                                <button type="submit" class="btn btn-primary badge-pill btn-block">Sell Book</button>
                            </form>
                        </div>
                    </div>    
                </div>   
            </div>
        </div>
        <div style="margin-top: 20px;">
            <%@include file="all_component/footer.jsp" %>
        </div>
    </body>
</html>
