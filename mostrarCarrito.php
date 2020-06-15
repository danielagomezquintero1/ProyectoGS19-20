<?php
include 'global/config.php';
include 'carrito.php';
include 'navbar.php';
include 'head.php';
?>
  <nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="home.php">Inicio</a></li>
    <li class="breadcrumb-item active" aria-current="page">Carrito</li>
  </ol>
</nav>
<div class="container" style="margin-top:5%;">
<div class="col-12 mb-5"><h1>Lista del carrito</h1></div>
<?php if(!empty($_SESSION['CARRITO'])) { ?>
<table class="table table-light table-bordered">
	<tbody>
		<tr>
			<th >Descripción</th>
			<th class="text-center">Cantidad</th>
			<th class="text-center">Precio</th>
			<th class="text-center">Total</th>
			<th >--</th>
		</tr>

		<?php 
		$total=0; 
		?>
		<?php foreach($_SESSION['CARRITO'] as $indice=>$producto){ ?> 
		<tr>
			<td ><?php echo $producto['NOMBRE']; ?></td>
			<td class="text-center"><?php echo $producto['CANTIDAD']; ?></td>
			<td class="text-center"><?php echo $producto['PRECIO'] ?></td>
			<td class="text-center"><?php echo number_format($producto['PRECIO']*$producto['CANTIDAD'],2); ?></td>


			<form action="" method="post">

				<input type="hidden" name="id" id="id" value="<?php echo openssl_encrypt($producto['ID'], COD, KEY); ?>">

				<td><button class="btn btn-danger btn-sm" type="submit" name="btnAccion" value="Eliminar">Eliminar</button></td>

			</form>

		</tr>
		<?php $total=$total+($producto['PRECIO']*$producto['CANTIDAD']);?>
		<?php }?>

		<tr style="margin-left: 123213px:">
			
			<td ></td>
			<td ></td>
			<td ></td>
			<td ><h3>TOTAL</h3></td>
			<td ><h3><?php echo number_format($total,2); ?> </h3></td>
		</tr>

		<tr>
			<td colspan="5">
				<form method="post" action="pagar.php">
					<div class="alert alert-success">
						<div class="form-group">
						<label>Correo de contacto: </label><br>
						<input type="email" name="email" id="email" placeholder="Por favor escribe tu correo" required>
					</div>
					<small id="emailHelp" class="form-text text-muted">Los productos se enviarán a este correo</small>
					</div>
					<button class="btn btn-primary btn-lg btn-block" type="submit" value="proceder" name="btnAccion">Proceder a pagar >></button>
				</form>
			</td>
		</tr>
	</tbody>
</table>
<?php }else{ ?>
	<div class="alert alert-success mt-5 mb-5">
		<p>No hay productos en el carrito.</p>
		<p>Ve a la tienda para comprar los mejores productos de nuestra página web!</p>
	</div>
	<div class="col-12 mt-5">
		<img style="width:30%;"src="images/carritovacio.png">
	</div>
<?php } ?>
</div>
<style type="text/css">
	

</style>
<?php include 'footer.php'; ?> 
<script src="misscripts.js"></script>