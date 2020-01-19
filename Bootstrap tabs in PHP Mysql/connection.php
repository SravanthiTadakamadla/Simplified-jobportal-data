<?php
 

$host="localhost";
$dbusername="root";
$dbpassword="";
$dbname="jobportal";
$conn=mysqli_connect($host,$dbusername,$dbpassword,$dbname);

if(mysqli_connect_error()){
    
    die('connection Error('.mysqli_connect_error().')'.mysqli_connect_error());

}
 
 

?>
