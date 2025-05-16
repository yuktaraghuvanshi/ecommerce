<%-- 
    Document   : Signup
    Created on : 16-May-2025, 12:37:21 pm
    Author     : yukta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form  action="Signuplogic.jsp" method="post">
    <table>
        <tr>
            <td><b>Register Account</b></td>
        </tr>
    </table>

    <table >
        <tr>
        <td>First Name</td><!-- comment -->
        <td><input type="text" name="customer_name" placeholder="enter  name here"></td>
        </tr>
         <tr>
        <td>Last Name</td><!-- comment -->
        <td><input type="text" name="customer_lastname" placeholder="enter  name here"></td>
        </tr> <tr>
        
    </table>
            <button>submit</button>
        </form>
    </body>
</html>
