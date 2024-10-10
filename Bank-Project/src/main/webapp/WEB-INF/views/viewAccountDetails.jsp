<%@ page import="com.example.Bank.Project.model.Account" %>
<%@ page import="com.example.Bank.Project.model.Transaction" %>
<%@ page import="java.util.List" %> <!-- Import the List class -->
<!DOCTYPE html>
<html>
<head>
    <title>Account Details</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            width: 600px;
            text-align: center;
        }
        h2 {
            color: #2c3e50;
            margin-bottom: 20px;
        }
        p {
            color: #34495e;
            font-size: 18px;
            margin: 10px 0;
        }
        .message {
            color: red;
            font-size: 16px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid #34495e;
            padding: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Account Details</h2>

        <p>Account Number: <%= ((Account) request.getAttribute("account")).getAccNo() %></p>
        <p>Account Name: <%= ((Account) request.getAttribute("account")).getAccName() %></p>
        <p>Balance: <%= ((Account) request.getAttribute("account")).getBalance() %></p>

        <h2>Transaction History</h2>
        <table>
            <tr>
                <th>Transaction ID</th>
                <th>Type</th>
                <th>Amount</th>
                <th>Date</th>
            </tr>
            <%
                Account account = (Account) request.getAttribute("account");
                List<Transaction> transactions = account.getTransactions();
                if (transactions != null && !transactions.isEmpty()) {
                    for (Transaction transaction : transactions) {
            %>
                <tr>
                    <td><%= transaction.getId() %></td>
                    <td><%= transaction.getType() %></td>
                    <td><%= transaction.getAmount() %></td>
                    <td><%= transaction.getTransactionDate() %></td>
                </tr>
            <%
                    }
                } else {
            %>
                <tr>
                    <td colspan="4">No transactions available.</td>
                </tr>
            <%
                }
            %>
        </table>

        <form action="/home" method="get">
            <input type="submit" value="Go to Home">
        </form>
    </div>
</body>
</html>
