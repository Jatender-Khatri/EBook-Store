<%-- 
    Document   : index
    Created on : Mar 7, 2022, 12:40:13 PM
    Author     : MeGa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page - EBook</title>
        <%@include file="all_component/all_css.jsp" %>
        <style>
            .back-img{
                background: url("img/book3.jpeg");
                height: 57vh;
                width: 100%;
                background-size: cover;
                background-repeat: no-repeat;
            }
            .crd-ho:hover{
                background-color: #fcf7f7;
            }
        </style>
    </head>
    <body style="background-color: #f7f7f7">
        <%@include file="all_component/navbar.jsp" %>
        <div class="container-fluid back-img">
            <h2 class="text-center text-white"><i class="fa-solid fa-book"></i> EBook Management System</h2>
        </div>
        <!--start recent book-->
        <div class="container">
            <h1 class="text-center">Recent Book</h1>
            <div class="row">
                <div class="col-md-3">
                    <div class="card crd-ho">
                        <div class="card-body text-center">
                            <img src="book/javabook.jpg" alt="" style="width: 150px; height: 200px;" class="img-thumblin" />
                            <p>Java Programming</p>
                            <p>Umerkot</p>
                            <p>Programming Category</p>
                            <div class="row">
                                <a href="#" class="btn btn-danger btn-sm ml-1"><i c<i class="fa-solid fa-cart-plus"></i> Add Cart</a>
                                <a href="#" class="btn btn-success btn-sm ml-1">Details</a>
                                <a href="#" class="btn btn-danger btn-sm ml-1">&#8360; 299</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card crd-ho">
                        <div class="card-body text-center">
                            <img src="book/javabook.jpg" alt="" style="width: 150px; height: 200px;" class="img-thumblin" />
                            <p>Java Programming</p>
                            <p>Umerkot</p>
                            <p>Programming Category</p>
                            <div class="row">
                                <a href="#" class="btn btn-danger btn-sm ml-1"><i c<i class="fa-solid fa-cart-plus"></i> Add Cart</a>
                                <a href="#" class="btn btn-success btn-sm ml-1">Details</a>
                                <a href="#" class="btn btn-danger btn-sm ml-1">&#8360; 299</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card crd-ho">
                        <div class="card-body text-center">
                            <img src="book/javabook.jpg" alt="" style="width: 150px; height: 200px;" class="img-thumblin" />
                            <p>Java Programming</p>
                            <p>Umerkot</p>
                            <p>Programming Category</p>
                            <div class="row">
                                <a href="#" class="btn btn-danger btn-sm ml-1"><i c<i class="fa-solid fa-cart-plus"></i> Add Cart</a>
                                <a href="#" class="btn btn-success btn-sm ml-1">Details</a>
                                <a href="#" class="btn btn-danger btn-sm ml-1">&#8360; 299</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card crd-ho">
                        <div class="card-body text-center">
                            <img src="book/javabook.jpg" alt="" style="width: 150px; height: 200px;" class="img-thumblin" />
                            <p>Java Programming</p>
                            <p>Umerkot</p>
                            <p>Programming Category</p>
                            <div class="row">
                                <a href="#" class="btn btn-danger btn-sm ml-1"><i c<i class="fa-solid fa-cart-plus"></i> Add Cart</a>
                                <a href="#" class="btn btn-success btn-sm ml-1">Details</a>
                                <a href="#" class="btn btn-danger btn-sm ml-1">&#8360; 299</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="text-center mt-1">
                <a href="#" class="btn btn-danger btn-sm text-white">View All</a>
            </div>
        </div>
        <!--end recent book-->


        <hr>
        <!--start new book-->
        <div class="container">
            <h1 class="text-center">New Book</h1>
            <div class="row">
                <div class="col-md-3">
                    <div class="card crd-ho">
                        <div class="card-body text-center">
                            <img src="book/javabook.jpg" alt="" style="width: 150px; height: 200px;" class="img-thumblin" />
                            <p>Java Programming</p>
                            <p>Umerkot</p>
                            <p>Programming Category</p>
                            <div class="row">
                                <a href="#" class="btn btn-danger btn-sm ml-1"><i c<i class="fa-solid fa-cart-plus"></i> Add Cart</a>
                                <a href="#" class="btn btn-success btn-sm ml-1">Details</a>
                                <a href="#" class="btn btn-danger btn-sm ml-1">&#8360; 299</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card crd-ho">
                        <div class="card-body text-center">
                            <img src="book/javabook.jpg" alt="" style="width: 150px; height: 200px;" class="img-thumblin" />
                            <p>Java Programming</p>
                            <p>Umerkot</p>
                            <p>Programming Category</p>
                            <div class="row">
                                <a href="#" class="btn btn-danger btn-sm ml-1"><i c<i class="fa-solid fa-cart-plus"></i> Add Cart</a>
                                <a href="#" class="btn btn-success btn-sm ml-1">Details</a>
                                <a href="#" class="btn btn-danger btn-sm ml-1">&#8360; 299</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card crd-ho">
                        <div class="card-body text-center">
                            <img src="book/javabook.jpg" alt="" style="width: 150px; height: 200px;" class="img-thumblin" />
                            <p>Java Programming</p>
                            <p>Umerkot</p>
                            <p>Programming Category</p>
                            <div class="row">
                                <a href="#" class="btn btn-danger btn-sm ml-1"><i c<i class="fa-solid fa-cart-plus"></i> Add Cart</a>
                                <a href="#" class="btn btn-success btn-sm ml-1">Details</a>
                                <a href="#" class="btn btn-danger btn-sm ml-1">&#8360; 299</a>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="text-center mt-1">
                <a href="#" class="btn btn-danger btn-sm text-white">View All</a>
            </div>
        </div>
        <!--end new book-->
        <hr>

        <!--start old book-->
        <div class="container">
            <h1 class="text-center">Old Book</h1>
            <div class="row">
                <div class="col-md-3">
                    <div class="card crd-ho">
                        <div class="card-body text-center">
                            <img src="book/javabook.jpg" alt="" style="width: 150px; height: 200px;" class="img-thumblin" />
                            <p>Java Programming</p>
                            <p>Umerkot</p>
                            <p>Programming Category</p>
                            <div class="row">
                                
                                <a href="#" class="btn btn-success btn-sm ml-5">View Details</a>
                                <a href="#" class="btn btn-danger btn-sm ml-2">&#8360; 299</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card crd-ho">
                        <div class="card-body text-center">
                            <img src="book/javabook.jpg" alt="" style="width: 150px; height: 200px;" class="img-thumblin" />
                            <p>Java Programming</p>
                            <p>Umerkot</p>
                            <p>Programming Category</p>
                            <div class="row">
                                <a href="#" class="btn btn-success btn-sm ml-5">View Details</a>
                                <a href="#" class="btn btn-danger btn-sm ml-2">&#8360; 299</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card crd-ho">
                        <div class="card-body text-center">
                            <img src="book/javabook.jpg" alt="" style="width: 150px; height: 200px;" class="img-thumblin" />
                            <p>Java Programming</p>
                            <p>Umerkot</p>
                            <p>Programming Category</p>
                            <div class="row">
                                <a href="#" class="btn btn-success btn-sm ml-5">View Details</a>
                                <a href="#" class="btn btn-danger btn-sm ml-2">&#8360; 299</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card crd-ho">
                        <div class="card-body text-center">
                            <img src="book/javabook.jpg" alt="" style="width: 150px; height: 200px;" class="img-thumblin" />
                            <p>Java Programming</p>
                            <p>Umerkot</p>
                            <p>Programming Category</p>
                            <div class="row">
                                <a href="#" class="btn btn-success btn-sm ml-5">View Details</a>
                                <a href="#" class="btn btn-danger btn-sm ml-2">299</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="text-center mt-1">
                <a href="#" class="btn btn-danger btn-sm text-white">View All</a>
            </div>
        </div>
        <!--end old book-->
        
        <%@include file="all_component/footer.jsp" %>
    </body>
</html>
