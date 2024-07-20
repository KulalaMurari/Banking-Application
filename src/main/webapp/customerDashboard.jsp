<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Customer DashBoard</title>

   <link rel="stylesheet" type="text/css" href="CSS/customerDashboard.css">
</head>

<body>


<%
    HttpSession Session = request.getSession(false);
    if (session == null || session.getAttribute("account_no") == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    String accountNo = (String) session.getAttribute("account_no");
    Double currentBalance = (Double) session.getAttribute("current_balance");
    
    com.bank.dao.CustomerDAO customerDAO = new com.bank.dao.CustomerDAO();
    com.bank.model.Customer customer = customerDAO.getCustomer(accountNo);

    if (customer == null) {
        response.sendRedirect("login.jsp");
        return;
    }
    if (currentBalance == null) {
        currentBalance = 0.0; 
    }
    
%>
<div class="dashboard-container">
    <h1>Welcome, <%= customer.getFullName() %></h1>
     <p>Account No: <%= customer.getAccountNo() %></p>
     <p>Current Balance: <%= currentBalance %></p>
     <div class="actions">
    <a href="ViewTransactionsServlet" class="button">View Transactions</a><br>
    <a href="DepositServlet" class="button">Deposit</a><br>
    <a href="WithdrawServlet" class="button">Withdraw</a><br>
    <a href="CloseAccountServlet" class="button">Close Account</a><br>
    <a href="CustomerLogoutServlet" class="logout button">Logout</a>
    </div>
    </div>
</body>
</html>