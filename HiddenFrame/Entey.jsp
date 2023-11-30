<%@page contentType="text/html" %>
<%@page pageEncoding="Utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script>
        function wr(txt){
            var x=document.getElementById("dive");
            x.innerHTML=txt;
        }
    </script>
</head>
<body>
    <form method="post" action="Savep.jsp" target="hiddenframe1">
        <p>Name:<input type="text" name="nam"/></p>
        <p>City:<input type="text" name="city"/></p>
        <br><center><input type="submit" value="Submit"/></center>
    </form>
    <div id="dive">

    </div>
</body>
</html>