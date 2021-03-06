<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login - ReadStack</title>
    <%@ include file="../segments/stylesheets.jspf"%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/forms.css">
</head>
<body>
<div class="container">
    <%@ include file="../segments/header.jspf"%>

    <form action="j_security_check" method="post" class="user-form">
        <h2 class="user-form-title">Login on ReadStack</h2>
        <input name="j_username" placeholder="Username" required>
        <input name="j_password" placeholder="Password" type="password" required>
        <button class="user-form-button">Login</button>
        <p>Don't have an account yet?<a href="${pageContext.request.contextPath}/signup">Sign up!</a> </p>
    </form>
    
    <%@ include file="../segments/footer.jspf"%>
</div>
</body>
</html>