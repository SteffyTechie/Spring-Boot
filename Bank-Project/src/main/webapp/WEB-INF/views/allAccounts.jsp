<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.Bank.Project.model.Account" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>All Accounts</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 20px;
        }
        table {
            margin: 0 auto;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
            padding: 10px;
        }
        th {
            background-color: #f2f2f2;
        }
        .button-container {
            margin-top: 20px;
        }
        .button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            margin: 10px;
            border: none;
            cursor: pointer;
            font-size: 14px;
            border-radius: 5px;
        }
        .button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h2>All Accounts</h2>
    <table border="1">
        <thead>
            <tr>
                <th>Account Number</th>
                <th>Account Name</th>
                <th>Balance</th>
            </tr>
        </thead>
        <tbody>
            <%
                // Retrieve the accounts list from the request
                List<Account> accounts = (List<Account>) request.getAttribute("accounts");
                if (accounts != null) {
                    for (Account account : accounts) {
            %>
                <tr>
                    <td><%= account.getAccNo() %></td>
                    <td><%= account.getAccName() %></td>
                    <td><%= account.getBalance() %></td>
                </tr>
            <%
                    }
                } else {
            %>
                <tr>
                    <td colspan="3">No accounts found.</td>
                </tr>
            <%
                }
            %>
        </tbody>
    </table>
    <br>
    <a href="/">Go to Home</a> <!-- Link to go back to the home page -->
</body>
</html>

