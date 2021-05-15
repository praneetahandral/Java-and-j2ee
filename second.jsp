<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
</head>
<body>
    <% string name=request.getParameter("user");
       string pass=request.getParameter("pass"); %>  
    <% if(name.equals("xyz") && pass.equals("*12!"))
        {
           out.println("WELCOME,SUCESSFUL LOGIN");
        }
        else
        {
            out.println("INVALID USERNAME AND PASSWORD");
        }%>   
</body>
</html>