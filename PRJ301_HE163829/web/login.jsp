<%-- 
    Document   : Login
    Created on : Nov 3, 2022, 9:02:53 PM
    Author     : win
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
       
    </head>
    <body>
        <div class="login-page">
            <div class="form">
                <form class="login-form" action="login" method="POST">
                    LOGIN FAP<br/>
                    Unsername: <input type="text" name="username"/> <br/>
                    Password: <input type="password" name="password"/> <br/>
                    <input type="submit" value="Sign In" class="button">
                </form>
            </div>
        </div>
    </body>
</html>
