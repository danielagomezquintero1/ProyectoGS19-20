 <?php
 session_start();

if (isset($_POST['nombreaa']) && $_POST['nombreaa'] && isset($_POST['precioaa']) && $_POST['precioaa']) {

	$nombre = $_POST['nombreaa'];
	$precio = $_POST['precioaa'];
	$descripcion = $_POST['descripcionaa'];
	$imagen = $_FILES['file-inputaa']['tmp_name'];
	$ruta = $_FILES['file-inputaa']['name'];
	move_uploaded_file($imagen,$ruta);
	require "conexion.php";



	$sql = "INSERT INTO tblproductos (nombre, precio, descripcion, imagen) VALUES ('$nombre','$precio','$descripcion', '$ruta')";
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
