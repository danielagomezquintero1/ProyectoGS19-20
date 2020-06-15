<!DOCTYPE html>
<html lang="en">
<head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Music Player</title>
    <style type="text/css">
   @import url('https://fonts.googleapis.com/css2?family=Nunito&family=Nunito+Sans&display=swap');
*{
    margin: 0;
    padding: 0;
    outline: 0;
}
body{
    background-color: #E1E6EC;
}
.container{
    margin-top:2%;
    margin-bottom:2%;
    padding: 6px;
    width: 300px;
    border-radius: 8px;
    background-color: #E1E6EC;
    box-shadow: 5px 5px 11px #A2B1C6 , -5px -5px 11px  #fff  ;
    text-align: center;
    font-family: 'Nunito', sans-serif;
    
}
.wrapper{
    position: relative;
}
.container img{
    width: 80%;
   
}
.container h1{
    font-size: 1.5rem;
    margin: 12px 0 12px 0;
}
.buttons{
    display: inline-block;
    width: 100%;
    padding: 0;
    margin: 0;
    text-align: center;
}
.buttons button{
    position: relative;
    width: 50px;
    height: 50px;
    padding: 16px;
    border-radius: 90px;
    background-color: #E1E6EC;
    text-align: left;
    margin: 10px 9px;
    border: none;
    box-shadow: 2px 2px 5px #A2B1C6 , -2px -2px 11px  #fff  ;
    /*background:linear-gradient(-45deg,#a2b1c6,#fff);*/
}
.buttons button:active{
    background: #E1E6EC;
    box-shadow: inset 2px 2px 5px #A2B1C6 , -2px -2px 11px  #fff  ;
}
.buttons button img{
    position: absolute;
    left: 50%;
    top: 50%;
    transform: translate(-50%,-50%);
    width: 42%;
    height: 42%;
}

.level{
    width: 80%;
    -webkit-appearance: none;
    appearance: none;
    background: #E1E6EC;
    box-shadow: 2px 2px 5px #A2B1C6 , -2px -2px 11px  #fff  ;
    border-radius: 50px;
    margin: 12px 0;
}
.level::-webkit-slider-thumb{
    -webkit-appearance: none;
    background-color: #A2B1C6;
    box-shadow: 2px 2px 5px #A2B1C6 , -2px -2px 5px  #fff  ;
    width: 15px; /* Set a specific slider handle width */
    height: 15px; /* Slider handle height */
    border-radius: 90px;
}
.level::-moz-range-thumb{
    width: 50px;
    height: 50px;
}
</style>
</head>
<body>
    <?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "photogram";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM publicaciones";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
    echo "usuario: " . $row["user"]. " - archivo: " . $row["ubicacion"]. " <br>";
    ?>
   
       <div class="container">
        <div class="col-12">
        <div class="wrapper">
            <h1>Play your favorite music</h1>
            <img src="https://i.pinimg.com/originals/b4/75/00/b4750046d94fed05d00dd849aa5f0ab7.jpg">
            <input id="range" class="level" type="range" value="0" min="0">
            <div class="buttons">
                
                <button id="play"><img id="play_img" src="https://1.bp.blogspot.com/-E0XQfV-BJG0/Xo8qjhZ0-YI/AAAAAAAACPg/63jzImPyEp8olAxvOifPz3-w32_5zzucgCLcBGAsYHQ/s200/play.png"></button>
                </div>
            </div>
            </div>
       </div>
       
    </div>
    <input type="hidden" name="musica" class="musica" value="http://bsrmp3.online/mp3s/Myke%20Towers%20-%20Otro.mp3">
    <?php
  }
} else {
  echo "0 results";
}
$conn->close();
?>

    <script type="text/javascript">
        musica = document.getElementsByClassName("musica").value;
        music_name = musica;
        
let play_btn = document.querySelector("#play");
let prev_btn = document.querySelector("#pre");
let next_btn = document.querySelector("#next");
let range = document.querySelector("#range");
let play_img = document.querySelector("#play_img")
let total_time = 0;
let currentTime = 0;
let isPlaying = false;
let song = new Audio();
window.onload = playSong;

function playSong(){
    song.src = music_name;
    console.log(song)
    
    
    play_btn.addEventListener('click',function(){
        if(!isPlaying){
            song.play();
            isPlaying = true;
            total_time = song.duration;
            range.max = total_time;
            play_img.src = "https://1.bp.blogspot.com/-iVa97ltPy9M/Xo8qjVaskpI/AAAAAAAACPk/0N8bYaXNkcUe_Fj0SRCKRXWyEj9mfWWRACLcBGAsYHQ/s200/pause.png";
        }else{
            song.pause();
            isPlaying = false;
            play_img.src = "https://1.bp.blogspot.com/-E0XQfV-BJG0/Xo8qjhZ0-YI/AAAAAAAACPg/63jzImPyEp8olAxvOifPz3-w32_5zzucgCLcBGAsYHQ/s200/play.png";
        }
       song.addEventListener('ended',function(){
            song.currentTime = 0
            song.pause();
            isPlaying = false;
            range.value = 0;
            play_img.src = "https://1.bp.blogspot.com/-E0XQfV-BJG0/Xo8qjhZ0-YI/AAAAAAAACPg/63jzImPyEp8olAxvOifPz3-w32_5zzucgCLcBGAsYHQ/s200/play.png";
        })
        song.addEventListener('timeupdate',function(){
            range.value = song.currentTime;
        })
        range.addEventListener('change',function(){
            song.currentTime = range.value;
        })
       
    })
}
    </script>
</body>
</html>