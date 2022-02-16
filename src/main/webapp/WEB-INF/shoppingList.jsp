<%-- 
    Document   : shoppingList
    Created on : 2022. 2. 15., 오후 7:29:04
    Author     : USER
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        
        <!--<p><strong>Hello, ${name}. <a href="">Logout</a></strong></p> -->
        <p><strong>Hello, ${name}. <a href="ShoppingList?logout">Logout</a></strong></p>

        <!-- <a href="login?logout">Log out</a> -->
        
        <h2>List</h2>
        
        <!--<form action="ShoppingList?action=add" method="post"> -->
        <form action="ShoppingList" method="post">
            <input type="hidden" name="action" value="add">
            
            <label for="item">Add Item:</label>
            <input type="text" name="item" id="item">

            <button type="submit">Add</button>
        </form>
        
        <form action="ShoppingList" method="post">
            <input type="hidden" name="action" value="delete">
            
            <c:forEach items="${items}" var="item">
                <p>
                    <input type="radio" name="item" value="${item}">
                    ${item}
                </p>
            </c:forEach>

            <button type="submit">Delete</button>
        </form>
    </body>
</html>
