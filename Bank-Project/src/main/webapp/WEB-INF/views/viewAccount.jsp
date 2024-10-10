<!-- viewAccount.jsp -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.Bank.Project.model.Account" %>
<%@ page import="com.example.Bank.Project.model.Transaction" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Account</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f7fa;
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
            width: 400px;
            text-align: center;
        }
        h2 {
            color: #2c3e50;
            margin-bottom: 20px;
        }
        label {
            display: block;
            font-weight: bold;
            margin-bottom: 8px;
            color: #34495e;
        }
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 16px;
        }
        button {
            background-color: #3b5998;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        button:hover {
            background-color: #34495e;
        }
        .back-link {
            margin-top: 20px;
            display: inline-block;
            color: #3b5998;
            text-decoration: none;
            font-weight: bold;
        }
        .back-link:hover {
            color: #34495e;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Enter Account Number to View Account</h2>

       <form action="/viewAccount" method="post">
            <label for="accNo">Account Number:</label>
            <input type="text" id="accNo" name="accNo" required>
            <button type="submit">View Account</button>
        </form>


        <a class="back-link" href="/home">Go back</a> <!-- Link back to the welcome page -->
    </div>

</body>
</html>
