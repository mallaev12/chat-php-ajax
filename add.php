<?php
session_start();
include 'connect.php';
if(isset($_GET['text'])){
    $login = $_SESSION['login'];
    $text = $_GET['text'];
    $sql = "INSERT INTO chat (login, chat) VALUES ('$login', '$text')";
    $result= mysqli_query($conn,$sql);
    //header("Location: chat.php"); exit();
}
