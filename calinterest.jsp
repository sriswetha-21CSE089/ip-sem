<%-- 
    Document   : calinterest
    Created on : 17 May, 2023, 5:31:22 PM
    Author     : Vishnu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int p=Integer.parseInt(request.getParameter("t1"));
            int n=Integer.parseInt(request.getParameter("t2"));
            int r=Integer.parseInt(request.getParameter("t3"));
            int si=(p*n*r)/100;
            out.println(si);
            %>
    </body>
</html>
