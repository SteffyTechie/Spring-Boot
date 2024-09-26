<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Credit Account</title>
</head>
<body>
    <h2>Credit Account</h2>
    <form action="credit" method="post">
        <label for="accNo">Account Number:</label>
        <input type="text" id="accNo" name="accNo" required><br><br>

        <label for="amount">Amount to Credit:</label>
        <input type="number" id="amount" name="amount" required><br><br>

        <input type="submit" value="Credit">
    </form>
</body>
</html>
