<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Debit Account</title>
</head>
<body>
    <h2>Debit Account</h2>
    <form action="debit" method="post">
        <label for="accNo">Account Number:</label>
        <input type="text" id="accNo" name="accNo" required><br><br>

        <label for="pin">PIN:</label>
        <input type="password" id="pin" name="pin" required><br><br>

        <label for="amount">Amount to Debit:</label>
        <input type="number" id="amount" name="amount" required><br><br>

        <input type="submit" value="Debit">
    </form>
</body>
</html>
