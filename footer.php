<div class="container-fluid" style="text-align:center;">
  <footer class="row" style="margin-top: 4%;margin-bottom:0;position: absolute;width:100%; background-color: black; height:40%;">
    <div class="col-5 ml-5 d-none d-xl-block" style="margin-top: 3%;">
      <img src="images/hmm.png" style="width:80px; display: inline-block;">
      <label style="color:white; font-size:35px;font-family: 'Pacifico', cursive;">Upload It</label>
    </div>
    <div class="col-sm-12 col-xl-5 ml-5" style="margin-top: 1%;">
     <p class="text-white">Contacta con nosotros</p>
     <p><a class="text-white">Twitter</a></p>
     <p><a class="text-white">Facebook</a></p>
     <p><a class="text-white">Instagram</a></p>
     <p><a href="sitemap.php" class="text-white">SiteMap</a></p>
     <p><a class="text-white">Selecciona el idioma</a></p>
     <div class="mb-3"id="google_translate_element"></div>
     <?php
     require "conexion.php";
     $web_url ="http://". $_SERVER["SERVER_NAME"] . $_SERVER["REQUEST_URI"];
     $str= "<?xml version='1.0' ?>";
     $str .= "<rss version='2.0'>";
     $str .= "<channel>";
     $str .= "<tittle>Mi pagina web Daniela PROYECTO</tittle>";
     $str .= "<description>UPLOAD IT</description>";
     $str .= "<language>es-ES</language>";
     $str .= "<link>$web_url</link>";

     $resultadorss = mysqli_query($conn, "SELECT * FROM publicaciones ORDER BY id DESC");
     while($rowrss = mysqli_fetch_object($resultadorss)){
      $str .= "<item>";
      $str .= "<tittle>".htmlspecialchars($rowrss->descripcion)."</tittle>";
      $str .= "<description>".htmlspecialchars($rowrss->ubicacion)."</description>";
      $str .= "<link>".$web_url."/mostrarpublicaciones.php?id=".htmlspecialchars($rowrss->id)."</link>";
      $str .= "</item>";
    }
    $str .= "</channel>";
    $str .= "</rss>";
    file_put_contents("rss.xml", $str);
    ?>

    <a href="rss.xml" target="_blank">
      <img style="width:6%;"src="https://upload.wikimedia.org/wikipedia/commons/thumb/4/43/Feed-icon.svg/1200px-Feed-icon.svg.png">
    </a>
  </div>
</footer>
</div>

<script type="text/javascript">
  function googleTranslateElementInit() {
    new google.translate.TranslateElement({pageLanguage: 'es'}, 'google_translate_element');
  }
</script>
<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>






