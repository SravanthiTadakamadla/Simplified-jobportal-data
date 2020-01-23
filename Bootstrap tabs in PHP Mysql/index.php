<!-- Mysql query to collect required information from phpMyAdmin to display in HTML -->
<?php
include_once('connection.php');
$mysql_query = "SELECT * FROM requirement ORDER BY jobid";
$tab_result = mysqli_query($conn, $mysql_query);
$category_tabs = '';
$category_content = '';
$i = 0;
while($row = mysqli_fetch_array($tab_result))
{
 if($i == 0)
 {
  
  $category_tabs .= '
   <li class="active" ><a href="#' .$row["jobid"].'" data-toggle="tab"> '.$row["requirement_name"].' </a></li>
  ';
  $category_content .= '
   <div id="'.$row["jobid"].'" class="tab-pane fade in active">
  ';
 }
 else
 {
  $category_tabs .= '
   <li><a href="#'.$row["jobid"].'" data-toggle="tab">'.$row["requirement_name"].'</a></li>
  ';
  $category_content .= '
   <div id="'.$row["jobid"].'" class="tab-pane fade" >
  ';
 }
 
 <!-- Query shows the records which made in the interim of past 7 days which are verified and showcases just 3 records from the data.Need to alter the dates in the jobportal.sql document to show the records -->
 
 $content_query = "SELECT * FROM jobdetails WHERE  `date` BETWEEN DATE_SUB(CURDATE(), INTERVAL 7 DAY) AND CURDATE() && jobrole = '".$row["requirement_name"]."' && verify='1' limit 3";
 $content_result = mysqli_query($conn, $content_query);
 while($sub_row = mysqli_fetch_array($content_result))
 {
  $category_content .= '
  <div class="col-md-3" style="padding:10px;margin-right:6.78em;text-align:center;">
   <img src="images/'.$sub_row["images"].'" class="img-responsive img-thumbnail" />
   <h4>Jobrole : '.$sub_row["jobrole"].'</h4>
   <h4>Jobid : '.$sub_row["jobid"].'</h4>
   <h4>Skills : '.$sub_row["skills"].'</h4>
   <h4>Companyname : '.$sub_row["companyname"].'</h4>
   <h4>Date : '.$sub_row["date"].'</h4>
   <h4>Verify : '.$sub_row["verify"].'</h4>

   
  </div>
  ';
 }
 $category_content .= '<div style="clear:both"></div></div>';
 $i++;
}
?>
<!-- End of PHP  -->

<!DOCTYPE html>
<html>
 <head>
  <title>Simplified Jobportal Data</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="styles.css">
 
 </head>
 <body>
  <!-- Display header title -->

  <div class="header-overlay text-center">
      
    <video height="400" src="corporate.mp4" loop="true" autoplay="true" muted="true">
    </video>
    <h1>Displaying Records</h1>
  </div>
  <br />

  <!-- End  -->

  <!-- Display the content using Bootstrap Tabs obtained from phpMyAdmin  -->

  <div class="container" style="margin-top:40px;">

      <ul class="nav nav-tabs">
        <?php
        echo $category_tabs;
        ?>
      </ul>
      <div class="tab-content">
      <br />
        <?php
        echo $category_content;
        ?>
      </div>
  </div>

  <!-- End  -->
 </body>
</html>
