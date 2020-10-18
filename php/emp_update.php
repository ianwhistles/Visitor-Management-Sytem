<?php
session_start();
include('dbconn.php');
$id=$_SESSION['id'];
//$id=$_POST['id'];
$name=$_POST['name'];
$gender=$_POST['gender'];
$phone=$_POST['phone'];
$department=$_POST['department'];
$age=$_POST['age'];
$skills=$_POST['skills'];
$sentence=$_POST['sentence'];
$behave=$_POST['behave'];
$comment=$_POST['comment'];


$sql="UPDATE emp_table SET name='$name',gender='$gender',phone='$phone', department_name='$department', age='$age', skills='$skills', sentence='$sentence', behave='$behave', comment='$comment' WHERE id='$id' ";
$query=mysqli_query($db,$sql); 
		if($query) 
		{     
			echo"<script>alert('Prisoner Details Update'); 
			location.href='emp_edit1_0.php';
					</script>";	
		}
		else
		{
			echo"<script>alert ('error');
				</script>";
		}

?>

