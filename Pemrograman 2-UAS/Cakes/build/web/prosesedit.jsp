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
    
    String id_produk = request.getParameter("id_produk");
    String id_kategori = request.getParameter("id_kategori");
    String nama_produk = request.getParameter("nama_produk");
    String harga = request.getParameter("harga");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/basisdata","root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("UPDATE `produk` SET `id_produk`='"+id_produk+"',`nama_produk`='"+nama_produk+"',`harga`='"+harga+"' WHERE id_kategori='"+id_kategori+"'");
    if (i > 0) {
        out.print("<div id='con'><h2>Edit Produk</h2>");
        out.print("<center>Data Berhasil di EDIT <a href='tampil.jsp'><input type='submit' name='submit' Value='Lihat Produk' ></a></center>");
        
    } else {
        out.print("GAGAL");
    }
%>

    </body>
</html>