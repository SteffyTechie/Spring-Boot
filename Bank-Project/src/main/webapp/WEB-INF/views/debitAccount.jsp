<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Debit Account</title>
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

        h2 {
            color: #4A6FA5; /* Light navy blue for heading */
            margin-bottom: 20px;
        }

        form {
            background-color: #f9f9f9;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            max-width: 400px;
            width: 100%;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #333;
        }

        input[type="text"], input[type="password"], input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }

        input[type="submit"] {
            background-color: #4A6FA5; /* Light navy blue background for submit button */
            color: white;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #3b5a84; /* Darker light navy blue on hover */
        }

        a.back-link {
            display: block;
            margin-top: 20px;
            color: #4A6FA5; /* Light navy blue for the back link */
            text-decoration: none;
            font-weight: bold;
        }

        a.back-link:hover {
            color: #3b5a84; /* Darker light navy blue on hover */
        }

        @media (max-width: 600px) {
            form {
                width: 90%;
            }
        }
    </style>
</head>
<body>
    <h2>Debit Account</h2>
    <form action="/debitAcc" method="post">
        <label for="accNo">Account Number:</label>
        <input type="text" id="accNo" name="accNo" required>

        <label for="pin">PIN:</label>
        <input type="password" id="pin" name="pin" required>

        <label for="amount">Amount to Debit:</label>
        <input type="number" id="amount" name="amount" required>

        <input type="submit" value="Debit">
    </form>

    <a class="back-link" href="/home">Go back</a>

</body>
</html>
