<!DOCTYPE html>
<html>
<head>
    <title>Bank Account Form</title>
</head>
<body>
    <h1>Create Bank Account</h1>
    <form action="/account/save" method="post">
        <label for="accountName">Account Name:</label>
        <input type="text" id="accountName" name="accountName" required><br><br>

        <label for="balance">Balance:</label>
        <input type="number" id="balance" name="balance" required><br><br>

        <label for="pin">PIN:</label>
        <input type="password" id="pin" name="pin" required><br><br>

        <button type="submit">Save Account</button>
    </form>
</body>
</html>
