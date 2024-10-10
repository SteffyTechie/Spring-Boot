<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e3f2fd; /* Light blue background */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        form {
            background-color: #fff; /* White form background */
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            width: 300px; /* Set width for the form */
        }
        input {
            display: block;
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #90caf9; /* Light blue border */
            border-radius: 8px;
            font-size: 16px; /* Increased font size */
        }
        input[type="submit"] {
            background-color: #4A6FA5; /* Light navy blue for submit button */
            color: white;
            border: none;
            cursor: pointer;
            padding: 12px;
            border-radius: 8px;
            transition: background-color 0.3s ease;
            font-size: 16px; /* Increased font size */
        }
        input[type="submit"]:hover {
            background-color: #3b5a84; /* Darker navy blue on hover */
        }
        h1 {
            text-align: center;
            color: #0d47a1; /* Dark blue heading */
            margin-bottom: 20px;
        }
        .error {
            color: #d32f2f; /* Red color for error messages */
            text-align: center;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form action="/login" method="post">
        <h1>Login</h1>
        <input type="text" name="username" placeholder="Username" required />
        <input type="password" name="password" placeholder="Password" required />
        <input type="submit" value="Login" />

        <!-- Display error message if login fails -->
        <c:if test="${not empty error}">
            <p class="error">${error}</p>
        </c:if>
    </form>
</body>
</html>
