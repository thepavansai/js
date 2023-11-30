<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Factorial</title>
    <script>
        function requestinfo(){
            var f=document.getElementById("cid").value;
            top.frames["hiddenframe"].location="fact.jsp?cid="+f;
        }
        function dispcusinfo(str){
            var info=document.getElementById("Customerinfo");
            info.innerHTML=str;
        }
    </script>
</head>
<body>
    <p>Enter a number to find Factorial:</p>
    <p>Factorial: <input type="text" id="cid"><br>
    <input type="button" onclick="requestinfo()" value="Click me
    "> </p>
    <div id="Customerinfo"></div>
</body>
</html>