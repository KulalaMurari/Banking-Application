<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Withdraw</title>
    <link rel="stylesheet" type="text/css" href="CSS/withdraw.css">
</head>
<body>
<div class="container">
    <h1>Withdraw Amount</h1>
    <form action="WithdrawServlet" method="post">
        <label for="amount">Amount:</label>
        <input type="text" id="amount" name="initial_balance" required>
        <br><br>
        <button type="submit"  >Withdraw</button>
    </form>
    <a href="customerDashboard.jsp" class="back-link">Back to Dashboard</a>
    </div>
</body>
</html>