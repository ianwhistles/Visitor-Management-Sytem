<?php
include('dbconn.php');


$name=$_POST['name'];
$gender=$_POST['gender'];
$phone=$_POST['phone'];
$department=$_POST['department'];
$age=$_POST['age'];
$skills=$_POST['skills'];
$sentence=$_POST['sentence'];
$behave=$_POST['behave'];
$comment=$_POST['comment'];


$sql="insert into emp_table(name,gender,phone,department_name,age,skills,sentence,behave,comment) values('$name','$gender','$phone','$department','$age','$skills','$sentence', '$behave', 
'$comment')"; 
$query=mysqli_query($db,$sql); 
		if($query) 
		{     
			echo"<script>alert('Inserted'); 
				location.href='../index_1.php';
					</script>";	
		}
		else
		{
			echo"<script>alert ('error');
				</script>";
		}


?>

