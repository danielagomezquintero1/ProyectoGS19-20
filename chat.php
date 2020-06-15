 <?php
 session_start();

 if (isset($_POST['texto']) && $_POST['texto']) {

 	$texto = $_POST['texto'];
 	$user = $_SESSION['user'];
 	require "conexion.php";


 	$sql1 = "INSERT INTO chat(nombre,texto) VALUES ('$user','$texto')";
 	$conn->query($sql1);
 	$sql = "SELECT * FROM chat";
 	$result = $conn->query($sql);

 	if ($result->num_rows > 0) {
 		while($row = $result->fetch_assoc()) {
 						echo "<fieldset class='border p-2'><span style='color:blue'><small>".$row["nombre"]. "</small></span> <br>" . $row["texto"]."<br>
 			</fieldset><br>";
 			
 		}	
 } else {
 	
 		echo "nadie ha comentado aún";
 }
}

 ?> 
