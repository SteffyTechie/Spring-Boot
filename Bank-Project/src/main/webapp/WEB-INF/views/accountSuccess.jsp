<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account Success</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 400px;
            width: 100%;
        }

        h2 {
            color: #4A6FA5; /* Light navy blue for heading */
            font-size: 24px;
            margin-bottom: 20px;
        }

        p {
            font-size: 16px;
            margin-bottom: 30px;
            color: #333;
        }

        form {
            margin-top: 20px;
        }

        input[type="submit"] {
            background-color: #4A6FA5; /* Light navy blue background */
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #3b5a84; /* Darker light navy blue on hover */
        }

        .home-link {
            display: inline-block;
            margin-top: 20px;
            color: #4A6FA5; /* Light navy blue for link */
            text-decoration: none;
            font-size: 14px;
        }

        .home-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Success Message -->
        <div class="message success">
            ${message}
        </div>

        <!-- Error Message -->
        <div class="message error">
            ${errorMessage}
        </div>

        <!-- Button to Go Back to Home Page -->
        <form action="/home" method="get">
            <input type="submit" value="Go to Home">
        </form>
    </div>
</body>
</html>
