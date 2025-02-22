
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
  <title>Register property</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to fit=no">
 <link href="../images/50.jpg" rel="icon"/>
        <link href="../css/bootstrap.css" rel="Stylesheet"/>
        <script src="../js/bootstrap.bundle.js">
              
        </script>
  
  
  <style>
    .login-container {
      background-image: url('../images/h1.jpg');
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
    
     <div class="row">
                <div class="col-sm">
                    
                    
                    
                    <jsp:include page="header.jsp" />
                    
                    
                    
                    
                </div>
            </div>
            
    
    
  <div class="login-container ">
     
    <div class="container">
      <h2 class="text-wornig"> Register your property</h2>
      <form class=""Style="width: 50%;"  method="post" action="../AddImage" enctype="multipart/form-data">
          <input type="hidden" name="page" value="properties"/>
        <div class="form-group">
            <label for="username" class="text">upload properties images</label>
            <input type="file"name="image" class="form-control" id="username"   required>
        </div>

        <div class="form-group">
          <label for="password" >Name</label>
          <input type="text" name="name"class="form-control" id="password" placeholder="Enter Name" required>
        </div>
           <div class="form-group">
          <label for="password" class="text-light">Home ,Hostel or Pg : </label>
          <label for="password" class="text-">
              <input type="radio"value="home" name="status"/>Home
              <input type="radio"value="hostel" name="status"/>Hostel
              <input type="radio"value="pg" name="status"/>Pg
          </label>
          
        </div>
          <div class="form-group">
            <label for="username" class="text-light">Price:</label>
            <input type="text"name="price" class="form-control" id="username"  placeholder="Enter price" required>
        </div>

        <div class="form-group">
          <label for="password" class="text-light">Location:</label>
          <input type="text" name="location"class="form-control" id="password" placeholder="Enter location" required>
        </div>
           <div class="form-group">
          <label for="password" class="text-light">Details:</label>
          <input type="text" name="about"class="form-control" id="password" placeholder="Enter Details" required>
        </div>
          <center>
        <button type="submit" class="btn btn-outline-success my-4">Upload</button>
          </center>
      </form>
    </div>
  </div>
                    <!--footer s-->
            <div class="row col-sm">
                
                
                <footer class="text-center text-light bg-danger">
    <div class="container m-5">
      <p>© 2024-2030 online booking room. All rights reserved.</p>
      
    </div>
  </footer>
                
            </div>
            
            <!--footer e-->
</body>
</html>
<%}%>