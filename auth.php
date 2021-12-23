<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Авторизация</title>
</head>
<body>

    <?php
        if(isset($_POST['login'])&&isset($_POST['password'])&&isset($_POST['submit'])){
            session_start();
            $login = $_POST['login'];
            $password = $_POST['password'];

            $sql = 'SELECT*FROM users WHERE login="'.$login.'" AND password="'.$password.'"';
            $result= mysqli_query($conn,$sql);
            $user = mysqli_fetch_assoc($result);
            if(!empty($user)) {
                $_SESSION['login'] = $user['login'];
                header("Location: chat.php"); exit();
                
            }else {
                echo 'NO';
            }
        }
    ?>

    <form method="post">
        <p>login:</p>
        <input type="text" name="login" id="login">
        <p>password:</p>
        <input type="password" name="password" id="password">
        <input type="submit" name = "submit" id = "submit" value="Войти">
    </form>
    

</body>
</html>