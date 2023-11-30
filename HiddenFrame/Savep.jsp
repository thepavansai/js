<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%@page import="java.io.BufferReader.*"%>
<%@page import="java.io.FileWriter.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create New Customer </title>
    <% 
    String n=request.getParameter("nam");
    String c=request.getParameter("city");
    String m="";
    try{
        FileWriter w= new FileWriter("T://ex.txt",true);
        BufferedWriter bf=new BufferedWriter(w);
        bf.append(n+c);
        bf.close();
        m="Success";
    }
    catch(Exception e){
        m="Error"+e;
    }
    %>
    <script>
        window.onload=function(){
            top.frames["dispframe"].wr("<%=m%>");
        }
    </script>
</head>

<body>
   

</body>
</html>