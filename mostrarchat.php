 <?php
 session_start();


 
 	$user = $_SESSION['user'];
 	require "conexion.php";

 	$sql = "SELECT * FROM chat";
 	$result = $conn->query($sql);

 	if ($result->num_rows > 0) {
 		while($row = $result->fetch_assoc()) {
 			echo "<fieldset class='border p-2 pl-4'><span style='color:blue'><small>".$row["nombre"]. "</small></span> <br>" . $row["texto"]."<br> 			 			
 			</fieldset><br>";
 			
 		}	
 } else {
 	
 		echo "Nadie ha comentado aún";
 }


 ?> 
