<%-- 
    Document   : home
    Created on : Mar 8, 2022, 10:53:14 PM
    Author     : MeGa
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Home Page - E-Books</title>
    </head>
    <body>
        <h1>Normal User login details </h1><br>
    <c:if test="${not empty userobj}">
        <h1>Name : ${userobj.name}</h1>
    </c:if>
</body>
</html>
