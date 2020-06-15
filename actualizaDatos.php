
<?php
require "conexion.php";
$id=$_POST['id'];
$username=$_POST['username'];
 	



 	$sql = "UPDATE users SET username='$username' WHERE id='$id'";
 	$result = $conn->query($sql);
 	echo $result;