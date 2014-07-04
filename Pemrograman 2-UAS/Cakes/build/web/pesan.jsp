<%-- 
    Document   : produk
    Created on : Jul 2, 2014, 11:52:15 PM
    Author     : Adlina Putri
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page import="com.mysql.jdbc.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="con">
         <table border = 1>
                    <tr>
                        <th>ID Produk</th>
                        <th>Nama</th>
                        <th>Harga</th>
                    </tr>
                    
            <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/basisdata","root", "");
                Statement st = con.createStatement(); 
                ResultSet rs;
                rs = st.executeQuery("select * from produk");
                while(rs.next()) {
                    String id = rs.getString("id_produk");
                    String nama = rs.getString("nama_produk");
                    Integer hrg = rs.getInt("harga");
                    
                    out.print("<tr>");
                    out.print("<th>"+id+"</th>");
                    out.print("<th>"+nama+"</th>");
                    out.print("<th>"+hrg+"</th>");
                    out.print("</tr>");
            }
            %>
                </table>
                <a href="home.jsp"><input type="submit" name="submit" Value="Exit" ></a>
        </div>
    </body>
</html>
