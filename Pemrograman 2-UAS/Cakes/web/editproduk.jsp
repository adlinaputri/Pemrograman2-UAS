<%-- 
    Document   : editproduk.jsp
    Created on : Jul 3, 2014, 2:50:03 PM
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
	#con{width:350px;padding:30px;margin-top:30px;border-radius:20px;font-family:magic kiss;font-size:30px;background-image:url('logo2.png');background-repeat: no-repeat;}
	h2{text-align:center;font-family:katy berry;font-size:70px;color:#20B2AA;margin-bottom:50px;margin-top: 30px;}
	p{margin-bottom:10px;}
        table{font-size: 30px;}
        image{ size:15px;}
        button{border:none;color:#fff;background:#FF7F50;height:30px;width:100px;border-radius:5px;font-family:magic kiss;font-size:30px;}
	label{display:inline-block;width:100px;}
	input[type=submit]{border:none;color:#fff;background:#FF7F50;height:30px;width:100px;border-radius:5px;font-family:magic kiss;font-size:30px;}
	input[type=submit]:active{background:#A52A2A;font-family:magic kiss;}
        </style>
    </head>
    <body>

<%
    String id     = request.getParameter("id");
    String idprod = request.getParameter("id_prod");
    String nama   = request.getParameter("nama");
    String hrg    = request.getParameter("harga");

    out.print("<div id='con'><h2>Edit Produk</h2>");
    out.print("<form action='prosesedit.jsp' method='post'>");
    out.print("<p>");
    out.print("<label>ID Produk</label>");
    out.print("<input type='hidden' name='id_kategori' value="+id+">");
    out.print("<input type='text' name='id_produk' value="+idprod+">");
    out.print("</p>");
    out.print("<p>");
    out.print("<label>Nama</label>");
    out.print("<input type='text' name='nama_produk' value='"+nama+"'>");
    out.print("</p>");
    out.print("<p>");
    out.print("<label>Harga</label>");
    out.print("<input type='text' name='harga' value='"+hrg+"'>");
    out.print("</p>");
    out.print("<input type='submit' name='submit' Value='Add'/>");
    out.print("</form>");
    out.print("</div>");    
    out.print("<center><a href='home.jsp'><input type='submit' name='submit' Value='Exit' ></a></center>");
%>

    </body>
</html>
