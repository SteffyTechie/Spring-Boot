<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Account</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f4f9; /* Light gray background */
            margin: 0;
            padding: 0;
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
            color: #4A6FA5; /* Light navy blue for heading */
            margin-bottom: 20px;
        }

        label {
            display: block;
            text-align: left;
            margin-bottom: 8px;
            font-weight: bold;
            color: #343a40; /* Dark gray for labels */
        }

        .form-control {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
            transition: border-color 0.3s;
        }

        .form-control:focus {
            border-color: #4A6FA5; /* Light navy blue border on focus */
            outline: none;
        }

        input[type="submit"] {
            width: 100%;
            background-color: #4A6FA5; /* Light navy blue background for the button */
            color: white;
            border: none;
            padding: 12px 20px;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #3b5a84; /* Darker light navy blue on hover */
        }

        .back-link {
            margin-top: 20px;
            display: inline-block;
            color: #4A6FA5; /* Light navy blue for the back link */
            text-decoration: none;
            font-weight: bold;
        }

        .back-link:hover {
            color: #3b5a84; /* Darker light navy blue on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Add Account</h2>
        <form:form method="post" action="${pageContext.request.contextPath}/add" modelAttribute="account">
            <label>Account Number:</label>
            <form:input path="accNo" cssClass="form-control" />

            <label>Account Name:</label>
            <form:input path="accName" cssClass="form-control" />

            <label>Balance:</label>
            <form:input path="balance" cssClass="form-control" />

            <label>Pin:</label>
            <form:input path="pin" cssClass="form-control" />

            <input type="submit" value="Add Account" />
        </form:form>
        <a class="back-link" href="/home">Go back</a>
    </div>
</body>
</html>
