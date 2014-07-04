<%--
    Document   : home
    Created on : Jul 2, 2014, 1:45:35 PM
    Author     : Adlina Putri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sweeties Cake</title>
        <style type="text/css">
	*{margin:auto;padding:0;}
	body{font-family:helvetica;background-image:url('bg3.jpg');background-position:center;background-repeat: repeat;background-size: 2000px;}
	#con{width:350px;padding:30px;margin-top:30px;border-radius:20px;font-family:magic kiss;font-size:30px;}
	h2{text-align:center;margin-bottom:15px;font-family:anabelle script;font-size:100px;color:#B22222;}
	p{margin-bottom:10px;}
        #menu{display: inline-block;float:left;width:auto;height:auto;}
        #menu ul li image{width:76px;height:85px;}
        #menu ul {margin: 0;list-style: none;line-height: normal;}
        #menu li {border-radius: 20px;text-decoration: none;display: block;float: left;}
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
        if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
        %>
            You are not logged in<br/>
            <a href="index.jsp">Please Login</a>
        <%} else {
        %>
            Welcome <%=session.getAttribute("userid")%>
            <a href='logout.jsp'>Log out</a>
        <%
        }
        %>
        <br><div id = "menu">
            <center>
            <ul>
                <li style="width: 110px; height: 134px;">
                <image style="width: 76px; height: 85px;" src="ck12.png"><a href="kids.jsp">Kids<br></image>
                    </li>
                    <li style="width: 110px; height: 134px;">
                <image style="width: 76px; height: 85px;" src="ck6.png"><a href="teens.jsp">Teens<br></image>
                    </li>
                   <li style="width: 110px; height: 134px;">
                <image style="width: 76px; height: 85px;" src="ck7.png"><a href="weddings.jsp">Weddings<br></image>
                    </li>
                    </ul>
            </center>
        </div>
        <center><a href="tampil.jsp"><image src="c.png">Daftar Produk</a></center>
        </div>

    </body>
</html>
