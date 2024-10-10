<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.Bank.Project.model.Account" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Accounts</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f9fc;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            height: 100vh;
        }

        h2 {
            color: #4A6FA5; /* Light navy blue for heading */
            margin-bottom: 20px;
        }

        table {
            width: 80%;
            max-width: 800px;
            margin: 0 auto;
            border-collapse: collapse;
            background-color: white;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: center;
        }

        th {
            background-color: #f2f2f2;
            font-weight: bold;
        }

        td {
            background-color: #fff;
        }

        tr:nth-child(even) td {
            background-color: #f9f9f9;
        }

        .button-container {
            margin-top: 20px;
        }

        .button {
            background-color: #4A6FA5; /* Light navy blue for button */
            color: white;
            padding: 10px 20px;
            margin: 10px;
            border: none;
            cursor: pointer;
            font-size: 14px;
            border-radius: 5px;
        }

        .button:hover {
            background-color: #3b5a84; /* Darker navy blue on hover */
        }

        .home-link {
            display: inline-block;
            margin-top: 20px;
            font-size: 14px;
            color: #4A6FA5; /* Light navy blue for home link */
            text-decoration: none;
        }

        .home-link:hover {
            color: #3b5a84; /* Darker navy blue on hover */
            text-decoration: underline;
        }

        @media (max-width: 768px) {
            table {
                width: 100%;
            }

            th, td {
                padding: 10px;
            }
        }
    </style>
</head>
<body>
    <h2>All Accounts</h2>
    <table>
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
                if (accounts != null && !accounts.isEmpty()) {
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

    <a href="/home" class="home-link">Go to Home</a>
</body>
</html>
