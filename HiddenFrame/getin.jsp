<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script>
        function requestinfo(){
            var ci=document.getElementById("c").value;
            top.frames["hiddenframee"].location="cusdatare.jsp?c="+ci;
        }
        function dip(te){
            var i=document.getElementById("dispp");
            i.innerHTML=te;
        }
    </script>
</head>
<body>
    <p>Enter city name to retrive:<input type="text" id="c"/></p>
    <p><input type="button" value="Get Details" onclick="requestinfo()"/></p>
    <div id="dispp"></div>
    <iframe src="about:blank" name="hiddenframee" style="display: none;"></iframe>
</body>
</html>