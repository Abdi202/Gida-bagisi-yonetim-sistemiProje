
<?php
ob_start(); 
// $connection = mysqli_connect("localhost:3307", "root", "");
// $db = mysqli_select_db($connection, 'demo');
 include("connect.php"); 
if($_SESSION['name']==''){
	header("location:signin.php");
}
?>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <!----======== CSS ======== -->
    <link rel="stylesheet" href="admin.css">
     
    <!----===== Iconscout CSS ===== -->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">

    <title>Admin Dashboard Panel</title> 
    
<?php
 $connection=mysqli_connect("127.0.0.1","root","");
 $db=mysqli_select_db($connection,'demo');
 


?>
</head>
<body>
    <nav>
        <div class="logo-name">
            <div class="logo-image">
                <!--<img src="images/logo.png" alt="">-->
            </div>

            <span class="logo_name">ADMIN</span>
        </div>

        <div class="menu-items">
            <ul class="nav-links">
                <li><a href="admin.php">
                    <i class="uil uil-estate"></i>
                    <span class="link-name">Kontrol Paneli</span>
                </a></li>
                <!-- <li><a href="#">
                    <i class="uil uil-files-landscapes"></i>
                    <span class="link-name">Content</span>
                </a></li> -->
                <li><a href="#">
                    <i class="uil uil-chart"></i>
                    <span class="link-name">Analitik</span>
                </a></li>
                <li><a href="donate.php">
                    <i class="uil uil-heart"></i>
                    <span class="link-name">Bağışlar</span>
                </a></li>
                <li><a href="feedback.php">
                    <i class="uil uil-comments"></i>
                    <span class="link-name">Geri Bildirimler</span>
                </a></li>
                <li><a href="adminprofile.php">
                    <i class="uil uil-user"></i>
                    <span class="link-name">Profile</span>
                </a></li>
                <!-- <li><a href="#">
                    <i class="uil uil-share"></i>
                    <span class="link-name">Share</span>
                </a></li> -->
            </ul>
            
            <ul class="logout-mode">
                <li><a href="../logout.php">
                    <i class="uil uil-signout"></i>
                    <span class="link-name">Çıkış</span>
                </a></li>

                <li class="mode">
                    <a href="#">
                        <i class="uil uil-moon"></i>
                    <span class="link-name">Karanlık Mod</span>
                </a>

                <div class="mode-toggle">
                  <span class="switch"></span>
                </div>
            </li>
            </ul>
        </div>
    </nav>

    <section class="dashboard">
        
        <div class="top">
            <i class="uil uil-bars sidebar-toggle"></i>
            <!-- <p>Food Donate</p> -->
            <p  class ="logo" >Gıda<b style="color: #06C167; ">Bağışı</b></p>
             <p class="user"></p>
            <!-- <div class="search-box">
                <i class="uil uil-search"></i>
                <input type="text" placeholder="Search here...">
            </div> -->
            
            <!--<img src="images/profile.jpg" alt="">-->
        </div>

        <div class="dash-content">
            <div class="overview">
                <div class="title">
                    <i class="uil uil-chart"></i>
                    <span class="text">Analitik</span>
                </div>

                <div class="boxes">
                    <div class="box box1">
                        <i class="uil uil-user"></i>
                        <!-- <i class="fa-solid fa-user"></i> -->
                        <span class="text">Toplam kullanıcılar</span>
                        <?php
                           $query="SELECT count(*) as count FROM  login";
                           $result=mysqli_query($connection, $query);
                           $row=mysqli_fetch_assoc($result);
                         echo "<span class=\"number\">".$row['count']."</span>";
                        ?>
                        <!-- <span class="number">50,120</span> -->
                    </div>
                    <div class="box box2">
                        <i class="uil uil-comments"></i>
                        <span class="text">GeriBildirimler</span>
                        <?php
                           $query="SELECT count(*) as count FROM  fedback";
                           $result=mysqli_query($connection, $query);
                           $row=mysqli_fetch_assoc($result);
                         echo "<span class=\"number\">".$row['count']."</span>";
                        ?>
                        <!-- <span class="number">20,120</span> -->
                    </div>
                    <div class="box box3">
                        <i class="uil uil-heart"></i>
                        <span class="text">Toplam bağışçılar</span>
                        <?php
                           $query="SELECT count(*) as count FROM gida_bagislari";
                           $result=mysqli_query($connection, $query);
                           $row=mysqli_fetch_assoc($result);
                         echo "<span class=\"number\">".$row['count']."</span>";
                        ?>
                        <!-- <span class="number">10,120</span> -->
                    </div>
                </div>
                <br>
                <br>

<canvas id="myChart" style="width:100%;max-width:600px"></canvas>
<br>
<canvas id="donateChart" style="width:100%;max-width:600px"></canvas>

<script>
      <?php
            $query="SELECT count(*) as count FROM  login where gender=\"bay\"";
            $q2="SELECT count(*) as count FROM  login where gender=\"bayan\"";
            $result=mysqli_query($connection, $query);
            $res2=mysqli_query($connection, $q2);
            $row=mysqli_fetch_assoc($result);
            $ro2=mysqli_fetch_assoc($res2);
            $female=$ro2['count'];
            $male=$row['count'];
            $q3="SELECT count(*) as count FROM gida_bagislari where location=\"Bartin\"";
            $res3=mysqli_query($connection, $q3);
            $ro3=mysqli_fetch_assoc($res3);
            $madurai=$ro3['count'];
            $q4="SELECT count(*) as count FROM gida_bagislari where location=\"Ankara\"";
            $res4=mysqli_query($connection, $q4);
            $ro4=mysqli_fetch_assoc($res4);
            $chennai=$ro4['count'];
            $q5="SELECT count(*) as count FROM gida_bagislari where location=\"İstanbul\"";
            $res5=mysqli_query($connection, $q5);
            $ro5=mysqli_fetch_assoc($res5);
            $coimbatore=$ro5['count'];
            

    ?>
var xValues = ["bay","bayan"];
var xplace=["Bartin","Ankara","İstanbul"];
var yplace=[<?php echo json_encode($madurai,JSON_HEX_TAG);?>,<?php echo json_encode($coimbatore,JSON_HEX_TAG);?>,<?php echo json_encode($chennai,JSON_HEX_TAG);?>];
var yValues = [<?php echo json_encode($male,JSON_HEX_TAG);?>,<?php echo json_encode($female,JSON_HEX_TAG);?>,30];
var barColors = ["#06C167","blue"];
var bar=["#06C167","blue","red"]

new Chart("myChart", {
  type: "bar",
  data: {
    labels: xValues,
    datasets: [{
      backgroundColor: barColors,
      data: yValues
    }]
  },
  options: {
    legend: {display: false},
    title: {
      display: true,
      text: "Kullanıcı detayları"
    }
  }
});

new Chart("donateChart", {
  type: "bar",
  data: {
    labels: xplace,
    datasets: [{
      backgroundColor: bar,
      data: yplace
    }]
  },
  options: {
    legend: {display: false},
    title: {
      display: true,
      text: "Gıda bağışı detayları"
    }
  }
});
</script>

            </div>
        </div>
    </section>
    <script src="admin.js"></script>
</body>
</html>