<?php
session_start();
require "head.php";
require "navbar.php";

?>
 <style type="text/css">
    body{
      background-color:#001a33;
    }
  </style>

  <!--menu de personas-->

  <div class="container-fluid" style="width:70%;">
    <div class="row">
      <div class="col-12 m-5" style="font-weight: bold;color:white;">
        <h3 id="usu"><i><u>Productos de la tienda</u></i></h3>
        <div id="notificacion1"></div>
      </div>
      <div class="col-3">




      <?php
      $servername = "localhost";
      $username = "root";
      $password = "";
      $dbname = "uploadit";

  // Create connection
      $conexion = new mysqli($servername, $username, $password, $dbname);
  // Check connection
      if ($conexion->connect_error) {
        die("Connection failed: " . $conexion->connect_error);
      }

      $mostrar = "SELECT * FROM users";
      $resultmostrar = $conexion->query($mostrar);

      ?>

    </div>
    <div class="row" id="info">
      <table>
        <tr>            
          <td><div class="col-12 mb-4" style="font-weight:bold">ID</div></td>
          <td><div class="col-12 mb-4" style="font-weight:bold">Nombre</div></td>
          <td><div class="col-12 mb-4" style="font-weight:bold">Precio</div></td>
          <td><div class="col-12 mb-4" style="font-weight:bold">Descripcion</div></td>
          <td><div class="col-12 mb-4" style="font-weight:bold">Imagen</div></td>
          <td><div class="col-12 mb-4" style="font-weight:bold">Acciones</div></td>
        </tr>

        <?php 


            //mostrar todos los campos de users

        
        $mostrar = "SELECT * FROM tblproductos";
        $resultmostrar = $conexion->query($mostrar);
        while($fila=$resultmostrar->fetch_assoc()){
              //datos para mostrar en el formulario de modificar
          $datos = $fila['ID']."||".$fila['Nombre']."||".$fila['Precio'];

          echo "<tr class='".$fila['ID']."'>";
          echo "<td>".$fila['ID']."</td>";
          echo "<td class='usernamee'><a style='text-decoration:none;color:black;' href='mostrarpublicaciones.php?id=".$fila['ID']."'>".$fila['Nombre']."</a></td>";
          echo "<td class='emaill'>".$fila['Precio']."</td>";
              echo "<td>".$fila['Descripcion']."</td>"; //TR CLASS para que cada fila tenga una clase diferente para cambiarla despues con ajax
              echo "<td class='fotoperfill'><img style='width:30%;'src='".$fila['Imagen']."'></td>";
              ?>
              <td><a data-toggle='modal' data-target='#modalEdicionp' onclick="agregaform1('<?php echo $datos?>')" class='btn btn-primary'> <img id='editar' src='editaricon.png'> Modificar</a>
                <?php echo"<a href='eliminar_producto.php?id=".$fila['ID']."' class='btn btn-danger'><img id='eliminar' src='eliminar.png'> Eliminar </a>
                </td>
                </tr>";}?>
                <!--FILA=ID PARA BORRAR UN USUARIO EN ESPECIFICO-->
                <!-- Modal modificar-->
                <div class="modal fade" id="modalEdicionp" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                  <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Modificar datos</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                      <div class="modal-body">
                        <form method="post" id="actualizarformproductos">
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
           



          <!-- segundo section de la pagina-->
          <div class="row">
            <div class="col-3 mt-4 p-2" style="background-color: tomato; color:white; border-radius: 15px;">
              <div class="row">
                <div class="col-4 mt-1"><img src="usuarios.png" style="width:80%;margin-left: 40%;"></div>
                <div class="col-8 mt-2"><h6 id="publi1"><a style='color:white;'href="home.php">Total de usuarios registrados: 
                <?php //mostramos los usuarios totales
                $numusuarios =$conexion->query("SELECT * FROM users");
                $resultadonumusuarios=$numusuarios->num_rows;
                echo $resultadonumusuarios;
                ?>
                </a>
              </h6></div>
            </div>
          </div>
          <!---------------------------------------------------->
          
          <div class="col-3 ml-2 p-2 mt-4" style="background-color: #778899; color:white; border-radius: 15px;">
            <div class="row">
              <div class="col-4 mt-1"><img src="publicaciones.png" style="width:80%;margin-left: 40%;"></div>
              <div class="col-8 mt-2"><h6 id="publi">Publicaciones totales<br>
                <?php
                $numpublicaciones =$conexion->query("SELECT * FROM publicaciones");
                $resultadopublicaciones=$numpublicaciones->num_rows;
                echo $resultadopublicaciones;
                ?>
              </h6></div>
            </div>
          </div>
          <!--------------------------------------------------------->
          <div class="col-3 ml-2 p-2 mt-4" style="background-color: #9ACD32; color:white; border-radius: 15px;">
            <div class="row">
              <div class="col-4 mt-1"><img src="comentarios.png" style="width:80%; margin-left: 40%;"></div>
              <div class="col-8 mt-2"><h6>Comentarios totales<br>
                <?php
                $numpublicaciones =$conexion->query("SELECT * FROM comentarios");
                $resultadopublicaciones=$numpublicaciones->num_rows;
                echo $resultadopublicaciones;
                ?>
              </h6></div>
            </div>
          </div>
          <!----------------------------------------------------------->
            <div class="col-2 ml-2 p-2 mt-4" style="background-color: #E9967A; color:white; border-radius: 15px;">
            <div class="row">
              <div class="col-4 mt-1"><img src="tienda.png" style="width:140%; margin-left: 40%;"></div>
              <div class="col-8 mt-4"><h6><a style="color:white;"href="tiendaproductos.php">TIENDA</a><br>
              </h6></div>
            </div>
          </div>


        </div>
      </div>
    </div>
<?php require "footer.php"; ?>
     <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script src="misscripts.js"></script>
  </body>
  </html>