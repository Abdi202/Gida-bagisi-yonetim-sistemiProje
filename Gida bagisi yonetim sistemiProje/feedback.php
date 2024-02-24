<?php
$fname = $_POST["name"];
$email = $_POST["email"];
$message = $_POST["message"];
$conn = mysqli_connect("127.0.0.1", "root", "", "demo") or die("connection failed");
$sql = "INSERT INTO fedback(first_name, email, message) VALUES ('{$fname}','{$email}','{$message}' )";
$result = mysqli_query($conn, $sql) or die("Query Failed!"); 
header("location:http://localhost/Gida%20bagisi%20Yonetim%20sistemi/iletisim.php");
mysqli_close($conn);
?>