<?php
session_start();
$mensaje ="";

if(isset($_POST['btnAccion'])){
	switch($_POST['btnAccion']){
		case 'Agregar';

		if(is_numeric( openssl_decrypt($_POST['id'],COD,KEY))){
			$ID = openssl_decrypt($_POST['id'],COD,KEY);
			$mensaje.="Ok ID correcto".$ID;

		}else{
			$mensaje.="ID incorrecto";
		}

		if(is_string( openssl_decrypt($_POST['nombre'],COD,KEY))){
			$NOMBRE = openssl_decrypt($_POST['nombre'],COD,KEY);
		}else{
			$mensaje.="nombre incorrecto"; break;
		}

		if(is_numeric( openssl_decrypt($_POST['cantidad'],COD,KEY))){
			$CANTIDAD = openssl_decrypt($_POST['cantidad'],COD,KEY);
		}else{
			$mensaje.="cantidad incorrecto"; break;
		}

		if(is_numeric( openssl_decrypt($_POST['precio'],COD,KEY))){
			$PRECIO = openssl_decrypt($_POST['precio'],COD,KEY);
		}else{
			$mensaje.="precio incorrecto"; break;
		}

		if(!isset($_SESSION['CARRITO'])){ //si no existe esta variable, haces un carrito y lo metes
			$producto=array(
				'ID'=>$ID,
				'NOMBRE'=>$NOMBRE,
				'CANTIDAD'=>$CANTIDAD,
				'PRECIO'=>$PRECIO

			);
			$_SESSION['CARRITO'][0]=$producto;
			$mensaje = "Producto agregado al carrito";

		}else{ //meter mas productos en el carrito de compras

			//esta variable usa la funcion array column.. esta deposita todos los id que estan en el carirto de compras, esdecir, que id productos tendra todos los id de carrito de compras
			$idProductos=array_column($_SESSION['CARRITO'],"ID");
			//el id mayusculas el el id solicitado por el usuario y el idproductos sontodos los ids..y los compara.. RESTRIGNIMOS LA SELECCION DOBLE DEL MISMO PRODUCOT
			if(in_array($ID,$idProductos)){
				
				$mensaje ="Ese producto ya ha sido seleccionado";
			}else{

			$NumeroProductos=count($_SESSION['CARRITO']);
			//contabiliza utilizando la palabra count el carrito de compras
			$producto=array(
				'ID'=>$ID,
				'NOMBRE'=>$NOMBRE,
				'CANTIDAD'=>$CANTIDAD,
				'PRECIO'=>$PRECIO
			);

			$_SESSION['CARRITO'][$NumeroProductos]=$producto;
			$mensaje = "Producto agregado al carrito";
			}
		}
		//$mensaje = print_r( $_SESSION['CARRITO'],true);
		//$mensaje = "Producto agregado al carrito";
		break;
		case "Eliminar";
		if(is_numeric( openssl_decrypt($_POST['id'],COD,KEY))){
			$ID = openssl_decrypt($_POST['id'],COD,KEY);

			foreach($_SESSION['CARRITO'] as $indice=>$producto){
				//borramos por id y comparamos el producto mandado y con el id producto, lo borramos
				if($producto['ID']==$ID){
					unset($_SESSION['CARRITO'][$indice]);
					echo "<script>window.location.assign('mostrarCarrito.php')</script>";
				}
			}
			

		}else{
			$mensaje.="ID incorrecto";
		}
		break;
	}
}

?>
