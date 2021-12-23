<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
        <script type="text/javascript">
            
            function send() {
                var message = document.getElementById("text").value;
                const request = new XMLHttpRequest();
                const url = "add.php?text="+message;
                request.open("GET", url, true);
                request.send();
            }
            function show(){
                const request = new XMLHttpRequest();
                const url = "output.php";
                request.open("GET", url, true);
                request.send();
                request.onreadystatechange=function(){
                    if(request.readyState==4){
                        if(request.status == 200){
                            document.getElementById('message').innerHTML=request.responseText;
                        }
                    }
                    
                }
                
            }
            setInterval(show(), 1000);
            
        </script>
    <div class="container">
        <div class="message" id = "message">

        </div>
        <div class="input-message">
            <form>
                <input type="text" name="text" id="text">
                
                <input type="button" name="submit" id="submit" onclick = "send()" value="Отправить">
            </form>
        </div>

        
    </div>
    
</body>
</html>