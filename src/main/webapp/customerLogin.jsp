<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Customer Login</title>
    
     <link rel="stylesheet" type="text/css" href="CSS/customerLogin.css">
</head>
<body>
<div class="login-container">
    <form action="customerLogin" method="post">
    <h1> MBI BANK</h1>
        <label for="account_no">Account No:</label>
        <input type="text" id="account_no" name="account_no" required><br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br>
        <button type="submit">Login</button>
    </form>
    </div>
</body>
</html>