<?php
    session_start();
    include 'connect.php';
    $sql = ('SELECT id, login, chat FROM chat ORDER BY id DESC LIMIT 20');
    $result= mysqli_query($conn,$sql);
    while($row = mysqli_fetch_assoc($result)){
        echo '<p>'. $row['login'].':'.$row['chat'].'</p>';
    }
?>