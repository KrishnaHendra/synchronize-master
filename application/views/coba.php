<html>
<head>
   <title>Count Down Download dengan JavaScript</title>
   <script type="text/javascript">
    var counter = 5;
    function countDown()
    {
        if(counter>=0)
        {
            document.getElementById("timer").innerHTML = counter;
        }
        else
        {
            download();
            return;
        }
        counter -= 1;

        var counter2 = setTimeout("countDown()",1000);
        return;
    }
    function download()
    {
        document.getElementById("link").innerHTML = "<a href='#'>Download</a>";
    }
   </script>
</head>

<body onload="countDown();" bgcolor="whitesmoke">

<table bgcolor="white">
<tr>
<td>
<h1>FILE DOWNLOAD</h1>
<h3>Link download akan muncul dalam <span id="timer"></span> detik.</h3>

<span id="link"></span>
</td>
</tr>
</table>
</body>
</html>
