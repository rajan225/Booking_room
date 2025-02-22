
<%

if(session.getAttribute("userid")==null || session.getAttribute("userid")=="")
{

response.sendRedirect("../Llogin.jsp");
}
else
{
%>



<!DOCTYPE html>
<html>
<head>
  <title>Change password</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to fit=no">
  <link href="css/bootstrap.css" rel="Stylesheet"/>
        <script src="js/bootstrap.bundle.js">
            
        </script>
  
  
  <style>
    .login-container {
      background-image: url('../images/fo.jpg');
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
      <a href="landlordhome.jsp"Style=";" class="text-light">[ HOME ]</a>
    <div class="container">
      <h2 class="text-light">Change Password</h2>
      <form class=""  method="post" action="controller.jsp">
          <input type="hidden" name="page" value="changepassword"/>
        <div class="form-group">
            <label for="username" class="text-light">Enter old password:</label>
            <input type="text"name="opassword" class="form-control" id="username"  placeholder="Enter old password" required>
        </div>

        <div class="form-group">
          <label for="password" class="text-light">new Password:</label>
          <input type="password" name="npassword"class="form-control" id="password" placeholder="Enter New password" required>
        </div>
           <div class="form-group">
          <label for="password" class="text-light">confirm Password:</label>
          <input type="password" name="cpassword"class="form-control" id="password" placeholder="Enter confirm password" required>
        </div>
          <center>
        <button type="submit" class="btn btn-outline-success my-4">submit</button>
          </center>
      </form>
    </div>
  </div>
</body>
</html>
<%}%>