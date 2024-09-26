<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>Add Account</title>
</head>
<body>
    <h2>Add Account</h2>
    <form:form method="post" action="add" modelAttribute="account">
        <label>Account Number:</label>
        <form:input path="accNo" /><br>
        <label>Account Name:</label>
        <form:input path="accName" /><br>
        <label>Balance:</label>
        <form:input path="balance" /><br>
        <label>Pin:</label>
        <form:input path="pin" /><br>
        <input type="submit" value="Add Account" />
    </form:form>
</body>
</html>