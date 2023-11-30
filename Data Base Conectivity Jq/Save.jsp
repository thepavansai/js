<%@page contentType="text/html;charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
out.println("Data received");
String name=request.getParameter("Name");
String address=request.getParameter("Address");
String city=request.getParameter("City");
String State=request.getParameter("State");
String ZipCode=request.getParameter("ZipCode");
String Phone=request.getParameter("MobileNo");
String mail=request.getParameter("Email");
String msg = "";
try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
    Statement s = con.createStatement();
    s.executeUpdate("insert into cusdata(Name,Address,City,State,Zip,Phone,Email) values('"+name+"','"+address+"','"+city+"','"+State+"','"+ZipCode+"','"+Phone+"','"+mail+"')");
    out.println("Insertion Success!");
} catch(Exception e) {
    out.println(e);
}
%>
