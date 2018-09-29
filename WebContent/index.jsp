<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Login | Libra Application</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="vendors/iconfonts/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- inject:css -->
  <link rel="stylesheet" href="css/style1.css">
  <!--  <link rel="stylesheet" href="css/style.css"> -->
  <!-- endinject -->
  <!--<link rel="shortcut icon" href="images/favicon.png" /> -->
</head>
<body background="images/bg.png">
<div class="background">

<form action="check" method="post">
  <div class="imgcontainer">
    <img src="images/Libra-text-logo-white-big.png" alt="Avatar" class="avatar">
  </div>

  <div class="container">
    <select class="username" name="uname" for="uname" required style="width:100%; padding: 12px 20px; margin: 8px 0; border: 1px solid #ccc"><b>Username</b></label>
    <!-- <input type="text" placeholder="Enter Username" name="uname" required> -->
    	<option value="Username">Username</option>
    	<option value="Admin">Admin</option>
    	<option value="Citi">Citi</option>
    	<option value="JPMorgan">JPMorgan</option>
    	<option value="DeutscheBank">DeutscheBank</option>
    	<option value="GoldmanSach">GoldmanSachs</option>
    </select>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>

    <button type="submit">Login</button>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label>
  </div>

  <!-- <div class="container" style="background-color:#f1f1f1"> -->
    <!-- <button type="button" class="cancelbtn">Cancel</button> -->
    <!-- <span class="psw">Forgot <a href="#">password?</a></span> -->
  <!-- </div> -->
</form>
</div>

</body>
</html>