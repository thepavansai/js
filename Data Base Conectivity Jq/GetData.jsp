<%@page  contentType="text/html"%>
<%@page import="java.sql.*"%>
<%
try{
    //Class.forName("com.mysql.jdbc.Driver");
    out.println("request received");
    String usr="root";
    String pswd="";
    String url="jdbc:mysql://localhost:3306/test";
    Connection c=DriverManager.getConnection(url,usr,pswd);
    Statement stmt=c.createStatement();
    ResultSet rs=stmt.executeQuery("select * from cusdata");
    String data="";
    while(rs.next()){
        data=data+rs.getString("Name")+"<br>";
    }
    out.println(data);
}catch(Exception e){
    out.println(e);

}
%>