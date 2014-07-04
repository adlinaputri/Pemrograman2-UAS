<%--
    Document   : register
    Created on : Jul 2, 2014, 1:45:35 PM
    Author     : Adlina Putri
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    String nama = request.getParameter("nama");
    String jk = request.getParameter("jk");
    String tgl1 = request.getParameter("ltahun");
    String tgl2 = request.getParameter("lbulan");
    String tgl3 = request.getParameter("lhari");
    String alamat = request.getParameter("alamat");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/basisdata","root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into admin(nama,jk,tgl,alamat,email,phone,username,password) values ('"+nama+"','"+jk+"','"+tgl1+"-"+tgl2+"-"+tgl3+"','"+alamat+"','"+email+"','"+phone+"','"+username+"','"+password+"')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("thank.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>
