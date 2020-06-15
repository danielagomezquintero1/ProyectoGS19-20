 <?php 


            //mostrar todos los campos de users

        if(isset($_POST['consulta'])){
          $q= $conexion->real_escape_string($_POST['consulta']);
          $query = "SELECT * FROM users WHERE username LIKE '%".$q."%'";
        }

        


        $mostrar = "SELECT * FROM users";
        $resultmostrar = $conexion->query($query);
        while($fila=$resultmostrar->fetch_assoc()){
              //datos para mostrar en el formulario de modificar
          $datos = $fila['id']."||".$fila['username']."||".$fila['email'];

          echo "<tr class='".$fila['id']."'>";
          echo "<td>".$fila['id']."</td>";
          echo "<td class='usernamee'><a style='text-decoration:none;color:black;' href='mostrarpublicaciones.php?id=".$fila['id']."'>".$fila['username']."</a></td>";
          echo "<td class='emaill'>".$fila['email']."</td>";
              echo "<td>".$fila['signup_date']."</td>"; //TR CLASS para que cada fila tenga una clase diferente para cambiarla despues con ajax
              echo "<td class='fotoperfill'><img style='width:30%;'src='".$fila['avatar']."'></td>";
              ?>
              <td><a data-toggle='modal' data-target='#modalEdicion' onclick="agregaform('<?php echo $datos?>')" class='btn btn-primary'> <img id='editar' src='editaricon.png'> Modificar</a>
                <?php echo"<a href='eliminar_user.php?id=".$fila['id']."' class='btn btn-danger'><img id='eliminar' src='eliminar.png'> Eliminar </a>
                </td>
                </tr>";}?>