<%@page contentType="text/html"%>
<%@page pageEncoding="UTf-8"%>
<%@page import="java.io.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<script>
    window.onload=function(){
        var d=document.getElementById("divin");
        parent.dip(d.innerHTML);
    };
</script>
<body>
    <%!
        String gdata(){
            File f= new File("T:\\ex.txt");
            try(BufferedReader br=new BufferedReader(new FileReader(f))){
                String line,line1="";
                while((line=br.readLine())!=null){
                    line1+=line;
                }
                return line1;
            }catch(Exception e){
                e.printStackTrace();
                return "error";
            }
        }
    %>
    <%
        String sid=request.getParameter("c");
        String msg="";
        try{
            msg=gdata();
        }
        catch(Exception e){
            msg="Not Found";
        }
    %>
    <div id="divin"><%=msg%></div>
</body>
</html>