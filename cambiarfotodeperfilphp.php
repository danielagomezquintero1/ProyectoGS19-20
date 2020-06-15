 <?php
 session_start();



	$imagen = $_FILES['file-input']['tmp_name'];
	$ruta = $_FILES['file-input']['name'];
	move_uploaded_file($imagen,$ruta);
	
	require "conexion.php";



	$sql = "UPDATE users SET avatar = '$ruta' WHERE id= '".$_SESSION['id']."'";
	$result = $conn->query($sql);

	if ($result) {
		
	    echo json_encode(array('success' => 1));
	    
	} else {
	    echo json_encode(array('success' => 0));
	}
        $conn->close();
   



?> 
