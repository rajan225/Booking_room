<!DOCTYPE html>
<html>
<head>
  <title>Admin || Login </title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

  
  <link href="css/bootstrap.css" rel="Stylesheet"/>
        <script src="js/bootstrap.bundle.js">
            
        </script>
  
  
  <style>
    .login-container {
      background-image: url('images/fo.jpg');
      background-size: cover;
      background-position: center;
      width: 100%;
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: end;
    }
  </style>
</head>
<body>
  <div class="login-container">
      <a href="index.jsp"Style=";" class="text-light">HOME</a>
    <div class="container">
      <h2 class="text-light">Login / Sing in</h2>
      <form class=""  method="post" action="controller.jsp">
          <input type="hidden" name="page" value="adminlogin"/>
        <div class="form-group">
            <label for="username" class="text-light">Enter User Id:</label>
            <input type="text"name="number" class="form-control" id="username"  placeholder="Enter User Id" required>
        </div>

        <div class="form-group">
          <label for="password" class="text-light">Password:</label>
          <input type="password" name="password"class="form-control" id="password" placeholder="Enter password" required>
        </div>
          <center>
        <button type="submit" class="btn btn-outline-success my-4">Login</button>
        
          </center>
      </form>
    </div>
  </div>
</body>
</html>