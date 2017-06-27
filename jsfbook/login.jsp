<html>
  <head>
    <title>Login</title>
    <link rel="stylesheet" type="text/css" 
      href="${pageContext.request.contextPath}/style.css">
  </head>
  <body bgcolor="white">
    <div class="title">Please Login</div>
    <p>
      The page you requested is only available to registered users.
      Please enter your username and password and click Login.
    </p>
    <form action="j_security_check" method="post">
      <table class="tablebg">
        <tr>
          <td align="right">Username:</td>
          <td><input name="j_username"></td>
        </tr>
        <tr>
          <td align="right">Password:</td>
          <td>
            <input type="password" name="j_password">
          </td>
        </tr>
      </table>
      <input type="submit" value="Login">
    </form>
  </body>
</html>
