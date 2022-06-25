<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        <form action="ShoppingList" method="POST">
            <label>Username: </label>
        <input type="text" name="username" value=${username}>
        <input type="submit" value="Register name">
        <input type="hidden" name="action" value="register">
            
        </form>
            
        </body>
</html>
