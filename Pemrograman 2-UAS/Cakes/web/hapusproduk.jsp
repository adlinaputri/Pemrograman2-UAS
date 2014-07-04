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
    <head><script language="JavaScript">
    function berhasil() {
        alert("berhasil di hapus!!!");
    }
    
</script>
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
    String id = request.getParameter("id");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/basisdata","root", "");
    Statement st = con.createStatement();

    int i = st.executeUpdate("DELETE FROM `produk` WHERE id_kategori='"+id+"'");
    if (i > 0) {
        out.write("<script type='text/javascript'>\n");
        out.write("alert(' Berhasil dihapus!!! ');\n");
        out.write("setTimeout(function(){window.location.href='tampil.jsp'},1000);");
        out.write("</script>\n");
    } else {
        out.print("GAGAL");
    }
%>

    </body>
</html>
