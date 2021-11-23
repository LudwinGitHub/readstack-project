<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login on ReadStack</title>
    <%@ include file="../segments/stylesheets.jspf"%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/form.css">
</head>
<body>
  <div class="container">
    <%@ include file="../segments/header.jspf"%>>

    <form action="#" method="post" class="user-form">
      <h2 class="user-form-title">Register on ReadStack</h2>
      <input name="username" placeholder="Username" required>
      <input name="email" placeholder="John@email.com" type="email" required>
      <input name="password" placeholder="password" type="password" required>
      <button class="user-form-button">Register!</button>
    </form>
    <%@ include file="../segments/footer.jspf"%>
  </div>
</body>
</html>