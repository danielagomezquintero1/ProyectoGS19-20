 <?php
 session_start();

 if (isset($_POST['idpersonau']) && isset($_POST['nombreu']) && $_POST['nombreu']) {
 	$id = $_POST['idpersonau'];
 	$user = $_POST['nombreu'];


require "conexion.php";

	$sql = "UPDATE tblproductos SET Nombre='$user' WHERE id='$id'";
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
