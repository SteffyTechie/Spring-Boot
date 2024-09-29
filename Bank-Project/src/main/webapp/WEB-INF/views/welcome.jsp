<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to the Bank Application</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f7f9fc;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }
        h1 {
            color: #4CAF50;
            margin-bottom: 20px;
        }
        p {
            font-size: 18px;
            margin-bottom: 30px;
            color: #333;
        }
        .button-container {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        form {
            margin: 10px 0;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        @media (max-width: 600px) {
            input[type="submit"] {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <h1>Welcome to the Banking Application!</h1>
    <p>Please choose one of the following options:</p>

    <div class="button-container">
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
    </div>
</body>
</html>
