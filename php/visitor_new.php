<?php
session_start();
$e=$_SESSION['qr'];
include('dbconn.php');
if(isset($_POST['submit']))
{
date_default_timezone_set('Africa/Nairobi');
$name=$_POST['name'];
$gender=$_POST['gender'];
$phone=$_POST['phone'];
$department=$_POST['department'];
$person_meet=$_POST['person_meet'];
$in_time=date("h:i");
$date=date("Y-m-d");

// define('UPLOAD_DIR', 'images/');
// 	$img=$_POST['image'];
// 	$s=rand();
// 	$img = str_replace('data:images/png;base64,', '', $img);
// 	$img = str_replace(' ', '+', $img);
// 	$data = base64_decode($img);
// 	$file = UPLOAD_DIR . "$s" . '.png';
// 	$success = file_put_contents($file, $data);
	


$sql="insert into inquery(Name,Gender,Phone,Department,Person_Meet,In_Time,Date,qr_code,Image) values(
'$name','$gender','$phone','$department','$person_meet','$in_time','$date','$e','12345')"; 
$query=mysqli_query($db,$sql); 
if($query) 
		{     
			echo"<script>alert('Inserted'); 
		     	location.href='visitor_slip.php';
					</script>";	
		}
		else
		{
			echo "<br>";
			echo"<script>alert ('error');</script>";
		}

}

?>

