<%--
    Document   : weddings
    Created on : Jul 2, 2014, 1:45:35 PM
    Author     : Adlina Putri
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Wddings Cupcakes</title>
        <style type="text/css">
	*{margin:auto;padding:0;}
	body{font-family:helvetica;background-image:url('bg3.jpg');background-position:center;background-repeat: no-repeat;background-size: 2000px;}
	#con{width:350px;padding:30px;margin-top:30px;border-radius:20px;font-family:magic kiss;font-size:30px;background-image:url('logo2.png');background-repeat: no-repeat;}
	h2{text-align:center;font-family:katy berry;font-size:70px;color:#20B2AA;margin-bottom:50px;margin-top: 30px;}
	p{margin-bottom:10px;}
        image{ size:15px;}
        button{border:none;color:#fff;background:#FF7F50;height:30px;width:100px;border-radius:5px;font-family:magic kiss;font-size:30px;}
	label{display:inline-block;width:100px;}
	input[type=submit]{border:none;color:#fff;background:#FF7F50;height:30px;width:100px;border-radius:5px;font-family:magic kiss;font-size:30px;}
	input[type=submit]:active{background:#A52A2A;font-family:magic kiss;}
        </style>
    </head>
    <body>
        <div id="con"><h2>Daftar Produk</h2>
            <form action="proses.jsp" method="post">
            <p>
                    <label>ID Produk</label>
                    <input type="text" name="id_produk"/>
            </p>
            <p>
                    <label>Nama</label>
                    <input type="text" name="nama_produk"/>
            </p>
            <p>
                    <label>Harga</label>
                    <input type="text" name="harga"/>
            </p>
                    <input type="submit" name="submit" Value="Add"/>
   
            </form> 
                <a href="home.jsp"><input type="submit" name="submit" Value="Exit" ></a>
        </div>
    </body>
</html>
