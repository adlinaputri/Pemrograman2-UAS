<%--
    Document   : index
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
	body{font-family:helvetica;background-image:url('bg3.jpg');background-position:center;background-repeat: no-repeat;background-size: 2000px;}
	#con{width:350px;padding:30px;margin-top:30px;border-radius:20px;font-family:magic kiss;font-size:30px;}
	h2{text-align:center;margin-bottom:15px;font-family:anabelle script;font-size:100px;color:#B22222;}
	p{margin-bottom:10px;}
        image{ size:15px;}
	label{display:inline-block;width:100px;}
	input[type=submit]{border:none;color:#fff;background:#FF7F50;height:30px;width:100px;border-radius:5px;font-family:magic kiss;font-size:30px;}
	input[type=submit]:active{background-color: #A52A2A;font-family:s;}
        </style>
    </head>
    <body>
        <center>
            <h2>Sweeties Cake</h2>   
            <center><img src='logo.png'></center>
        </center>
        <div id="con">
	<form action="login.jsp" method="post">
	<p>
		<label>Username</label>
		<input type="text" name="username"/>
	</p>
	<p>
		<label>Password</label>
		<input type="password" name="password"/>
	</p>
	<p>
		<label></label>
		<input type="submit" name="submit" Value="Masuk"/>
                <a href="reg.jsp">Sign Up</a>
	</p>
	</form>
        </div>
    </body>
</html>