<?php
//si no estas registrado...
//en el navbar he mostrado el contenido por echo para usar asi las dos tecnicas
if(!isset($_SESSION['user'])){
 ?>
 <div class="row">
  <div class="col-12">
    <img src="images/carru.png" width="1920" height="650" style="width: 100%; ">
  </div>
</div>

<!--Seccion dos-->

<div class="container-1 mt-5">
  <div class="row">
    <div class="col-12">
      <h1>¿Quieres hacerte famoso?</h1></div>
    </div>  
  </div>

  <!---jumbotron---->

  <div id="jumbo" class="jumbotron jumbotron-fluid pb-0" style="background-color: #ADD8E6">
    <div class="container-fluid">
      <div class="row">
        <div class="col-5 d-none d-xl-block" style="margin-top:10%;">
          <img src="images/musica.png" style="width: 150%;">
        </div>
        <div class="col-sm-12 col-xl-7">
          <h2 class="display-4">Sube tus propias canciones para ser conocido</h2>
          <p class="lead mt-5 mb-5"><b>Nosotros te damos la oportunidad de que puedas compartir tu música y a la vez poder disfrutar de otros canciones de otros artistas. Comenta y puntúa a estos y sé el mas conocido de la página web</b></p>
        </div>
      </div>
    </div>
  </div>

  <!---seccion canciones populares --->

  <div class="container" id="populares" style="text-align: center;">
    <div class="row">
      <div class="col-12 mb-5" id="populares1">
        <div class="col-12">
          <h1>Las canciones del momento</h1>
        </div>
        <div class="col-12 mb-3" style="text-align: right; color:#FF1493;">
          <small id="darverlikes"><b><i>Ver las canciones con mas likes</i></b></small>
        </div>
        <div class="row">
          <?php
          include 'conexion.php';
          $sql = "SELECT * FROM publicaciones ORDER BY fecha DESC";
          $result=$conn->query($sql);
          if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {

                echo //PARA QUE EL MODAL PUEDA RECOGER EL VALOR DE CADA ROW, HAY QUE PONERLE UN ID AL DATA-TARGET
                "<div data-toggle='modal' data-target='.bd-example-modal-sm-1".$row["id"]."' class='view overlay col-4 pt-2 pb-2 pl-1 pr-1'><img src=".$row["descripcion"]." style='width:100%'>
                <div class='mask flex-center rgba-black-strong'>
                <h4 class='white-text'><b>".$row["titulo"]."</b></h4>
                </div>
                </div>

                <div class='modal fade bd-example-modal-sm-1".$row["id"]."' tabindex='-1' role='dialog' aria-labelledby='mySmallModalLabel' aria-hidden='true'>
                <div class='modal-dialog modal-dialog-centered modal-sm '>
                <div class='modal-content'>
                <audio src='".$row["ubicacion"]."' controls='controls' type='audio/mpeg' preload='preload'>
                </audio>".$row["descripcion"]."
                </div>
                </div>
                </div>";
              } 
            } else{
              echo"No hay publicaciones";
            }
            ?>
          </div>
        </div>



        <div class="col-12 mb-5" id="segundocontenidolikes">
        <div class="col-12">
          <h1>Las canciones con mas likes</h1>
        </div>
        <div class="col-12 mb-3" style="text-align: right; color:#FF1493;">
          <small id="darverrecientes"><b><i>Ver las canciones mas recientes</i></b></small>
        </div>
        <div class="row">
          <?php
          include 'conexion.php';
          $sql = "SELECT * FROM publicaciones ORDER BY likes ASC";
          $result=$conn->query($sql);
          if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {

                echo //PARA QUE EL MODAL PUEDA RECOGER EL VALOR DE CADA ROW, HAY QUE PONERLE UN ID AL DATA-TARGET
                "<div data-toggle='modal' data-target='.bd-example-modal-sm-1".$row["id"]."' class='view overlay col-4 pt-2 pb-2 pl-1 pr-1'><img src=".$row["descripcion"]." style='width:100%'>
                <div class='mask flex-center rgba-black-strong'>
                <h4 class='white-text'><b>".$row["titulo"]."</b></h4>
                </div>
                </div>

                <div class='modal fade bd-example-modal-sm-1".$row["id"]."' tabindex='-1' role='dialog' aria-labelledby='mySmallModalLabel' aria-hidden='true'>
                <div class='modal-dialog modal-dialog-centered modal-sm '>
                <div class='modal-content'>
                <audio src='".$row["ubicacion"]."' controls='controls' type='audio/mpeg' preload='preload'>
                </audio>".$row["descripcion"]."
                </div>
                </div>
                </div>";
              } 
            } else{
              echo"No hay publicaciones";
            }
            ?>
          </div>
        </div>

      </div>
    </div>
<?php //si eres usuario no admin...
} elseif($_SESSION['user'] != 'demo'){
  ?>
  <!--portada-->

  <div class="row">
    <div class="col-12">
      <img src="images/carru.png" width="1920" height="650" style="width: 100%;">
    </div>
  </div>
  <!--Seccion dos-->

  <div class="container-1 mt-5">
    <div class="row">
      
      <div class="col-12">
        <h1>¿Quieres hacerte famoso?</h1></div>
      </div>  
    </div>

    <!---jumbotron---->

    <div id="jumbo" class="jumbotron jumbotron-fluid pb-0" style="background-color: #ADD8E6">
      <div class="container-fluid">
        <div class="row">
          <div class="col-5 d-none d-xl-block" style="margin-top:10%;">
            <img src="images/musica.png" style="width: 150%;">
          </div>
          <div class="col-sm-12 col-xl-7">
            <h2 class="display-4">Sube tus propias canciones para ser conocido</h2>
            <p class="lead mt-5">Nosotros te damos la oportunidad de que puedas compartir tu música y a la vez poder disfrutar de otros canciones de otros artistas. Comenta y puntúa a estos y sé el mas conocido de la página web</p>
          </div>
        </div>
      </div>
    </div>

    <!---seccion canciones populares --->

   <div class="container" id="populares" style="text-align: center;">
    <div class="row">
      <div class="col-12 mb-5" id="populares1">
        <div class="col-12">
          <h1>Las canciones del momento</h1>
        </div>
        <div class="col-12 mb-3" style="text-align: right; color:#FF1493;">
          <small id="darverlikes"><b><i>Ver las canciones con mas likes</i></b></small>
        </div>
        <div class="row">
            <?php
            include 'conexion.php';
            $sql = "SELECT * FROM publicaciones ORDER BY fecha DESC";
            $result=$conn->query($sql);
            if ($result->num_rows > 0) {
              while($row = $result->fetch_assoc()) {
                //para saber si le ha dado like o no
                $contarlikes = $conn->query("SELECT * FROM likes WHERE usuario ='".$_SESSION['id']."' AND  post = '".$row["id"]."'");
                $clikes = $contarlikes->num_rows; //cuanto es el resultado
                
                echo //PARA QUE EL MODAL PUEDA RECOGER EL VALOR DE CADA ROW, HAY QUE PONERLE UN ID AL DATA-TARGET
                "<div data-toggle='modal' data-target='.bd-example-modal-sm-1".$row["id"]."' class='view overlay col-4 pt-2 pb-2 pl-1 pr-1'><img src=".$row["descripcion"]." style='width:100%'>
                <div class='mask flex-center rgba-black-strong'>
                <h4 class='white-text'><b>".$row["titulo"]."</b></h4>
                </div>";

                //sistema de likes.. cuando abrimos la pagina aparece esto
                //PARTE CORAZONES
                if($clikes == 0){
                  echo"<div class='row'>
                  <div class='col-1 pt-2 ml-1 mt-1'>
                  <div class='like' id=".$row["id"].">
                  <!--si el usuario le ha dado like se pondra en rojo-->
                    <img src='images/cora.png'></div>
                ";
                  } else{
                    echo "<div class='row'>
                    <div class='col-1 pt-2 ml-1 mt-1'>
                  <div class='like' id=".$row["id"].">
                  <!--si el usuario le ha dado like se pondra en rojo-->
                    <img src='images/cora2.png'>
                    </div>
                ";
                  } 
              //PARTE LE GUSTA A ....

               echo "</div>";
               //COMENTARIOS
               echo"<div class='col-10 pt-2 ml-1 mt-1'style='text-align:left;'>
                    <small><i>Dale a la portada para mas información...</i></small>
                    </div>
               </div>
                <div id='num".$row["id"]."' class='col-12 pt-2 pb-3' style='text-align:left;'>
                  <small>Le gusta a <b>".$row["likes"]."</b> personas</small>
                </div>
               </div>
                <div class='modal fade bd-example-modal-sm-1".$row["id"]."' tabindex='-1' role='dialog' aria-labelledby='mySmallModalLabel' aria-hidden='true'>
                <div class='modal-dialog modal-dialog-centered modal-lg'>
                <div class='modal-content' id='modalcoments'>
                <div class='col-12 mt-5'>
                  <h5 class='pb-3'><i>Reproducir canción</i></h5>
                  <div class='col-12 mb-3'>Autor: ".$row["nombreuser"]." </div>
                  <audio src='".$row["ubicacion"]."' controls='controls' type='audio/mpeg' preload='preload'>
                  </audio>

                  
                    
                </div>

                <div class='row mt-3'>
                <hr style='width:85%;'>
                  <div class='col-12'><h5><i>Comentarios</i>";
                  //mostramos la cantidad de comentarios
                $contarcomentarios = $conn->query("SELECT * FROM comentarios WHERE publicacion = '".$row["id"]."'");
                $ccomentarios = $contarcomentarios->num_rows;
                  echo"</h5><div id='numcoments'>(".$ccomentarios.")</div></div>

                  <div class='col-12'>
                    <div class='row'>
                      
                        <form method='post' action=''>
                        
                        <div class='col-12'>
                        <label id='record-".$row["id"]."'>

                        <input type='text' class='enviar-btn form-control input-xs mt-3 mb-3' style='width: 800px;' placeholder='Escribe un comentario' name='comentario' id='comentario-".$row["id"]."'>

                        <input type='hidden' name='usuario' value='".$_SESSION['user']."' id='usuario'>

                         <input type='hidden' name='publicacion' value='".$row['id']."' id='publicacion'>

                          <input type='hidden' name='nombre' value='".$_SESSION['user']."' id='nombre'>
                        </div>
                       
                       
                        </form>
                        <div class='col-12'id='nuevocomentario".$row["id"]."' style='padding-left:2%;'></div>
                       


<!----coments----->";
    $mostrarcoments = $conn->query("SELECT * FROM comentarios WHERE publicacion ='".$row["id"]."'");
    while($row1 = $mostrarcoments->fetch_assoc()) {
      echo "        <div class='container'>

                        <div id='comentarionuevo".$row1['usuario']."'>
                          <div class='col-12'>
                              <hr style='width:75%;'>
                            <div class='row'>
                              <div class='col-12'>
                                <div class='row'>
                                  <div class='col-12' style='text-align:left;'>
                                    <small><i><b>".$row1['usuario']."</b></i></small>
                                  </div>
                                  <div class='col-12' style='text-align:left;'>
                                    <small style='color:#A9A9A9;'>".$row1['fecha']."</small>
                                  </div>
                                  <div class='col-12' style='text-align:left;'>
                                  <small>".$row1['comentario']."</small>
                                  <hr style='width:75%;'>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>";
}
                     echo "</div>
                    </div>                 
                </div>
                <div id='agregarcomentarioella'>
                      </div>
                </div>

                </div>
                </div>";
              } 
            } else{
              echo"No hay publicaciones";
            }
            ?>
          </div>
        </div>




<!---publicaciones con mas likes-->



<div class="col-12 mb-5" id="segundocontenidolikes">
        <div class="col-12">
          <h1>Las canciones con mas likes</h1>
        </div>
        <div class="col-12 mb-3" style="text-align: right; color:#FF1493;">
          <small id="darverrecientes"><b><i>Ver las canciones mas recientes</i></b></small>
        </div>
        <div class="row">
          <?php
          include 'conexion.php';
          $sql = "SELECT * FROM publicaciones ORDER BY likes DESC";
          $result=$conn->query($sql);
          if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                //para saber si le ha dado like o no
                $contarlikes1 = $conn->query("SELECT * FROM likes WHERE usuario ='".$_SESSION['id']."' AND  post = '".$row["id"]."'");
                $clikes1 = $contarlikes1->num_rows; //cuanto es el resultado
                
                echo //PARA QUE EL MODAL PUEDA RECOGER EL VALOR DE CADA ROW, HAY QUE PONERLE UN ID AL DATA-TARGET
                "<div data-toggle='modal' data-target='.bd-example-modal-sm-1".$row["id"]."' class='view overlay col-4 pt-2 pb-2 pl-1 pr-1'><img src=".$row["descripcion"]." style='width:100%'>
                <div class='mask flex-center rgba-black-strong'>
                <h4 class='white-text'><b>".$row["titulo"]."</b></h4>
                </div>";

                //sistema de likes.. cuando abrimos la pagina aparece esto
                //PARTE CORAZONES
                if($clikes1 == 0){
                  echo"<div class='row'>
                  <div class='col-1 pt-2 ml-1 mt-1'>
                  <div class='like' id=".$row["id"].">
                  <!--si el usuario le ha dado like se pondra en rojo-->
                    <img src='images/cora.png'></div>
                ";
                  } else{
                    echo "<div class='row'>
                    <div class='col-1 pt-2 ml-1 mt-1'>
                  <div class='like' id=".$row["id"].">
                  <!--si el usuario le ha dado like se pondra en rojo-->
                    <img src='images/cora2.png'>
                    </div>
                ";
                  } 
              //PARTE LE GUSTA A ....

               echo "</div>";
               //COMENTARIOS
               echo"<div class='col-10 pt-2 ml-1 mt-1'style='text-align:left;'>
                    <small><i>Dale a la portada para mas información...</i></small>
                    </div>
               </div>
                <div id='num".$row["id"]."' class='col-12 pt-2 pb-3' style='text-align:left;'>
                  <small>Le gusta a <b>".$row["likes"]."</b> personas</small>
                </div>
               </div>
                <div class='modal fade bd-example-modal-sm-1".$row["id"]."' tabindex='-1' role='dialog' aria-labelledby='mySmallModalLabel' aria-hidden='true'>
                <div class='modal-dialog modal-dialog-centered modal-lg'>
                <div class='modal-content' id='modalcoments'>
                <div class='col-12 mt-5'>
                  <h5 class='pb-3'><i>Reproducir canción</i></h5>
                  <audio src='".$row["ubicacion"]."' controls='controls' type='audio/mpeg' preload='preload'>
                  </audio>

                  
                    
                </div>

                <div class='row mt-3'>
                <hr style='width:75%;'>
                  <div class='col-12'><h5><i>Comentarios</i>";
                  //mostramos la cantidad de comentarios
                $contarcomentarios = $conn->query("SELECT * FROM comentarios WHERE publicacion = '".$row["id"]."'");
                $ccomentarios = $contarcomentarios->num_rows;
                  echo"</h5><div id='numcoments'>(".$ccomentarios.")</div></div>

                  <div class='col-12'>
                    <div class='row'>
                      
                        <form method='post' action=''>
                        
                        <div class='col-12'>
                        <label id='record-".$row["id"]."'>

                        <input type='text' class='enviar-btn form-control input-xs mt-3 mb-3' style='width: 800px;' placeholder='Escribe un comentario' name='comentario' id='comentario-".$row["id"]."'>

                        <input type='hidden' name='usuario' value='".$_SESSION['user']."' id='usuario'>

                         <input type='hidden' name='publicacion' value='".$row['id']."' id='publicacion'>

                          <input type='hidden' name='nombre' value='".$_SESSION['user']."' id='nombre'>
                        </div>
                       
                       
                        </form>
                        <div class='col-12'id='nuevocomentario".$row["id"]."' style='padding-left:2%;'></div>
                       


<!----coments----->";
    $mostrarcoments = $conn->query("SELECT * FROM comentarios WHERE publicacion ='".$row["id"]."'");
    while($row1 = $mostrarcoments->fetch_assoc()) {
      echo "        <div class='container'>

                        <div id='comentarionuevo".$row1['usuario']."'>
                          <div class='col-12'>
                              <hr style='width:75%;'>
                            <div class='row'>
                              <div class='col-12'>
                                <div class='row'>
                                  <div class='col-12' style='text-align:left;'>
                                    <small><i><b>".$row1['usuario']."</b></i></small>
                                  </div>
                                  <div class='col-12' style='text-align:left;'>
                                    <small style='color:#A9A9A9;'>".$row1['fecha']."</small>
                                  </div>
                                  <div class='col-12' style='text-align:left;'>
                                  <small>".$row1['comentario']."</small>
                                  <hr style='width:75%;'>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>";
}
                     echo "</div>
                    </div>                 
                </div>
                <div id='agregarcomentarioella'>
                      </div>
                </div>

                </div>
                </div>";
              } 
            } else{
              echo"No hay publicaciones";
            }
            ?>
          </div>
        </div>


        <!--comentarios-->
        <div class="container">
          <div class="row"style="text-align:center;">
            <div class="col-6" style="margin-top: 0%;margin-left:25%;">
              <h1 class="mt-5 mb-5">Opiniones generales de la pagina web</h1>
              <form method="post" id="loginchat">

                <div class="input-group mb-3">
                  <?php
                 
              //SE TIENE QUE GUARDAR EN UNA VARIABLE... EN EL DOCUMENTO ANTES NO LO HABIAMOS HECHO, POR ESO LO HACEMOS AHORA... LO GUARDAMOS EN UNA VARIABLE PARA TRBAJAR CON ELLA...
                  $user = $_SESSION['user'];
                 
              require "conexion.php";
              $sql2 = "SELECT * FROM users WHERE username='$user'"; //esto es para mostrar la imagen el lado de publicar comentrio
              $result2=$conn->query($sql2);
              if ($result2->num_rows > 0) {
                while($row = $result2->fetch_assoc()) {

                  echo "<img id='imaa' style='width:10%' class='mr-2' src=".$row['avatar'].">";
                } 
              } else{
                echo"";

              }
              ?>

              <input type="text" class="form-control mr-2" id="limpia"placeholder="Escribe aquí tu comentario..." aria-label="Escribe aquí tu comentario..." id="texto" name="texto" aria-describedby="basic-addon1">
              <button type="submit" id="enviaa">Enviar</button>
            </div>

          </form>
          <section>
            <div id="chatdiv"></div>
          </section>
        </div>
      </div>
    </div>
  </div>
</div>


<?php } else { ?>


  <!--MENU DE ADMIN-->

  <style type="text/css">
    body{
      background-color:#001a33;
    }
  </style>

  <!--menu de personas-->

  <div class="container-fluid" style="width:70%;">
    <div class="row">
      <div class="col-12 m-5" style="font-weight: bold;color:white;">
        <h3 id="usu"><i><u>Usuarios registrados</u></i></h3>
        <h3 id="usu2"><i><u>Publicaciones</u></i></h3>
      </div>
      <div class="col-12" id="notificacion"></div>
      <div class=" col-12 col-lg-3">
        <button type="button" data-toggle="modal" data-target="#agregaModal"style="color:black"class="btn btn-info mb-3"><img style="width:15%;" src="images/anadir.png"> Agregar un nuevo usuario</button>
      </div>

      <div class="col-12 col-lg-3">
        <button type="button" data-toggle="modal" data-target="#agregaProductoModal"style="color:black"class="btn btn-warning mb-3"><img style="width:15%;" src="images/anadirr.png"> Agregar un nuevo producto a la tienda</button>
      </div>

      <div class="col-12 col-lg-6 mt-5" style="color: white; text-align: right;">Buscar: 
        <input type="text" name="caja_busqueda" id="caja_busqueda">
      </div>


      <!--modal para agregar un nuevo usuario-->

      <div class="modal fade" id="agregaModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Nuevo Usuario</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">

              <div class="form-group">
                <form enctype="multipart/form-data" id="nuevousuarioform" method="post">
                  <label for="recipient-name" class="col-form-label"><b>Nombre:</b></label>
                  <input type="text" class="form-control" id="nombrea" name="nombrea">
                </div>
                <div class="form-group">
                  <label for="message-text" class="col-form-label"><b>Email:</b></label>
                  <input type="text" class="form-control" id="emaila" name="emaila">
                </div>
                <div class="form-group">
                  <label for="message-text" class="col-form-label"><b>Contraseña:</b></label>
                  <input type="password" class="form-control" id="contrasenaa" name="contrasenaa">
                </div>
                <b>Subir imagen de perfil</b> 
                <label for="file-input">
                  <img class="mt-2"src="images/subir.png" id="subirpng" width="10%;">
                </label>
                <input id="file-input" type="file" name="file-input"  hidden="" />
                <div class="col-12 m-3">
                  <div id="resultado" class=""><img id="imgSalida" width="300" /></div>
                </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                <input type="submit" name="subir" class="btn btn-primary" value="Agregar un nuevo usuario">
              </form>
            </div>
          </div>
        </div>
      </div>

<!--modal para agregar un nuevo producto-->

      <div class="modal fade" id="agregaProductoModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Nuevo Producto</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">

              <div class="form-group">
                <form enctype="multipart/form-data" id="nuevoproductoform" method="post">
                  <label for="recipient-name" class="col-form-label"><b>Nombre:</b></label>
                  <input type="text" class="form-control" id="nombreaa" name="nombreaa">
                </div>
                <div class="form-group">
                  <label for="message-text" class="col-form-label"><b>Precio:</b></label>
                  <input type="text" class="form-control" id="precioaa" name="precioaa">
                </div>
                <div class="form-group">
                  <label for="message-text" class="col-form-label"><b>Descripcion:</b></label>
                  <input type="password" class="form-control" id="descripcionaa" name="descripcionaa">
                </div>
                <b>Subir imagen de producto</b> 
                
                <input id="file-inputaa" type="file" name="file-inputaa" />
                <div class="col-12 m-3">
                  <div id="resultadoa" class=""><img id="imgSalidaa" width="300" /></div>
                </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                <input type="submit" name="subirproducto" class="btn btn-primary" value="Agregar un nuevo producto">
              </form>
            </div>
          </div>
        </div>
      </div>


      <?php
     require "conexion.php";

      $mostrar = "SELECT * FROM users";
      $resultmostrar = $conn->query($mostrar);

      ?>

    </div>
    <div class="row" id="info">
      <table>
        <tr>            
          <td><div class="col-12 mb-4" style="font-weight:bold">ID</div></td>
          <td><div class="col-12 mb-4" style="font-weight:bold">Nombre</div></td>
          <td><div class="col-12 mb-4" style="font-weight:bold">Email</div></td>
          <td><div class="col-md-12 mb-4" style="font-weight:bold">Registro</div></td>
          <td><div class="d-none d-md-block col-md-12 mb-4" style="font-weight:bold">Foto de perfil</div></td>
          <td><div class="col-12 mb-4" style="font-weight:bold">Acciones</div></td>
        </tr>

        <?php 


            //mostrar todos los campos de users

        
        $mostrar = "SELECT * FROM users";
        $resultmostrar = $conn->query($mostrar);
        while($fila=$resultmostrar->fetch_assoc()){
              //datos para mostrar en el formulario de modificar
          $datos = $fila['id']."||".$fila['username']."||".$fila['email'];

          echo "<tr class='".$fila['id']."'>";
          echo "<td>".$fila['id']."</td>";
          echo "<td class='usernamee'><a style='text-decoration:none;color:black;' href='mostrarpublicaciones.php?id=".$fila['id']."'>".$fila['username']."</a></td>";
          echo "<td class='emaill'>".$fila['email']."</td>";
              echo "<td>".$fila['signup_date']."</td>"; //TR CLASS para que cada fila tenga una clase diferente para cambiarla despues con ajax
              echo "<td class='d-none d-md-block fotoperfill'><img style='width:30%;'src='".$fila['avatar']."'></td>";
              ?>
              <td><a data-toggle='modal' data-target='#modalEdicion' onclick="agregaform('<?php echo $datos?>')" class='btn btn-primary btn-sm'> <img id='editar' src='images/editaricon.png'> Modificar</a>
                <?php echo"<a href='eliminar_user.php?id=".$fila['id']."' class='btn btn-danger btn-sm'><img id='eliminar' src='images/eliminar.png'> Eliminar </a>
                </td>
                </tr>";}?>
                <!--FILA=ID PARA BORRAR UN USUARIO EN ESPECIFICO-->
                <!-- Modal modificar-->
                <div class="modal fade" id="modalEdicion" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                  <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Modificar datos</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                      <div class="modal-body">
                        <form method="post" id="actualizarform">
                          <input type="text" hidden="" id="idpersonau" name="idpersonau"> <!--muestra el id por la var datos-->
                          <label>Nombre: </label>
                          <input type="text" name="nombreu" id="nombreu" class="form-control input-sm">


                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                          <button type="submit" class="btn btn-primary">Actualizar datos</button>
                        </form>
                      </div>
                    </div>
                  </div>
                </div>
              </table>
            </div>
            <!--------------------------------->
            <div class="row" id="info2">
              <div class="row" id="info">
                <table>
                  <tr>            
                    <td><div class="col-12 mb-4" style="font-weight:bold">CANCIÓN</div></td>
                    <td><div class="col-12 mb-4" style="font-weight:bold">Usuario</div></td>
                    <td><div class="col-12 mb-4" style="font-weight:bold">Portada de la cancion</div></td>
                    <td><div class="col-12 mb-4" style="font-weight:bold">Fecha de creación</div></td>
                    <td><div class="col-12 mb-4" style="font-weight:bold">Likes</div></td>
                    <td><div class="col-12 mb-4" style="font-weight:bold">Acciones</div></td>
                  </tr>

                  <?php 


            //mostrar todos los campos de publicaciones


                  $mostrar1 = "SELECT * FROM publicaciones";
                  $resultmostrar1 = $conn->query($mostrar1);
                  while($fila=$resultmostrar1->fetch_assoc()){
              //datos para mostrar en el formulario de modificar
              $datos1 = $fila['id']; //???? 

              echo "<tr>";
              echo"<td><audio controls>
              <source src='".$fila['ubicacion']."' type='audio/ogg'>
              <source src='horse.mp3' type='audio/mpeg'>
              Your browser does not support the audio element.
              </audio></td>";   
              //echo "<td><img style='width:60%;'src='ubicacion/".$fila['ubicacion']."'></td>";
              echo "<td>".$fila['user']."</td>";
              echo "<td><img style='width:45%;'src='".$fila['descripcion']."'></td>";
              echo "<td>".$fila['fecha']."</td>";
              echo "<td>".$fila['likes']."</td>";
              ?>
              <td><a data-toggle='modal' data-target='#modalEdicion' onclick="agregaform('<?php echo $datos?>')" class='btn btn-primary'> <img id='editar' src='images/editaricon.png'> Modificar</a>
                <?php echo"<a href='eliminar_user.php?id=".$fila['id']."' class='btn btn-danger'><img id='eliminar' src='images/eliminar.png'> Eliminar </a>
                </td>
                </tr>";}?>
                <!--FILA=ID PARA BORRAR UN USUARIO EN ESPECIFICO-->
                <!-- Modal modificar-->
                <div class="modal fade" id="modalEdicion" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                  <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Modificar datos</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                      <div class="modal-body">
                        <form method="post" id="actualizarform">
                          <input type="text" hidden="" id="idpersonau" name="idpersonau"> <!--muestra el id por la var datos-->
                          <label>Nombre: </label>
                          <input type="text" name="nombreu" id="nombreu" class="form-control input-sm">


                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                          <button type="submit" class="btn btn-primary">Actualizar datos</button>
                        </form>
                      </div>
                    </div>
                  </div>
                </div>
              </table>
            </div>

          </div>

          <!--PAGINACION-->
          <?php
          if(!$_GET){ //redireccionar siempre a la pagina 1 para que se ponga en azul el 1
            echo"<script>window.location.assign('home.php?pagina=1')</script>";
          }
          $articulo_x_pagina = 4;
          $iniciar = ($_GET['pagina']-1)*$articulo_x_pagina;
          //echo $iniciar;

          $sqlpag1 = 'SELECT * FROM users LIMIT :inicar,:narticulos';
         // $resultpag1 = $conn->prepare($sqlpag1);
         // $resultpag1->bindParam(':inicar', $iniciar, PDO::PARAM_INT);
         // $resultpag1->bindParam(':narticulos', $articulo_x_pagina, PDO::PARAM_INT);
          //$resultpag1->execute();

         
         // while($fila1=$resultpag1->fetch_assoc()){
          //  echo $fila1["id"]."<br>";
//           }

           //cauntos artiuclos quieres mostrar?

          $sqlpag = "SELECT * FROM publicaciones";
          $resultpag=$conn->query($sqlpag);

          $total_articulos_bd = $resultpag->num_rows; 
          $paginas = ceil($total_articulos_bd/4); //el resultado es el num de paginas que necesito
          

          
          ?>
            <nav aria-label="Page navigation example">
              <ul class="pagination justify-content-end mt-4">
                <li class="page-item
                 <?php echo $_GET['pagina']<=1?'disabled' : ''?>
                ">
                  <a class="page-link" style="color:white"href="home.php?pagina=<?php  echo $_GET['pagina']-1; ?>" tabindex="-1">Anterior</a>
                </li> 

                <?php for($i=0;$i<$paginas;$i++): //cuando le demos a una pag, elmetodo get sabe cual pagina le estamos dando ?> 
                <li class="page-item <?php echo $_GET['pagina']==$i+1 ? 'active' : '' ?>">
                  <a style="color:white"class="page-link" 
                  href="home.php?pagina=<?php  echo $i+1; ?>">
                    <?php  echo $i+1; ?>
                  </a>
                </li>
                <?php endfor ?>

                <li class="page-item
                <?php echo $_GET['pagina']>=$paginas?'disabled' : ''?>
                ">
                  <a class="page-link" style="color:white"href="home.php?pagina=<?php  echo $_GET['pagina']+1; ?>">Siguiente</a>
                </li>
              </ul>
            </nav>


          <!-- segundo section de la pagina-->
          <div class="row">
            <div class="col-3 mt-4 p-2" style="background-color: tomato; color:white; border-radius: 15px;">
              <div class="row">
                <div class="d-none d-lg-block col-md-4 mt-1"><img src="images/usuarios.png" style="width:80%;margin-left: 40%;"></div>
                <div class="col-12 col-lg-8 mt-2"><h6 id="publi1">Total de usuarios registrados: 
                <?php //mostramos los usuarios totales
                $numusuarios =$conn->query("SELECT * FROM users");
                $resultadonumusuarios=$numusuarios->num_rows;
                echo $resultadonumusuarios;
                ?>
              </h6></div>
            </div>
          </div>
          <!---------------------------------------------------->
          
          <div class="col-3 ml-2 p-2 mt-4" style="background-color: #778899; color:white; border-radius: 15px;">
            <div class="row">
              <div class="d-none d-lg-block col-md-4 mt-1"><img src="images/publicaciones.png" style="width:80%;margin-left: 40%;"></div>
              <div class="col-12 col-lg-8 mt-2"><h6 id="publi">Publicaciones totales<br>
                <?php
                $numpublicaciones =$conn->query("SELECT * FROM publicaciones");
                $resultadopublicaciones=$numpublicaciones->num_rows;
                echo $resultadopublicaciones;
                ?>
              </h6></div>
            </div>
          </div>
          <!--------------------------------------------------------->
          <div class="col-3 ml-2 p-2 mt-4" style="background-color: #9ACD32; color:white; border-radius: 15px;">
            <div class="row">
              <div class="d-none d-lg-block col-md-4 mt-1"><img src="images/comentarios.png" style="width:80%; margin-left: 40%;"></div>
              <div class="col-12 col-lg-8 mt-2"><h6>Comentarios totales<br>
                <?php
                $numpublicaciones =$conn->query("SELECT * FROM comentarios");
                $resultadopublicaciones=$numpublicaciones->num_rows;
                echo $resultadopublicaciones;
                ?>
              </h6></div>
            </div>
          </div>
          <!----------------------------------------------------------->
            <div class="col-2 ml-2 p-2 mt-4" style="background-color: #E9967A; color:white; border-radius: 15px;">
            <div class="row">
              <div class="d-none d-lg-block col-md-4 mt-1"><img src="images/tienda.png" style="width:140%; margin-left: 40%;"></div>
              <div class="col-12 col-lg-8 mt-4"><h6><a style="color:white;"href="tiendaproductos.php">TIENDA</a><br>
              </h6></div>
            </div>
          </div>


        </div>
      </div>
    </div>
    <?php } ?>