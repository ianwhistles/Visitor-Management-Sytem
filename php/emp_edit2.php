<?php
include('dbconn.php');
$id=$_GET['id'];
$_SESSION['id']=$id;
$sql="Select * from emp_table where id='$id'";
$query=mysqli_query($db,$sql);
$fetch=mysqli_fetch_array($query);
?>

<!DOCTYPE html>
<html>
<head>
	<title>Edit Details</title>
	<link rel="stylesheet" type="text/css" href="../css/custom.css">
	<style type="text/css">
		body
		{
			background-repeat: no-repeat;
			background-size: cover;
			margin: 0px;
			background-attachment: fixed;
			
		}
	</style>
</head>
<body>
<form action="emp_update.php" method="post">
	<div class="admin_transparent">
	<div class="emp_main">	
		<span style="color: white; font-size: 64px;font-family: sans-serif;">Edit Prisoner Details</span>
		<div class="admin_center">
			<input type="text" name="name" placeholder="Enter Name" value="<?php echo $fetch[1];?>" required style="width: 70%; height:1px; border-radius: 10px;border:none; margin-left: 22px; padding: 16px;margin-top: 10px; background-color: antiquewhite;"><br><br>
			<div style="width: 76%;">   
					<label style="font-size: 25px; color: white;">Gender : </label>			<input  <?php if($fetch[3]=="Male"){echo "checked";} ?> type="radio" name="gender" value="Male" style="margin-left: 18px;"><label style="font-size: 25px; color: white;">Male</label>   
					<input <?php if($fetch[3]=="Female"){echo "checked";} ?> type="radio" name="gender" value="Female"><label style="font-size: 25px; color: white;">Female</label><br>
			</div>
			<input type="text" name="phone" placeholder="Phone No" value="<?php echo $fetch[2];?>" required style="width: 70%; height:1px; border-radius: 10px;border:none; margin-left: 22px; padding: 16px;margin-top: 18px; background-color: antiquewhite;"><br><br>
			<input type="text" name="age" placeholder="Age" value="<?php echo $fetch[4];?>" required style="width: 70%; height:1px; border-radius: 10px;border:none; margin-left: 22px; padding: 16px;margin-top: 18px; background-color: antiquewhite;"><br><br>
			
			<input name="skills" placeholder="skills" required style="width: 70%; height:1px; border-radius: 10px;border:none; margin-left: 22px; padding: 16px;margin-top: 10px; background-color: antiquewhite; color: black;"><br><br>

			<input name="behave" placeholder="Prisoner's Behaviour" required style="width: 70%; height:1px; border-radius: 10px;border:none; margin-left: 22px; padding: 16px;margin-top: 10px; background-color: antiquewhite; color: black;"><br><br>
			
			<input name="comment" placeholder="Warden's Comments on Prisoner" required style="width: 70%; height:1px; border-radius: 10px;border:none; margin-left: 22px; padding: 16px;margin-top: 10px; background-color: antiquewhite; color: black;"><br><br>

			<input type="text" name="sentence" placeholder="Prisoner's sentence" value="<?php echo $fetch[7];?>" required style="width: 70%; height:1px; border-radius: 10px;border:none; margin-left: 22px; padding: 16px;margin-top: 10px; background-color: antiquewhite;"><br><br>
			
			<label style="margin-left: 22px; color: white;">Department : </label>
			<select name="department" value="<?php echo $fetch[6];?>" style="border-radius: 10px; height: 30px; width: 28%; color: black;">
			<?php                          
			include ('dbconn.php');
			$sql="Select * from department";
			$query=mysqli_query($db,$sql);
							
				while($fetch=mysqli_fetch_array($query)) {
			?>
			<option value="<?php echo $fetch[1]?>"><?php echo $fetch[1]?></option>

			<?php
			}
			?>

			</select>
			<div class="sign" style="width: 80%; height: 7px; margin-left: 100px;">
					<input type="submit" value="Update" style="width: 30%; height:32px; border-radius: 10px;border:none; margin-left: 22px; margin-top: 30px; background-color: antiquewhite; cursor: pointer; color: black;" ><br><br>
			</div>
		</div>
			
	</div>
	</div>
</form>
</body>
</html>