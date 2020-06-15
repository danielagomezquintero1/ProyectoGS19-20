  <?php
//Si existe una id en la url... luego verificamos si esa id la tiene un usuario y la mostramos por pantalla
session_start();
  $idusuario = $_REQUEST['id'];
 

  // Create connection
  require "conexion.php";


	if(!empty($_POST)){ //si le damos al boton aceptar
	$idusuario = $_POST['idusuario']; //recogemos el valor del formulario...metodo rapido para recoger el id del usuario
	$sql = "SELECT * FROM likes WHERE usuario='$idusuario'";


	$conn->query($sqlpubli);
	$result = $conn->query($sql);
	if($result){
		header("location:home.php");
	} else{
		echo"Error al eliminar";
	}
}

	$sql = "SELECT * FROM likes WHERE usuario='$idusuario'";//el idusuario es para comprobar si existe uno en la tabla
	
	 $result = mysqli_query($conn, $sql);  //se hace la consulta
	 $result1 =mysqli_num_rows($result); //nos devuelve una cantidad de filas

	 ?>

	 <!DOCTYPE html>
	 <html>
	 <head>
	 	<?php include "head.php";?>
	 	<?php include "navbar.php";?>
	 	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	 	<!-- Required meta tags -->
	 	<meta charset="utf-8">
	 	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	 	<!-- Bootstrap CSS -->
	 	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	 	<meta charset="utf-8">
	 	<style type="text/css">
	 		body{
	 			background-color:#001a33;
	 		}
	 		span{
	 			color:red;
	 		}
	 	</style>
	 	<title>Tus posts guardados</title>
	 </head>
	  <nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="home.php">Inicio</a></li>
    <li class="breadcrumb-item active" aria-current="page">Tus canciones favoritas</li>
  </ol>
</nav> 
	 	<div class="container" style="background-color: #F5F5F5;text-align:center; margin-top: 9%;">
	 		<div class="row">
	 			<div class="col-12 mt-4">
	 				<h2>Tus posts guardados son: </h2>
	 				<div class="row">
	 					<div class="col-12 mt-4">

	 						<div class="row mx-5">
							<?php 
							 //validamos si nos ha dado esa cantidad de filas
							 	while ($data = mysqli_fetch_array($result)) { //devuelve el resultado de las tablas en array para que podamos trabajar con los datos
							 		$post = $data['post'];
							 		$sql3 = "SELECT * FROM publicaciones WHERE id='$post'";//el idusuario es para comprobar si existe uno en la tabla

							 		$result3 = mysqli_query($conn, $sql3);  //se hace la consulta
							 		$result13 =mysqli_num_rows($result3);
							 		while ($data1 = mysqli_fetch_array($result3)) {  //nos devuelve una cantidad de filas
							 			
							 			?>
							 			<div class="col-3">
							 				<img style="width:100%;"src='<?php echo $data1["descripcion"];?>'>
							 				<p class="mt-2"><?php echo $data1["titulo"];?></p>
							 				<p>Autor: <?php echo $data1["nombreuser"];?></p>
							 			</div>
							 			<?php }?>
							 		<?php }?>
	 		</div>
	 	</div>
	 </div>

	</div>

</div>


</html>
<script src="misscripts.js"></script>
