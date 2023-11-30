<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        $(document).ready(function(){
            $("button").click(function(){
                $.get("GetData.jsp",function(data,status){
                    alert(status);
                    $("div").html(data);
                })
            })
        })
    </script>
</head>
<body>
    <div></div>
    <button id="b1">Get</button>
</body>
</html>