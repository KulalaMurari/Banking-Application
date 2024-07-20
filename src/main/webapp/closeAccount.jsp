<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>Close Account</title>
    <link rel="stylesheet" type="text/css" href="CSS/closeAccount.css">
</head>
<body>
<div class="container">
    <h1>Close Account</h1>
    <form action="CloseAccountServlet" method="post">
        <p>Are you sure you want to close your account?</p>
        <button type="submit" >Yes, close my account"</button>
    </form>
    <br>
    <form action="customerDashboard.jsp" method="get">
        <button type="submit" >No, take me back</button>
    </form>
</div>
</body>
</html>