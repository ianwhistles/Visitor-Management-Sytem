<!DOCTYPE html>
<html>
<head>
	<title>Insert details</title>
	<link rel="stylesheet" type="text/css" href="../css/custom.css">
	<script>        
           function phoneno(){          
            $('#phone').keypress(function(e) {
                var a = [];
                var k = e.which;

                for (i = 48; i < 58; i++)
                    a.push(i);

                if (!(a.indexOf(k)>=0))
                    e.preventDefault();
            });
        }
        function onlyAlphabets(evt) {
        var charCode;
        if (window.event)
            charCode = window.event.keyCode;  //for IE
        else
            charCode = evt.which;  //for firefox
        if (charCode == 32) //for &lt;space&gt; symbol
            return true;
        if (charCode > 31 && charCode < 65) //for characters before 'A' in ASCII Table
            return false;
        if (charCode > 90 && charCode < 97) //for characters between 'Z' and 'a' in ASCII Table
            return false;
        if (charCode > 122) //for characters beyond 'z' in ASCII Table
            return false;
        return true;
    }
       </script>
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
<form action="emp_insert_1.php" method="post">
	
	<div class="emp_main">	
		<span style="color: white; font-size: 64px;font-family: sans-serif;">Prisoner Details</span>
		<div class="admin_center">
			<input type="text"  onkeypress="return onlyAlphabets(event);" name="name" placeholder="Enter prisoner's Name" required style="width: 70%; height:1px; border-radius: 10px;border:none; margin-left: 22px; padding: 16px;margin-top: 10px; background-color: antiquewhite;"><br><br>
			<div style="width: 76%;">   
					<label style="font-size: 25px; color: white;">Gender : </label>			<input type="radio" name="gender" value="Male" style="margin-left: 18px;"><label style="font-size: 25px; color: white;">Male</label>   
					<input type="radio" name="gender" value="Female"><label style="font-size: 25px; color: white;">Female</label><br>
			</div>
			<input id="phone" type="text" pattern="\d{10}" title="Please enter exactly 10 digits" onkeypress="phoneno()" maxlength="10" name="phone" placeholder="Phone No" required style="width: 70%; height:1px; border-radius: 10px;border:none; margin-left: 22px; padding: 16px;margin-top: 18px; background-color: antiquewhite;"><br><br>
			<input type="text" name="age" placeholder="Enter your Age" required style="width: 70%; height:1px; border-radius: 10px;border:none; margin-left: 22px; padding: 16px;margin-top: 10px; background-color: antiquewhite;"><br><br>

			<input name="skills" placeholder="skills" required style="width: 70%; height:1px; border-radius: 10px;border:none; margin-left: 22px; padding: 16px;margin-top: 10px; background-color: antiquewhite; color: black;"><br><br>

			<input name="behave" placeholder="Prisoner's Behaviour" required style="width: 70%; height:1px; border-radius: 10px;border:none; margin-left: 22px; padding: 16px;margin-top: 10px; background-color: antiquewhite; color: black;"><br><br>

			<input name="comment" placeholder="Warden's Comments on Prisoner" required style="width: 70%; height:1px; border-radius: 10px;border:none; margin-left: 22px; padding: 16px;margin-top: 10px; background-color: antiquewhite; color: black;"><br><br>


			<input name="sentence" placeholder="Prisoner's sentence in years" required style="width: 70%; height:1px; border-radius: 10px;border:none; margin-left: 22px; padding: 16px;margin-top: 10px; background-color: antiquewhite;"><br><br>

			<select name="department"  style="width: 70%; height: 30px; border-radius: 10px;border:none; margin-left: 21px; padding: 5px; margin-top: 10px; color: #000;background-color: antiquewhite; color: black;">
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
					<input type="submit" value="Sign up" style="width: 30%; height:32px; border-radius: 10px;border:none; margin-left: 22px; margin-top: 30px; background-color: antiquewhite; cursor: pointer; color: black;" ><br><br>
			</div>

		</div>
	</div>		
</form>
</body>
</html>