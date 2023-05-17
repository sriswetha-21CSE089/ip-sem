<%-- 
    Document   : employee
    Created on : 17 May, 2023, 5:56:26 PM
    Author     : Vishnu
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Connection c=DriverManager.getConnection("jdbc:derby://localhost:1527/cse");
            Statement st=c.createStatement();
            ResultSet rs=st.executeQuery("select count(*)  from employee");
            out.println("<table>");
            while(rs.next())
            {
                out.print("<tr><td>"+rs.getInt(1)+"</tr></td>");
            }
            ResultSet rs1=st.executeQuery("select avg(salary)  from employee");
            while(rs1.next())
            {
                out.print("<tr><td>"+rs1.getDouble(1)+"</tr></td>");
            }
            ResultSet rs2=st.executeQuery("select max(salary)  from employee");
            while(rs2.next())
            {
                out.print("<tr><td>"+rs2.getDouble(1)+"</tr></td>");
            }
            out.println("</table>");
            %>
    </body>
</html>
