<%-- 
    Document   : proses
    Created on : Jul 2, 2014, 2:21:29 PM
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
        <div id="con"><h2>Produk Cupcakes</h2>
                <table border = 1>
                    <tr>
                        <th>ID Produk</th>
                        <th>Nama</th>
                        <th>Harga</th>
                        <th>edit</th>
                    </tr>
            <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/basisdata","root", "");
                Statement st = con.createStatement();
                ResultSet rs;
                rs = st.executeQuery("select * from produk");
                while(rs.next()) {
                    Integer id = rs.getInt("id_kategori");
                    String id_prod = rs.getString("id_produk");
                    String nama = rs.getString("nama_produk");
                    Integer hrg = rs.getInt("harga");

                    out.print("<tr>");
                    out.print("<th>"+id_prod+"</th>");
                    out.print("<th>"+nama+"</th>");
                    out.print("<th>"+hrg+"</th>");
                    out.print("<th><a href='hapusproduk.jsp?action=hapus&id="+id+"'><input type='submit' name='submit' Value='Delete'></a><a href='editproduk.jsp?action=edit&id="+id+"&id_prod="+id_prod+"&nama="+nama+"&harga="+hrg+"'><input type='submit' name='submit' Value='Edit'></a></th>");
                    out.print("</tr>");
                }
            %>
            </table>
            <a href="home.jsp"><input type="submit" name="submit" Value="Exit" ></a>
        </div>
    </body>
</html>
