<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Credit Account</title>
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

        form {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: left;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }

        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }

        input[type="submit"] {
            width: 100%;
            background-color: #4A6FA5; /* Light navy blue background for submit button */
            color: white;
            border: none;
            padding: 12px;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #3b5a84; /* Darker light navy blue on hover */
        }

        .back-link {
            display: inline-block;
            margin-top: 20px;
            font-size: 14px;
            color: #4A6FA5; /* Light navy blue for link */
            text-decoration: none;
        }

        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h2>Credit Account</h2>
    <form action="/creditAcc" method="post">
        <label for="accNo">Account Number:</label>
        <input type="text" id="accNo" name="accNo" required>

        <label for="amount">Amount to Credit:</label>
        <input type="number" id="amount" name="amount" required>

        <input type="submit" value="Credit">
    </form>

    <a class="back-link" href="/home">Go back</a>
</body>
</html>
