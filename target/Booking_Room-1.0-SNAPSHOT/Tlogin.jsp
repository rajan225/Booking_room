<!DOCTYPE html>
<html>
<head>
  <title>Tenant || login </title>
        <link href="images/50.jpg" rel="icon"/>
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
          <input type="hidden" name="page" value="tenantlogin"/>
        <div class="form-group">
            <label for="username" class="text-light">Enter Mobile number:</label>
            <input type="number"name="number" class="form-control" id="username"  placeholder="Enter number" required>
        </div>

        <div class="form-group">
          <label for="password" class="text-light">Password:</label>
          <input type="password" name="password"class="form-control" id="password" placeholder="Enter password" required>
        </div>
          <center>
        <button type="submit" class="btn btn-outline-success my-md-4">Sing in</button>
        <a href="Tregistration.jsp" class="btn btn-outline-success my-md-4">Sing up</a>
          </center>
      </form>
    </div>
  </div>
</body>
</html>