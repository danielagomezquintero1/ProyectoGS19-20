 <?php
 session_start();

if (isset($_POST['nombrea']) && $_POST['nombrea'] && isset($_POST['contrasenaa']) && $_POST['contrasenaa']) {

	$user = $_POST['nombrea'];
	$email = $_POST['emaila'];
	$contrasena = $_POST['contrasenaa'];
	$imagen = $_FILES['file-input']['tmp_name'];
	$ruta = $_FILES['file-input']['name'];
	move_uploaded_file($imagen,$ruta);
	
	require "conexion.php";



	$sql = "INSERT INTO users (username, password, email, avatar, signup_date) VALUES ('$user','".md5($contrasena)."','$email', '$ruta',now())";
	$result = $conn->query($sql);

	if ($result) {
		
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
