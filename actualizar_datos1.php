 <?php
 session_start();

 if (isset($_POST['idpersonau1']) && isset($_POST['nombreu1']) && $_POST['nombreu1']) {
 	$id = $_POST['idpersonau1'];
 	$user = $_POST['nombreu1'];


require "conexion.php";

	$sql = "UPDATE users SET username='$user' WHERE id='$id'";
	$result = $conn->query($sql);


 	if ($result) {
 		sleep(3);

 		echo json_encode(array('success' => 1));

 	} else {
 		echo json_encode(array('success' => 0));
 	}
 	$conn->close();

 } 
 else {
 	echo json_encode(array('success' => 0));
 }


 ?> 
