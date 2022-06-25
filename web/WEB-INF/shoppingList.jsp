<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        <br>
        <label>
            Hello, ${username} 
        <a href ="ShoppingList?action=logout">Logout</a></label>
               
        <h2>List</h2>
        <form action="ShoppingList" method="POST">
            <label>Add Item: </label>
            <input type="text" name="item" value="">
            <input type="submit" value="Add">
            <input type="hidden" name="action" value="add">
        </form>
        
        <c:if test="${not empty itemList}">
        <form action="ShoppingList" method="POST">
            <ul>
            <c:forEach var="itemList" items="${itemList}">
                <li>
                <input type="radio" name="item" value="${itemList}">${itemList}
                </li>
            </c:forEach>
            </ul>
            <br> 
            <input type="submit" value="Delete">
            <input type="hidden" name="action" value="delete">
            
        </form>
        </c:if>    
       
        <label>${error}</label>
    </body>
</html>
