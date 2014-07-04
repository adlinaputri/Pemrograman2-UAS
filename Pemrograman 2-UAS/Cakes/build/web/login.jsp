<%--
    Document   : login
    Created on : Jul 2, 2014, 1:45:35 PM
    Author     : Adlina Putri
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sweeties Cake</title>
        <style type="text/css">
	*{margin:auto;padding:0;}
	body{font-family:helvetica;background-image:url('bg3.jpg');background-position:center;background-repeat: no-repeat;background-size: 2000px;}
	#con{width:350px;padding:30px;margin-top:30px;border-radius:20px;font-family:magic kiss;font-size:30px;}
	h2{text-align:center;margin-bottom:15px;font-family:anabelle script;font-size:100px;color:#B22222;}
	p{margin-bottom:10px;}
        image{ size:15px;}
	label{display:inline-block;width:100px;}
	input[type=submit]{border:none;color:#fff;background:#FF7F50;height:30px;width:100px;border-radius:5px;font-family:magic kiss;font-size:30px;}
	input[type=submit]:active{background:#A52A2A;font-family:magic kiss;}
        </style>
    </head>
    <body>
        <center>
            <h2>Sweeties Cake</h2>   
            <center><img src='logo.png'></center>

        </center>
        <div id="con">
        <%
    String userid = request.getParameter("username");   
    String pwd = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/basisdata","root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from admin where username='" + userid + "' and password='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("home.jsp");
    } else {
        out.println("<br/><p>Invalid password <a href='index.jsp'>try again</a></p>");
    }
%>
        </div>
    </body>
</html>