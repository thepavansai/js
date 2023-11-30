<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <title>Registration</title>
</head>
<body style="background-color: black;color: aliceblue;">
   <form method="post">
    <center>
        <h1>Customer Details Entry Page</h1>
        Name:<input type="text" name="nam" id="nam"><br><br>
        Adress:<input type="text" name="ad" id="ad"><br><br>
        City:<input type="text" id="city" name="city"><br><br>
        State:<input type="text" id="st" name="st"><br><br>
        Zip Code:<input type="text" id="zip" name="zip"><br><br>
        Mobile No:<input type="text" id="phn" name="ph"><br><br>
        Email Id:<input type="email" id="mail" name="mail"><br><br>
        <input type="button" value="Submit" id="sdata">
    </center>
   </form>
   <script>
    $(document).ready(function(){
        $("#sdata").click(function(){
        $("p").text("Button Pressed");
        $.post("Save.jsp",{
            Name:$("#nam").val(),Address:$("#ad").val(),City:$("#city").val(),
            State:$("#st").val(),
            ZipCode:$("#zip").val(),
            MobileNo:$("#phn").val(),
            Email:$("#mail").val()
        },
        function(data,status){
            alert("Data: "+ data+"\nStatus  "+status);
        });
        });
    });
   </script>
</body>
</html>