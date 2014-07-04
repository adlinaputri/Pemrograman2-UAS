<%--
    Document   : logout
    Created on : Jul 2, 2014, 1:45:35 PM
    Author     : Adlina Putri
--%>

<%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("index.jsp");
%>
