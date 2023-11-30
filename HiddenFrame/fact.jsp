<%@page contentType="text/html" %>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Get CustomerData</title>
    <script>
        window.onload = function(){
            var divinfo = document.getElementById("returni");
            top.frames["displayframe"].dispcusinfo(returni.innerHTML);
        };
    </script>
</head>
<body>
    <%! int fact(int i){
        int f=1;
        
        for(int n=1;n <=i;n++){
            f=f*n;
        }
        return f;
    }
    %>
    <%
        String sid=request.getParameter("cid");
        int id=-1;
        int msg;
        try{
            id=Integer.parseInt(sid);
            msg=fact(id);
        }
        catch(Exception e){
            msg=0;
        }
    %>
    <div id="returni"><%= msg%></div>
</body>
</html>
