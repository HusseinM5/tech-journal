<?php include('server.php') ?>
<!DOCTYPE html>
<html>
<head>
  <title>Passw0rd</title>
  <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
  <div class="header">
        <h2>Is my password strong?</h2>
  </div>

  <form method="post" action="index.php">
        <?php include('errors.php'); ?>
        <div class="input-group">
          <label>Password</label>
          <input type="password" name="password_1">
        </div>
        <div class="input-group">
          <button type="submit" class="btn" name="reg_password">Register</button>
        </div>
  </form>
</body>
</html>
