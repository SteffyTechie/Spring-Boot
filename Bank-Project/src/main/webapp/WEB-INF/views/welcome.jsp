<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #e9eff1;
            height: 100vh; /* Full height of the viewport */
            display: flex;
            flex-direction: column;
            justify-content: flex-start; /* Align items at the top */
        }
        header {
            background-color: #4A6FA5; /* Light navy blue */
            color: white;
            padding: 10px;
            text-align: center;
            font-size: 24px;
            letter-spacing: 1px;
            position: relative;
            width: 100%;
            display: flex;
            justify-content: center; /* Center the Banking Application text */
            align-items: center;
        }
        .top-buttons {
            position: absolute;
            top: 10px;
            right: 20px;
            display: flex;
            gap: 10px;
        }
        .top-buttons a {
            padding: 5px 10px;
            background-color: #4A6FA5; /* Light navy blue */
            color: white;
            border: none;
            border-radius: 4px;
            font-weight: bold;
            text-align: center;
            text-decoration: none;
            font-size: 14px; /* Smaller font size */
            transition: background-color 0.3s ease;
        }
        .top-buttons a:hover {
            background-color: #3b5a84; /* Slightly darker light navy blue on hover */
        }
        .welcome-footer {
            width: 100%;
            text-align: center;
            margin: 15px 0; /* Adds spacing between header and content */
            font-size: 20px;
            color: #4A6FA5;
        }
        .container {
            background-color: #ffffff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            padding: 20px;
            width: 80vw;
            max-width: 1000px;
            text-align: center;
            margin: auto; /* Center the container */
        }
        ul {
            list-style-type: none;
            padding: 0;
            text-align: center;
            width: 100%;
        }
        ul li {
            margin: 15px 0;
        }
        ul li a {
            text-decoration: none;
            color: #4A6FA5; /* Light navy blue for text */
            background-color: #f5f5f5;
            padding: 10px 20px;
            border-radius: 4px;
            font-weight: bold;
            transition: all 0.3s ease;
            display: inline-block;
            width: 100%;
            text-align: center;
        }
        ul li a:hover {
            color: white;
            background-color: #4A6FA5; /* Light navy blue on hover */
        }
    </style>
</head>
<body>
    <!-- Header section -->
    <header>
        <span>Banking Application</span>
        <div class="top-buttons">
            <a href="/viewAccountForm">View Account</a>
            <a href="/logout">Logout</a>
        </div>
    </header>

    <!-- Welcome message placed below the header -->
    <div class="welcome-footer">
        Welcome, ${username} <!-- Dynamic username display here -->
    </div>

    <!-- Main content area -->
    <div class="container">
        <ul>
            <li><a href="/add">Add Account</a></li>
            <li><a href="/credit">Credit Amount</a></li>
            <li><a href="/debit">Debit Amount</a></li>
            <li><a href="/all">View All Accounts</a></li>
        </ul>
    </div>
</body>
</html>
