<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome to the Bank Application</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 50px;
            background-color: #f2f2f2;
        }
        h1 {
            color: #333;
        }
        form {
            margin: 20px 0;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h1>Welcome to the Banking Application!</h1>
    <p>Please choose one of the following options:</p>

    <form action="add" method="get">
        <input type="submit" value="Add Account">
    </form>

    <form action="debit" method="get">
        <input type="submit" value="Debit Amount">
    </form>

    <form action="credit" method="get">
        <input type="submit" value="Credit Amount">
    </form>

    <form action="all" method="get">
        <input type="submit" value="View All Accounts">
    </form>
</body>
</html>
