<%--
    Document   : reg
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
	#con{width:350px;padding:30px;margin-top:30px;border-radius:20px;font-family:magic kiss;font-size:30px;background-image:url('logo2.png');background-repeat: no-repeat;}
	h2{text-align:center;font-family:katy berry;font-size:70px;color:#20B2AA;margin-bottom:50px;margin-top: 30px;}
	p{margin-bottom:10px;}
        image{ size:15px;}
	label{display:inline-block;width:100px;}
	input[type=submit]{border:none;color:#fff;background:#FF7F50;height:30px;width:100px;border-radius:5px;font-family:magic kiss;font-size:30px;}
	input[type=submit]:active{background:#A52A2A;font-family:magic kiss;}
        </style>
    </head>
    <body>
        <div id="con">
	<h2>Register Area</h2>
	<form action="register.jsp" method="post">
	<p>
		<label>Nama</label>
		<input type="text" name="nama"/>
	</p>
	<p>
		<label>Jenis Kelamin</label>
		<input type="radio" name="jk" value="Laki-laki" checked/> Laki-laki
		<input type="radio" name="jk" value="Perempuan"/> Perempuan
	</p>
	<p>
		<label>Lahir</label>
		<select name="lhari">
		<%
                    for(int a=1;a<=31;a++){
		%>
                <option><% out.println(a); %></option>
		<% 
                    }
		%>
		</select>
		<select name="lbulan">
		<%
                    for(int a=1;a<=12;a++){
		%>
			<option><% out.println(a); %></option>
		<% 
                    }
		%>
		</select>
		<select name="ltahun">
		<%
                    for(int a=1980;a<=2014;a++){
		%>
			<option><% out.println(a); %></option>
		<% 
                    }
		%>
		</select>
	</p>
	<p>
		<label>Alamat</label>
		<input type="text" name="alamat"/>
	</p>
	<p>
		<label>Email</label>
		<input type="text" name="email"/>
	</p>
	<p>
		<label>Phone</label>
                <input type="text" name="phone"/>
	</p>
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
		<input type="submit" name="submit" Value="Create"/>
                <input type="submit" name="submit" Value="Exit">
	</p>
	</form>
</div>
    </body>
</html>